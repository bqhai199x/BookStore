using BookStore.BusinessLogic.IServices;
using BookStore.Common;
using BookStore.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace BookStore.Presentation.Areas.Admin.Controllers
{
    public class ProductAdminController : Controller
    {
        private readonly IProductServices _product;
        private readonly ICategoryServices _category;
        private readonly IPublisherServices _publiser;
        private readonly IProductImageServices _productImage;

        public ProductAdminController(IProductServices product, ICategoryServices category, IPublisherServices publiser, IProductImageServices productImage)
        {
            _product = product;
            _category = category;
            _publiser = publiser;
            _productImage = productImage;
        }

        [Route("trang-quan-tri")]
        public async Task<ActionResult> ProductView(string search, int? page, string CurrentFilter)
        {
            List<Product> products = new List<Product>();
            if (search.IsNotBlank())
            {
                page = 1;
            }
            else
            {
                search = CurrentFilter;
            }
            ViewData["CurrentFilter"] = search;
            Expression<Func<Product, bool>> filter = null;
            if (search.IsNotBlank())
            {
                filter = b => b.Name.ToLower().Contains(search.ToLower());
            }
            products = await _product.GetAdvancedAsync(filter: filter, orderBy: p => p.OrderByDescending(x => x.ProductId), page: page ?? 1, pageSize: 4);

            return View("~/Areas/Admin/Views/ProductAdmin/ProductView.cshtml", products);
        }

        public async Task<ActionResult> ProductModal(int productId)
        {
            var categories = await _category.GetAllAsync();
            ViewBag.CategoryList = new SelectList(categories, "CategoryId", "Name");

            var publishers = await _publiser.GetAllAsync();
            ViewBag.PubliserList = new SelectList(publishers, "PublisherId", "Name");

            ViewBag.Label = "Thêm";

            Product product = new Product();
            if (productId > 0)
            {
                ViewBag.Label = "Cập nhật";
                product = await _product.FindAsync(x => x.ProductId == productId);
            }
            return PartialView("~/Areas/Admin/Views/ProductAdmin/_ProductModal.cshtml", product);
        }

        [ValidateInput(false)]
        public async Task<ActionResult> ProductUpsert(Product product)
        {
            if (product.ProductId > 0)
            {
                Product newProduct = await _product.FindAsync(x => x.ProductId == product.ProductId);
                newProduct.Name = product.Name;
                newProduct.CategoryId = product.CategoryId;
                newProduct.PublisherId = product.PublisherId;
                newProduct.Author = product.Author;
                newProduct.Size = product.Size;
                newProduct.NumPage = product.NumPage;
                newProduct.Price = product.Price;
                newProduct.Description = product.Description;

                await _product.UpdateAsync(newProduct);
            }
            else
            {
                product.CreatedDate = DateTime.Now;
                await _product.CreateAsync(product);

                ProductImage productImage = new ProductImage()
                {
                    ProductId = product.ProductId,
                    ImageURL = "no-img.jpg" //TODO
                };
                await _productImage.CreateAsync(productImage);
            }

            return Redirect("/trang-quan-tri");
        }

        public async Task<ActionResult> ProductDelete(int productId)
        {
            await _product.DeleteByIdAsync(productId);
            return Redirect("/trang-quan-tri");
        }
    }
}