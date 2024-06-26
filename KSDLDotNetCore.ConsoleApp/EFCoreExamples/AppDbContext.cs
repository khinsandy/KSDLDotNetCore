﻿using KSDLDotNetCore.ConsoleApp.Dtos;
using KSDLDotNetCore.ConsoleApp.Services;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KSDLDotNetCore.ConsoleApp.EFCoreExamples
{
    internal class AppDbContext : DbContext
    {
        // override onc
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(ConnectionString.SqlConnectionStringBuilder.ConnectionString);
        }

        public DbSet<BlogDto> Blogs { get; set; }
    }
}
