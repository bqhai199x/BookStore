using BookStore.BusinessLogic.IServices;
using BookStore.Common;
using BookStore.Domain;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace BookStore.Presentation.Areas.Admin.Controllers
{
    public class CouponAdminController : Controller
    {
        private readonly ICouponServices _coupon;

        public CouponAdminController(ICouponServices coupon)
        {
            _coupon = coupon;
        }

        [Route("trang-quan-tri/quan-ly-ma-giam-gia")]
        public async Task<ActionResult> CouponView()
        {
            if (Session["Account"] == null || (Session["Account"] as Account).Role == RoleUser.Customer)
            {
                return Redirect("/");
            }
            var coupons = await _coupon.GetAllAsync();
            return View("~/Areas/Admin/Views/CouponAdmin/CouponView.cshtml", coupons);
        }

        public async Task<ActionResult> CouponModal(int couponId)
        {
            ViewBag.Label = "Thêm";

            Coupon coupon = new Coupon();
            if (couponId > 0)
            {
                ViewBag.Label = "Cập nhật";
                coupon = await _coupon.FindAsync(x => x.CouponId == couponId);
            }
            return PartialView("~/Areas/Admin/Views/CouponAdmin/_CouponModal.cshtml", coupon);
        }

        public async Task<ActionResult> CouponUpsert(Coupon info)
        {
            if (info.CouponId > 0)
            {
                Coupon coupon = await _coupon.FindAsync(x => x.CouponId == info.CouponId);
                coupon.Code = info.Code;
                coupon.Discount = info.Discount;
                coupon.Quantity = info.Quantity;
                coupon.StartDate = info.StartDate;
                coupon.EndDate = info.EndDate;
                coupon.Description = info.Description;
                await _coupon.UpdateAsync(coupon);
            }
            else
            {
                Coupon coupon = new Coupon()
                {
                    Code = info.Code,
                    Discount = info.Discount,
                    Quantity = info.Quantity,
                    StartDate = info.StartDate,
                    EndDate = info.EndDate,
                    Description = info.Description
                };
                await _coupon.CreateAsync(coupon);
            }
            return Redirect("/trang-quan-tri/quan-ly-ma-giam-gia");
        }

        public async Task<ActionResult> CouponDelete(int couponId)
        {
            await _coupon.DeleteByIdAsync(couponId);
            return Redirect("/trang-quan-tri/quan-ly-ma-giam-gia");
        }
    }
}