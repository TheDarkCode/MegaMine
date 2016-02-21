﻿using MegaMine.Web.Lib.Entities.Account;
using MegaMine.Web.Lib.Entities.Administration;
using MegaMine.Web.Lib.Entities.Fleet;
using MegaMine.Modules.Quarry.Entities;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Data.Entity;

namespace MegaMine.Web.Lib.Repositories
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser, ApplicationRole, string>
    {
        //Account
        public DbSet<IdentityClaimEntity> IdentityClaims { get; set; }
        public DbSet<IdentityPageEntity> IdentityPages { get; set; }
        public DbSet<IdentityMenuPageEntity> IdentityMenuPages { get; set; }
        public DbSet<IdentityPageClaimEntity> IdentityPageClaims { get; set; }
        public DbSet<IdentityRoleHierarchyEntity> IdentityRoleHierarchies { get; set; }
        public DbSet<UserProfileEntity> UserProfiles { get; set; }
        public DbSet<UserCompanyEntity> UserCompanies { get; set; }
        public DbSet<IdentityCompanyClaimEntity> IdentityCompanyClaims { get; set; }

        //Administration
        public DbSet<CompanyEntity> Companies { get; set; }

        //Fleet
        public DbSet<VehicleTypeEntity> VehicleTypes { get; set; }
        public DbSet<VehicleEntity> Vehicles { get; set; }
        public DbSet<VehicleServiceEntity> VehicleServices { get; set; }
        public DbSet<VehicleServiceSparePartEntity> VehicleServiceSpareParts { get; set; }
        public DbSet<SparePartEntity> SpareParts { get; set; }
        public DbSet<SparePartOrderEntity> SparePartOrders { get; set; }
        public DbSet<VehicleServiceSparePartOrderEntity> VehicleServiceSparePartOrders { get; set; }
        public DbSet<VehicleDriverEntity> VehicleDrivers { get; set; }
        public DbSet<VehicleManufacturerEntity> VehicleManufacturers { get; set; }
        public DbSet<VehicleModelEntity> VehicleModels { get; set; }
        public DbSet<VehicleFuelEntity> VehicleFuels { get; set; }
        public DbSet<ConfigurationEntity> Configurations { get; set; }
        public DbSet<VehicleDriverAssignmentEntity> VehicleDriverAssignments{ get; set; }
        public DbSet<SparePartManufacturerEntity> SparePartManufacturers { get; set; }
        public DbSet<VehicleTripEntity> VehicleTrips{ get; set; }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            builder.Entity<IdentityRoleHierarchyEntity>(entity =>
            {
                entity.HasKey(e => new { e.RoleId, e.ChildRoleId });
            });

            builder.Entity<UserCompanyEntity>(entity =>
            {
                entity.HasKey(e => new { e.UserProfileId, e.CompanyId });
            });


            base.OnModelCreating(builder);

            //renaming identity tables
            builder.Entity<ApplicationUser>().ToTable("IdentityUser");
            builder.Entity<ApplicationRole>().ToTable("IdentityRole");
            builder.Entity<IdentityRoleClaim<string>>().ToTable("IdentityRoleClaim");
            builder.Entity<IdentityUserClaim<string>>().ToTable("IdentityUserClaim");
            builder.Entity<IdentityUserLogin<string>>().ToTable("IdentityUserLogin");
            builder.Entity<IdentityUserRole<string>>().ToTable("IdentityUserRole");
        }
    }
}