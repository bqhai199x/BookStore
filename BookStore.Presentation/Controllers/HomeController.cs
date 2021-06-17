using BookStore.BusinessLogic.IServices;
using System.Web.Mvc;

namespace BookStore.Presentation.Controllers
{
    public class HomeController : Controller
    {
        private readonly ICategoryServices _category;

        public HomeController(ICategoryServices category)
        {
            _category = category;
        }

        [Route("")]
        public ActionResult Index()
        {
            return View();
        }

        public PartialViewResult Footer()
        {
            ViewBag.LstCategory = _category.GetAll();
            return PartialView("_Footer");
        }
    }
}