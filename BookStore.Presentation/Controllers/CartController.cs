using BookStore.BusinessLogic.IServices;
using BookStore.Common;
using BookStore.Models;
using BookStore.Presentation.ViewModels;
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

        public ActionResult ViewCart()
        {
            return View();
        }

        public PartialViewResult QuickCart()
        {
            OrderVM cart = new OrderVM
            {
                Order = _order.Find(x => x.AccountId == MyVariable.AccountID && x.Status == OrderStatus.InCart)
            };
            return PartialView("_QuickCart", cart);
        }

        [HttpPost]
        public async Task<JsonResult> AddToCart(int productId, int quantity)
        {
            Order order = new Order();

            // Check cart exist
            var cart = await _order.FindAsync(x => x.AccountId == MyVariable.AccountID && x.Status == OrderStatus.InCart);
            if (cart != null)
            {
                order = cart;
            }
            else
            {
                order.AccountId = MyVariable.AccountID;
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

            OrderVM orderVM = new OrderVM { Order = order };

            return Json(orderVM.TotalQuantity, JsonRequestBehavior.AllowGet);
        }

        public async Task<JsonResult> RemoveItem(int productId)
        {
            var order = await _order.FindAsync(x => x.AccountId == MyVariable.AccountID && x.Status == OrderStatus.InCart);
            var orderDetail = await _orderDetail.FindAsync(x => x.OrderId == order.OrderId && x.ProductId == productId);
            await _orderDetail.DeleteAsync(orderDetail);

            OrderVM orderVM = new OrderVM { Order = order };

            return Json(orderVM.TotalQuantity, JsonRequestBehavior.AllowGet);
        }
    }
}