using BookStore.BusinessLogic.IServices;
using BookStore.Common;
using BookStore.Domain;
using System;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace BookStore.Presentation.Controllers
{
    public class CartController : Controller
    {
        private readonly IOrderServices _order;
        private readonly IOrderDetailServices _orderDetail;
        private readonly ICouponServices _coupon;

        public CartController(IOrderServices order, IOrderDetailServices orderDetail, ICouponServices coupon)
        {
            _order = order;
            _orderDetail = orderDetail;
            _coupon = coupon;
        }

        [Route("gio-hang")]
        public ActionResult ViewCart()
        {
            return View();
        }

        public async Task<PartialViewResult> ShoppingCart()
        {
            Order order = new Order();

            // Check cart exist
            var cart = await _order.FindAsync(x => x.AccountId == Base.AccountId && x.Status == OrderStatus.InCart);
            if (cart != null)
            {
                order = cart;
            }
            else
            {
                order.AccountId = Base.AccountId;
                order.Status = OrderStatus.InCart;
                await _order.CreateAsync(order);
            }

            return PartialView("_ShoppingCart", order);
        }

        public async Task<PartialViewResult> QuickCart()
        {
            
            var cart = await _order.FindAsync(x => x.AccountId == Base.AccountId && x.Status == OrderStatus.InCart);
            return PartialView("_QuickCart", cart);
        }

        public async Task<JsonResult> AddToCart(int productId, int quantity)
        {
            if(Base.Account == null)
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }

            Order order = new Order();

            // Check cart exist
            var cart = await _order.FindAsync(x => x.AccountId == Base.AccountId && x.Status == OrderStatus.InCart);
            if (cart != null)
            {
                order = cart;
            }
            else
            {
                order.AccountId = Base.AccountId;
                order.Status = OrderStatus.InCart;
                await _order.CreateAsync(order);
            }

            OrderDetail orderDetail = new OrderDetail();

            // Check cart item exist
            var cartItem = await _orderDetail.FindAsync(x => x.OrderId == order.OrderId && x.ProductId == productId);
            if (cartItem != null)
            {
                orderDetail = cartItem;
                orderDetail.Quantity += quantity;
                await _orderDetail.UpdateAsync(orderDetail);
            }
            else
            {
                orderDetail.OrderId = order.OrderId;
                orderDetail.ProductId = productId;
                orderDetail.Quantity = quantity;
                await _orderDetail.CreateAsync(orderDetail);
            }

            return Json(order.TotalQuantity, JsonRequestBehavior.AllowGet);
        }

        public async Task<JsonResult> UpdateQuantity(int productId, int quantity)
        {
            var cart = await _order.FindAsync(x => x.AccountId == Base.AccountId && x.Status == OrderStatus.InCart);
            var cartItem = await _orderDetail.FindAsync(x => x.OrderId == cart.OrderId && x.ProductId == productId);
            cartItem.Quantity = quantity;
            await _orderDetail.UpdateAsync(cartItem);
            return Json(cart.TotalQuantity, JsonRequestBehavior.AllowGet);
        }

        public async Task<JsonResult> RemoveItem(int productId)
        {
            var order = await _order.FindAsync(x => x.AccountId == Base.AccountId && x.Status == OrderStatus.InCart);
            var orderDetail = await _orderDetail.FindAsync(x => x.OrderId == order.OrderId && x.ProductId == productId);
            await _orderDetail.DeleteAsync(orderDetail);

            return Json(order.TotalQuantity, JsonRequestBehavior.AllowGet);
        }

        public async Task<JsonResult> UpdateCoupon(int orderId, string code)
        {
            var order = await _order.GetByIdAsync(orderId);
            if (code.IsBlank())
            {
                order.CouponId = null;
                await _order.UpdateAsync(order);
                return Json("OK", JsonRequestBehavior.AllowGet);
            }
            code = code.ToUpper();
            var coupon = await _coupon.FindAsync(x => x.Code.Equals(code));

            if (coupon == null)
                return Json("Mã giảm giá không hợp lệ!", JsonRequestBehavior.AllowGet);
            else if (coupon.EndDate < DateTime.Now)
                return Json("Mã giảm giá đã hết hạn!", JsonRequestBehavior.AllowGet);
            else if (coupon.Quantity <= 0)
                return Json("Mã giảm giá đã dùng hết!", JsonRequestBehavior.AllowGet);

            order.CouponId = coupon.CouponId;
            if (await _order.UpdateAsync(order))
            {
                coupon.Quantity -= 1;
                await _coupon.UpdateAsync(coupon);
            }

            return Json("OK", JsonRequestBehavior.AllowGet);
        }
    }
}