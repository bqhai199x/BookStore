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

        public string[] StatusDisplay
        {
            get {
                switch (Status)
                {
                    case OrderStatus.Waitting:
                        return new string[] { "Đang chờ xác nhận", "text-warning" };
                    case OrderStatus.Confirmed:
                        return new string[] { "Đã xác nhận", "text-info" };
                    case OrderStatus.Shipping:
                        return new string[] { "Đang giao hàng", "text-primary" };
                    case OrderStatus.Delivered:
                        return new string[] { "Đã giao hàng", "text-success" };
                    case OrderStatus.Cancelled:
                        return new string[] { "Đã huỷ", "text-danger" };
                    default:
                        return null;
                }
            }
        }
    }
}
