using BookStore.BusinessLogic.IServices;
using BookStore.Common;
using BookStore.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace BookStore.Presentation.Areas.Admin.Controllers
{
    public class StatisticController : Controller
    {
        private readonly IOrderServices _order;
        private readonly IProductServices _product;
        private readonly ICategoryServices _category ;

        public StatisticController(IOrderServices order, IProductServices product, ICategoryServices category)
        {
            _order = order;
            _product = product;
            _category = category;
        }

        [Route("trang-quan-tri")]
        public async Task<ActionResult> StatisticView()
        {
            if (Base.Account == null || Base.Account.Role == RoleUser.Customer)
            {
                return Redirect("/");
            }

            var orders = await _order.FindAllAsync(x => x.Status != OrderStatus.InCart && x.Status != OrderStatus.Cancelled);

            ViewBag.NumberSold = orders.Sum(x => x.TotalQuantity);

            ViewBag.TotalRevenue = orders.Sum(x => x.GrandTotal).Value.ToString("#,### VNĐ");

            // Order
            ViewBag.TotalOrder = orders.Count();
            ViewBag.OrderFinal = orders.Count(x => x.Status == OrderStatus.Delivered);

            // Best customer
            var customer = orders.GroupBy(x => x.AccountId)
                                    .OrderByDescending(x => x.Count())
                                    .FirstOrDefault()
                                    .Select(x => x)
                                    .FirstOrDefault();
            ViewBag.LoyalCustomer = customer.Account.Email;
            ViewBag.CustomerOrder = orders.Count(x => x.AccountId == customer.AccountId);

            Dictionary<int?, int?> keyValues = new Dictionary<int?, int?>();
            KeyValuePair<int?, int?> top = new KeyValuePair<int?, int?>();

            // Best product seller ProductId - Quantity
            foreach (var order in orders)
            {
                foreach (var detail in order.OrderDetails)
                {
                    if (keyValues.ContainsKey(detail.ProductId))
                    {
                        keyValues[detail.ProductId] += detail.Quantity;
                    }
                    else
                    {
                        keyValues.Add(detail.ProductId, detail.Quantity);
                    }
                }
            }
            top = keyValues.OrderByDescending(x => x.Value).FirstOrDefault();

            ViewBag.ProducOrder = (await _product.FindAsync(x => x.ProductId == top.Key)).Name;
            ViewBag.ProductSold = top.Value;

            // Best category seller Category - Quantity
            foreach (var order in orders)
            {
                foreach (var detail in order.OrderDetails)
                {
                    if (keyValues.ContainsKey(detail.Product.CategoryId))
                    {
                        keyValues[detail.Product.CategoryId] += detail.Quantity;
                    }
                    else
                    {
                        keyValues.Add(detail.Product.CategoryId, detail.Quantity);
                    }
                }
            }
            top = keyValues.OrderByDescending(x => x.Value).FirstOrDefault();

            ViewBag.CategoryOrder = (await _category.FindAsync(x => x.CategoryId == top.Key)).Name;
            ViewBag.CategorySold = top.Value;

            // Favorite product
            var product = (await _product.GetAllAsync()).OrderByDescending(x => x.Reviews.Count()).FirstOrDefault();

            ViewBag.ProductReview = product.Name;
            ViewBag.ReviewQuantity = product.Reviews.Count();

            // Revenue charts
            ViewBag.Revenue = orders.Where(x => x.OrderDate.Value.Date == DateTime.Now.Date).Sum(x => x.GrandTotal);
            ViewBag.Revenue1 = (int)orders.Where(x => x.OrderDate.Value.Date == DateTime.Now.AddDays(-1).Date).Sum(x => x.GrandTotal);
            ViewBag.Revenue2 = (int)orders.Where(x => x.OrderDate.Value.Date == DateTime.Now.AddDays(-2).Date).Sum(x => x.GrandTotal);
            ViewBag.Revenue3 = (int)orders.Where(x => x.OrderDate.Value.Date == DateTime.Now.AddDays(-3).Date).Sum(x => x.GrandTotal);
            ViewBag.Revenue4 = (int)orders.Where(x => x.OrderDate.Value.Date == DateTime.Now.AddDays(-4).Date).Sum(x => x.GrandTotal);
            ViewBag.Revenue5 = (int)orders.Where(x => x.OrderDate.Value.Date == DateTime.Now.AddDays(-5).Date).Sum(x => x.GrandTotal);
            ViewBag.Revenue6 = (int)orders.Where(x => x.OrderDate.Value.Date == DateTime.Now.AddDays(-6).Date).Sum(x => x.GrandTotal);

            return View("~/Areas/Admin/Views/Statistic/StatisticView.cshtml");
        }
    }
}