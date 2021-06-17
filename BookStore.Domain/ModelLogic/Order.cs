using System.ComponentModel.DataAnnotations;
using System.Linq;

namespace BookStore.Domain
{
    public partial class Order
    {
        public string Code
        {
            get { return OrderId.ToString("DH000"); }
        }

        public int? TotalQuantity
        {
            get { return OrderDetails.Sum(x => x.Quantity); }
        }

        [DisplayFormat(DataFormatString = "{0:#,###}")]
        public decimal? SubTotal
        {
            get { return OrderDetails.Sum(x => x.Quantity * x.Product.Price); }
        }

        [DisplayFormat(DataFormatString = "{0:#,###}")]
        public decimal? GrandTotal
        {
            get
            {
                decimal? grandTotal = SubTotal;
                if (CouponId != null)
                {
                    grandTotal *= Coupon.Discount;
                }
                if (ShipperId != null)
                {
                    grandTotal += Shipper.Price;
                }
                return grandTotal;
            }
        }
    }
}
