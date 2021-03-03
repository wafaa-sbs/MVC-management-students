using System;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using MVCManagStdnts.Areas.Identity.Data;
using MVCManagStdnts.Data;

[assembly: HostingStartup(typeof(MVCManagStdnts.Areas.Identity.IdentityHostingStartup))]
namespace MVCManagStdnts.Areas.Identity
{
    public class IdentityHostingStartup : IHostingStartup
    {
        public void Configure(IWebHostBuilder builder)
        {
            builder.ConfigureServices((context, services) => {
                services.AddDbContext<AuthDbContext>(options =>
                    options.UseSqlServer(
                        context.Configuration.GetConnectionString("Myconnection")));

                services.AddIdentity<ApplicationUser,IdentityRole>(options => {
                    options.SignIn.RequireConfirmedAccount = false;
                    options.Password.RequireLowercase = false;
                    options.Password.RequireUppercase = false;
                })
                        .AddEntityFrameworkStores<AuthDbContext>()
                        .AddDefaultUI()
                        .AddDefaultTokenProviders();



            });
        }
    }
}