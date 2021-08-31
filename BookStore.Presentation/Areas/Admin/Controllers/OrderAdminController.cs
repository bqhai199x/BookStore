using BookStore.BusinessLogic.IServices;
using BookStore.Common;
using BookStore.Domain;
using System;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace BookStore.Presentation.Areas.Admin.Controllers
{
    public class OrderAdminController : Controller
    {
        private readonly IOrderServices _order;

        public OrderAdminController(IOrderServices order)
        {
            _order = order;
        }

        [Route("trang-quan-tri/quan-ly-don-hang")]
        public async Task<ActionResult> OrderList(OrderStatus? status, DateTime? fromDate, DateTime? toDate, int? page)
        {
            //if (Base.Account == null || Base.Account.Role == RoleUser.Customer)
            //{
            //    return Redirect("/");
            //}
            var orders = await _order.FindAllAsync(x => x.Status != OrderStatus.InCart);
            if (status.HasValue || fromDate.HasValue || toDate.HasValue)
            {
                page = 1;
            }

            ViewBag.Status = ViewBag.Status = ViewBag.ToDate = null;

            if (status.HasValue)
            {
                orders = orders.Where(x => x.Status == status);
                ViewBag.Status = status;
            }
            if (fromDate.HasValue)
            {
                orders = orders.Where(x => x.OrderDate >= fromDate);
                ViewBag.FromDate = fromDate.Value.ToString("yyyy-MM-dd");
            }
            if (toDate.HasValue)
            {
                orders = orders.Where(x => x.OrderDate <= toDate);
                ViewBag.ToDate = toDate.Value.ToString("yyyy-MM-dd");
            }

            orders = new PaginatedList<Order>(orders.ToList(), orders.Count(), page ?? 1, 10);

            return View("~/Areas/Admin/Views/OrderAdmin/OrderList.cshtml", orders);
        }

        public async Task<ActionResult> OrderDetail(int orderId)
        {
            Order order = await _order.FindAsync(x => x.OrderId == orderId);
            return PartialView("~/Areas/Admin/Views/OrderAdmin/OrderDetail.cshtml", order);
        }

        public async Task<JsonResult> UpdateStatus(int orderId, OrderStatus status)
        {
            Order order = await _order.FindAsync(x => x.OrderId == orderId);
            order.Status = status;
            bool result = await _order.UpdateAsync(order);
            return Json(result, JsonRequestBehavior.AllowGet);
        }
    }
}