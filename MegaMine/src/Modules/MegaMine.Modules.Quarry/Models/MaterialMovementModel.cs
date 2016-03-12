﻿using System;

namespace MegaMine.Modules.Quarry.Models
{
    public class MaterialMovementModel
    {
        public int[] MaterialMovementIds { get; set; }
        public int FromYardId { get; set; }
        public int ToYardId { get; set; }
        public DateTime MovementDate { get; set; }
    }
}