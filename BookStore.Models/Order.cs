namespace BookStore.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public class Order
    {

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int OrderId { get; set; }

        

        [DisplayName("Ngày đặt")]
        public DateTime OrderDate { get; set; }

        [DisplayName("Trạng thái")]
        public OrderStatus Status { get; set; }

        [DisplayName("Họ tên")]
        public string FullName { get; set; }

        [DisplayName("Địa chỉ")]
        public string Address { get; set; }

        [DisplayName("Số điện thoại")]
        public string Phone { get; set; }

        public int ShipperId { get; set; }

        public int CouponId { get; set; }

        public int AccountId { get; set; }

        [ForeignKey("AccountId")]
        public virtual Account Account { get; set; }

        [ForeignKey("CouponId")]
        public virtual Coupon Coupon { get; set; }

        [ForeignKey("ShipperId")]
        public virtual Shipper Shipper { get; set; }

        public virtual ICollection<OrderDetail> OrderDetails { get; set; }

        [NotMapped]
        public decimal SubTotal
        {
            get { return OrderDetails.Sum(s => s.Product.Price * s.Quantity); }
        }

        [NotMapped]
        public decimal GrandTotal
        {
            get { return SubTotal - SubTotal * Coupon.Discount; }
        }
    }
}
