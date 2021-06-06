using BookStore.BusinessLogic.IServices;
using BookStore.Presentation.ViewModels;
using System.Linq;
using System.Web.Mvc;

namespace BookStore.Presentation.Controllers
{
    public class HomeController : Controller
    {
        private readonly IProductServices _product;
        private readonly ICategoryServices _category;

        public HomeController(IProductServices product, ICategoryServices category)
        {
            _product = product;
            _category = category;
        }

        public ActionResult Index()
        {
            ViewBag.LstCategory = _category.GetAll();
            return View();
        }
    }
}