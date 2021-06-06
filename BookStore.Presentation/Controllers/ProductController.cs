using BookStore.BusinessLogic.IServices;
using BookStore.Presentation.ViewModels;
using System.Linq;
using System.Web.Mvc;

namespace BookStore.Presentation.Controllers
{
    public class ProductController : Controller
    {
        private readonly IProductServices _product;

        public ProductController(IProductServices product)
        {
            _product = product;
        }

        public PartialViewResult TopProduct()
        {
            var products = _product.GetTop(x => x.OrderByDescending(y => y.OrderDetails.Count), 10);
            return PartialView("_TopProduct", products);
        }

        public PartialViewResult AllProduct()
        {
            var products = _product.GetTop(x => x.OrderByDescending(y => y.ProductId))
                .Select(x => new ProductVM { Product = x });

            return PartialView("_Product", products);
        }

        public PartialViewResult QuickProduct(int id)
        {
            return PartialView("_QuickProduct", _product.GetById(id));
        }
    }
}