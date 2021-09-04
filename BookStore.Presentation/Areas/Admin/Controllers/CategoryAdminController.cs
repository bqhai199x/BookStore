using BookStore.BusinessLogic.IServices;
using BookStore.Common;
using BookStore.Domain;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace BookStore.Presentation.Areas.Admin.Controllers
{
    public class CategoryAdminController : Controller
    {
        private readonly IProductServices _product;
        private readonly ICategoryServices _category;
        private readonly IProductImageServices _productImage;
        private readonly IReviewServices _review;
        private readonly IOrderDetailServices _orderDetail;

        public CategoryAdminController(IProductServices product, ICategoryServices category,
            IProductImageServices productImage, IReviewServices review, IOrderDetailServices orderDetail)
        {
            _product = product;
            _category = category;
            _productImage = productImage;
            _review = review;
            _orderDetail = orderDetail;
        }

        [Route("trang-quan-tri/quan-ly-danh-muc")]
        public async Task<ActionResult> CategoryView()
        {
            if (Session["Account"] == null || (Session["Account"] as Account).Role == RoleUser.Customer)
            {
                return Redirect("/");
            }
            var categories = await _category.GetAllAsync();
            return View("~/Areas/Admin/Views/CategoryAdmin/CategoryView.cshtml", categories);
        }

        public async Task<ActionResult> CategoryModal(int categoryId)
        {
            ViewBag.Label = "Thêm";

            Category category = new Category();
            if (categoryId > 0)
            {
                ViewBag.Label = "Cập nhật";
                category = await _category.FindAsync(x => x.CategoryId == categoryId);
            }
            return PartialView("~/Areas/Admin/Views/CategoryAdmin/_CategoryModal.cshtml", category);
        }

        public async Task<ActionResult> CategoryUpsert(Category info)
        {
            if (info.CategoryId > 0)
            {
                Category category = await _category.FindAsync(x => x.CategoryId == info.CategoryId);
                category.Name = info.Name;
                category.Description = info.Description;
                await _category.UpdateAsync(category);
            }
            else
            {
                Category category = new Category()
                {
                    Name = info.Name,
                    Description = info.Description
                };
                await _category.CreateAsync(category);
            }
            return Redirect("/trang-quan-tri/quan-ly-danh-muc");
        }

        public async Task<ActionResult> CategoryDelete(int categoryId)
        {
            IEnumerable<ProductImage> images;
            IEnumerable<OrderDetail> details;
            IEnumerable<Review> reviews;

            var products = _product.FindAllAsync(x => x.CategoryId == categoryId);
            foreach (var product in await products)
            {
                images = await _productImage.FindAllAsync(x => x.ProductId == product.ProductId);
                foreach (var item in images)
                {
                    await _productImage.DeleteAsync(item);
                }

                reviews = await _review.FindAllAsync(x => x.ProductId == product.ProductId);
                foreach (var item in reviews)
                {
                    await _review.DeleteAsync(item);
                }

                details = await _orderDetail.FindAllAsync(x => x.ProductId == product.ProductId);
                foreach (var item in details)
                {
                    await _orderDetail.DeleteAsync(item);
                }

                await _product.DeleteAsync(product);
            }
            await _category.DeleteByIdAsync(categoryId);
            return Redirect("/trang-quan-tri/quan-ly-danh-muc");
        }
    }
}