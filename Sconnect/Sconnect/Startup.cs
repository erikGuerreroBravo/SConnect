using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Sconnect.Startup))]
namespace Sconnect
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
