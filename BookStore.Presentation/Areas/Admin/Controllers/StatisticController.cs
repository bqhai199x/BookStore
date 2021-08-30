using BookStore.Common;
using BookStore.Domain;
using System.Web.Mvc;

namespace BookStore.Presentation.Areas.Admin.Controllers
{
    public class StatisticController : Controller
    {
        [Route("trang-quan-tri")]
        public ActionResult StatisticView()
        {
            if (Base.Account == null || Base.Account.Role == RoleUser.Customer)
            {
                return Redirect("/");
            }
            return View("~/Areas/Admin/Views/Statistic/StatisticView.cshtml");
        }
    }
}