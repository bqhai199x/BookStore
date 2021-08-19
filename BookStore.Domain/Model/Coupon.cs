using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BookStore.Domain
{
    [Table("Coupon")]
    public partial class Coupon
    {

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int CouponId { get; set; }

        [DisplayName("Mã")]
        public string Code { get; set; }

        [DisplayName("Chiết khấu")]
        [DisplayFormat(DataFormatString = "{0:#,###}%")]
        public decimal? Discount { get; set; }

        [DisplayName("Ngày bắt đầu")]
        public DateTime? StartDate { get; set; }

        [DisplayName("Ngày kết thúc")]
        public DateTime? EndDate { get; set; }

        [DisplayName("Số lượng")]
        public int? Quantity { get; set; }

        [DisplayName("Mô tả")]
        public string Description { get; set; }

        public virtual ICollection<Order> Orders { get; set; }
    }
}
