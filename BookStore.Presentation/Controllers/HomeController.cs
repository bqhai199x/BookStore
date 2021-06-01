using BookStore.BusinessLogic.IServices;
using BookStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
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

        public PartialViewResult Product(int count = 0, int cateId = 0)
        {
            Expression<Func<Product, bool>> filter = null;
            Func<IQueryable<Product>, IOrderedQueryable<Product>> orderBy = x => x.OrderBy(y => y.Name);
            if (cateId != 0)
            {
                filter = x => x.CategoryId == cateId;
            }
            var product = _product.GetNotAsync(filter, orderBy, "", 1, count + 8);
            return PartialView("_Product", product);
        }

        public PartialViewResult AllProduct()
        {
            return PartialView("_Product", _product.GetAll());
        }
    }
}