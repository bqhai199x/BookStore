using BookStore.Models;
using System.ComponentModel.DataAnnotations;
using System.Linq;

namespace BookStore.Presentation.ViewModels
{
    public class OrderVM
    {
        public Order Order { get; set; }
        public string Code
        {
            get { return Order.OrderId.ToString("DH000"); }
        }

        public int? TotalQuantity
        {
            get { return Order.OrderDetails.Sum(x => x.Quantity); }
        }

        [DisplayFormat(DataFormatString = "{0:#,###}")]
        public decimal? SubTotal
        {
            get { return Order.OrderDetails.Sum(x => x.Quantity * x.Product.Price); }
        }

        [DisplayFormat(DataFormatString = "{0:#,###}")]
        public decimal? GrandTotal
        {
            get
            {
                decimal? grandTotal = SubTotal;
                if (Order.CouponId != null)
                {
                    grandTotal *= Order.Coupon.Discount;
                }
                if (Order.ShipperId != null)
                {
                    grandTotal += Order.Shipper.Price;
                }
                return grandTotal;
            }
        }
    }
}