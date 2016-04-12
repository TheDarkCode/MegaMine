﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MegaMine.Services.Security.Models
{
    public class PageClaimModel
    {
        public int Id { get; set; }
        public int PageId { get; set; }
        public int ClaimId { get; set; }
        public bool PrimaryClaimInd { get; set; }
        public ClaimModel Claim { get; set; }
    }
}