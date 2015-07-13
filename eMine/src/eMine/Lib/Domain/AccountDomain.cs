﻿using eMine.Lib.Entities.Account;
using eMine.Lib.Middleware;
using eMine.Lib.Repositories;
using eMine.Lib.Shared;
using eMine.Models;
using eMine.Models.Account;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace eMine.Lib.Domain
{
    public class AccountDomain
    {
        private UserManager<ApplicationUser> userManager;
        private SignInManager<ApplicationUser> signInManager;
        private AccountRepository accountRepository;


        public AccountDomain(UserManager<ApplicationUser> userManager, SignInManager<ApplicationUser> signInManager, AccountRepository accountRepository)
        {
            this.userManager = userManager;
            this.signInManager = signInManager;
            this.accountRepository = accountRepository;
        }

        public async Task<ProfileModel> Validate(string userName, string password)
        {
            ProfileModel profile = null;

            //await userManager.CreateAsync(user, "Prasanna@123");

            var result = await signInManager.PasswordSignInAsync(userName, password, false, false);

            if (result.Succeeded)
            {
                profile = await ProfileGet(userName);
            }
            else
            {
                throw new eMineException("Invalid Username and/or Password");
            }

            return profile;
        }

        private async Task<ProfileModel> ProfileGet(string userName)
        {
            ProfileModel profile = await accountRepository.UserProfileGet(userName);
            profile.SetMenu();
            //setting all the roles
            profile.Roles = PageService.Roles.Where(r => profile.Roles.Contains(r.Key)).Select(r => r.Item).ToArray();

            //setting the claims on to the context
            HttpHelper.HttpContext.Items["Profile"] = profile;

            return profile;
        }

        public async Task<ProfileModel> DefaultProfile()
        {
            ProfileModel profile = (ProfileModel) HttpHelper.HttpContext.Items["Profile"];

            profile = await ProfileGet(profile.UserName);

            return profile;
        }

        public string Logout()
        {
            signInManager.SignOut();
            return null;
        }
    }
}
