using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FrankiesDiscountAutos1.Startup))]
namespace FrankiesDiscountAutos1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
