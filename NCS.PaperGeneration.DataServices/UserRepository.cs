﻿using NCS.PaperGeneration.Entities.Entities;
using NCS.PaperGeneration.IDataServices;
using NCS.PapperGeneration.DataService.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NCS.PaperGeneration.DataServices
{
    public class UserRepository : GenericRepository<LoginUser>, IUserRepository
    {
        private readonly PaperGenerationDbContext _context;

        public UserRepository(PaperGenerationDbContext context): base(context)
        {
            this._context = context;
        }

        public LoginUser ValideUser(LoginUser user)
        {
            LoginUser n = null;
            try
            {
                n = _dbSet.Where(u => u.LoginUserName.Equals(user.LoginUserName) && u.Password.Equals(user.Password)).FirstOrDefault();
            }
            catch (Exception ex)
            {
                throw;
            }
            return n;
        }
    }
}
