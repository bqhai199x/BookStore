using BookStore.BusinessLogic.IServices;
using BookStore.Common;
using BookStore.Domain;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace BookStore.Presentation.Areas.Admin.Controllers
{
    public class PublisherAdminController : Controller
    {
        private readonly IProductServices _product;
        private readonly IPublisherServices _publisher;
        private readonly IProductImageServices _productImage;
        private readonly IReviewServices _review;
        private readonly IOrderDetailServices _orderDetail;

        public PublisherAdminController(IProductServices product, IPublisherServices publisher,
            IProductImageServices productImage, IReviewServices review, IOrderDetailServices orderDetail)
        {
            _product = product;
            _publisher = publisher;
            _productImage = productImage;
            _review = review;
            _orderDetail = orderDetail;
        }

        [Route("trang-quan-tri/quan-ly-nha-xuat-ban")]
        public async Task<ActionResult> PublisherView()
        {
            if (Base.Account == null || Base.Account.Role == RoleUser.Customer)
            {
                return Redirect("/");
            }
            var publishers = await _publisher.GetAllAsync();
            return View("~/Areas/Admin/Views/PublisherAdmin/PublisherView.cshtml", publishers);
        }

        public async Task<ActionResult> PublisherModal(int publisherId)
        {
            ViewBag.Label = "Thêm";

            Publisher publisher = new Publisher();
            if (publisherId > 0)
            {
                ViewBag.Label = "Cập nhật";
                publisher = await _publisher.FindAsync(x => x.PublisherId == publisherId);
            }
            return PartialView("~/Areas/Admin/Views/PublisherAdmin/_PublisherModal.cshtml", publisher);
        }

        public async Task<ActionResult> PublisherUpsert(Publisher info)
        {
            if (info.PublisherId > 0)
            {
                Publisher publisher = await _publisher.FindAsync(x => x.PublisherId == info.PublisherId);
                publisher.Name = info.Name;
                publisher.Description = info.Description;
                await _publisher.UpdateAsync(publisher);
            }
            else
            {
                Publisher publisher = new Publisher()
                {
                    Name = info.Name,
                    Description = info.Description
                };
                await _publisher.CreateAsync(publisher);
            }
            return Redirect("/trang-quan-tri/quan-ly-nha-xuat-ban");
        }

        public async Task<ActionResult> PublisherDelete(int publisherId)
        {
            IEnumerable<ProductImage> images;
            IEnumerable<OrderDetail> details;
            IEnumerable<Review> reviews;

            var products = _product.FindAllAsync(x => x.PublisherId == publisherId);
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
            await _publisher.DeleteByIdAsync(publisherId);
            return Redirect("/trang-quan-tri/quan-ly-nha-xuat-ban");
        }
    }
}