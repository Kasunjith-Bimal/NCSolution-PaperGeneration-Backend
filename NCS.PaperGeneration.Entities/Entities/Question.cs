﻿using NCS.PaperGeneration.Entities.CompactEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NCS.PaperGeneration.Entities.Entities
{
    public class Question : QuestionCompact 
    {
        public string QuestionContent { get; set; }
    }
}
