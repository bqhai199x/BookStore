using BookStore.BusinessLogic.IServices;
using BookStore.Domain;
using System;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace BookStore.Presentation.Areas.Admin.Controllers
{
    public class StatisticController : Controller
    {
        private readonly IOrderServices _order;

        public StatisticController(IOrderServices order)
        {
            _order = order;
        }

        [Route("trang-quan-tri")]
        public async Task<ActionResult> StatisticView()
        {
            //if (Base.Account == null || Base.Account.Role == RoleUser.Customer)
            //{
            //    return Redirect("/");
            //}

            var orders = await _order.FindAllAsync(x => x.Status != OrderStatus.InCart && x.Status != OrderStatus.Cancelled);

            ViewBag.NumberSold = orders.Sum(x => x.TotalQuantity);

            ViewBag.TotalRevenue = orders.Sum(x => x.GrandTotal).Value.ToString("#,### VNĐ");

            ViewBag.TotalOrder = orders.Count();
            ViewBag.OrderFinal = orders.Count(x => x.Status == OrderStatus.Delivered);

            var customer = orders.GroupBy(x => x.AccountId)
                                    .OrderByDescending(x => x.Count())
                                    .FirstOrDefault()
                                    .Select(x => x)
                                    .FirstOrDefault();
            ViewBag.LoyalCustomer = customer.Account.Email;
            ViewBag.CustomerOrder = orders.Count(x => x.AccountId == customer.AccountId);

            ViewBag.ProducOrder = null;
            ViewBag.ProductSold = 0;

            ViewBag.CategoryOrder = null;
            ViewBag.CategorySold = 0;

            ViewBag.ProductReview = null;
            ViewBag.ReviewQuantity = 0;

            ViewBag.Revenue = orders.Where(x => x.OrderDate.Value.Date == DateTime.Now.Date).Sum(x => x.GrandTotal);
            ViewBag.Revenue1 = (int) orders.Where(x => x.OrderDate.Value.Date == DateTime.Now.AddDays(-1).Date).Sum(x => x.GrandTotal);
            ViewBag.Revenue2 = (int) orders.Where(x => x.OrderDate.Value.Date == DateTime.Now.AddDays(-2).Date).Sum(x => x.GrandTotal);
            ViewBag.Revenue3 = (int) orders.Where(x => x.OrderDate.Value.Date == DateTime.Now.AddDays(-3).Date).Sum(x => x.GrandTotal);
            ViewBag.Revenue4 = (int) orders.Where(x => x.OrderDate.Value.Date == DateTime.Now.AddDays(-4).Date).Sum(x => x.GrandTotal);
            ViewBag.Revenue5 = (int) orders.Where(x => x.OrderDate.Value.Date == DateTime.Now.AddDays(-5).Date).Sum(x => x.GrandTotal);
            ViewBag.Revenue6 = (int) orders.Where(x => x.OrderDate.Value.Date == DateTime.Now.AddDays(-6).Date).Sum(x => x.GrandTotal);

            return View("~/Areas/Admin/Views/Statistic/StatisticView.cshtml");
        }
    }
}