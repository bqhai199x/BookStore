using BookStore.BusinessLogic.IServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace BookStore.Presentation.Controllers
{
    public class HomeController : Controller
    {
        private readonly IProductServices _product;
        private readonly ICategoryServices _category;
        private readonly IOrderServices _order;

        public HomeController(IProductServices product, ICategoryServices category, IOrderServices order)
        {
            _product = product;
            _category = category;
            _order = order;
        }

        public ActionResult Index()
        {
            ViewBag.LstCategory = _category.GetAll();
            return View();
        }

        public ActionResult Product()
        {
            var product = _product.GetAll();
            return PartialView("_Product", product);
        }
    }
}