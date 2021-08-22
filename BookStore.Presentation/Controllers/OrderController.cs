using BookStore.BusinessLogic.IServices;
using BookStore.Common;
using BookStore.Domain;
using System;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace BookStore.Presentation.Controllers
{
    public class OrderController : Controller
    {
        private readonly IOrderServices _order;

        public OrderController(IOrderServices order)
        {
            _order = order;
        }

        [Route("thanh-toan")]
        public async Task<ActionResult> CheckoutView()
        {
            var cart = await _order.FindAsync(x => x.AccountId == Base.AccountId && x.Status == OrderStatus.InCart);
            if (cart == null || cart.OrderDetails == null || !cart.OrderDetails.Any())
            {
                return Redirect("/gio-hang");
            }
            return View("Checkout", cart);
        }

        public async Task<ActionResult> CheckoutRequest(string fullName, string phoneNumber, string address, string note, Payment payment)
        {
            Order order = await _order.FindAsync(x => x.AccountId == Base.AccountId && x.Status == OrderStatus.InCart);
            order.FullName = fullName;
            order.Phone = phoneNumber;
            order.Address = address;
            order.Note = note;
            order.Payment = payment;
            order.Status = OrderStatus.Waitting;
            order.OrderDate = DateTime.Now;
            
            ViewBag.Success = await _order.UpdateAsync(order);

            return View("CheckoutResult");
        }
    }
}