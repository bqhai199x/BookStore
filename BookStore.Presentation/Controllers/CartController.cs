using BookStore.BusinessLogic.IServices;
using BookStore.Common;
using BookStore.Domain;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace BookStore.Presentation.Controllers
{
    public class CartController : Controller
    {
        private readonly IOrderServices _order;
        private readonly IOrderDetailServices _orderDetail;
        private readonly IAccountServices _account;
        private readonly IShipperServices _shipper;

        public CartController(IAccountServices account, IOrderServices order, IShipperServices shipper, IOrderDetailServices orderDetail)
        {
            _account = account;
            _order = order;
            _shipper = shipper;
            _orderDetail = orderDetail;
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
            var cart = await _order.FindAsync(x => x.AccountId == StaticVariables.AccountID && x.Status == OrderStatus.InCart);
            if (cart != null)
            {
                order = cart;
            }
            else
            {
                order.AccountId = StaticVariables.AccountID;
                order.Status = OrderStatus.InCart;
                await _order.CreateAsync(order);
            }

            return PartialView("_ShoppingCart", order);
        }

        public async Task<PartialViewResult> QuickCart()
        {
            var cart = await _order.FindAsync(x => x.AccountId == StaticVariables.AccountID && x.Status == OrderStatus.InCart);
            return PartialView("_QuickCart", cart);
        }

        public async Task<JsonResult> AddToCart(int productId, int quantity)
        {
            Order order = new Order();

            // Check cart exist
            var cart = await _order.FindAsync(x => x.AccountId == StaticVariables.AccountID && x.Status == OrderStatus.InCart);
            if (cart != null)
            {
                order = cart;
            }
            else
            {
                order.AccountId = StaticVariables.AccountID;
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

        public async Task<JsonResult> UpdateQuantity(int productId, bool isUp)
        {
            var cart = await _order.FindAsync(x => x.AccountId == StaticVariables.AccountID && x.Status == OrderStatus.InCart);
            var cartItem = await _orderDetail.FindAsync(x => x.OrderId == cart.OrderId && x.ProductId == productId);
            cartItem.Quantity = isUp ? cartItem.Quantity += 1 : cartItem.Quantity -= 1;
            await _orderDetail.UpdateAsync(cartItem);
            return Json(cart.TotalQuantity, JsonRequestBehavior.AllowGet);
        }

        public async Task<JsonResult> RemoveItem(int productId)
        {
            var order = await _order.FindAsync(x => x.AccountId == StaticVariables.AccountID && x.Status == OrderStatus.InCart);
            var orderDetail = await _orderDetail.FindAsync(x => x.OrderId == order.OrderId && x.ProductId == productId);
            await _orderDetail.DeleteAsync(orderDetail);

            return Json(order.TotalQuantity, JsonRequestBehavior.AllowGet);
        }
    }
}