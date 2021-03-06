using BookStore.Presentation.App_Start;
using System.Web.Mvc;
using System.Web.Routing;

namespace BookStore.Presentation
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            DatabaseSetup.Initialize();
        }
    }
}
