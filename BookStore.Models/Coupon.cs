namespace BookStore.Models
{
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public class Coupon
    {

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int CouponId { get; set; }

        [DisplayName("Mã")]
        public string Code { get; set; }

        [DisplayName("Chiết khấu")]
        [DisplayFormat(DataFormatString = "{0:#,###}%")]
        public decimal Discount { get; set; }

        [DisplayName("Mô tả")]
        public string Description { get; set; }

        public virtual ICollection<Order> Orders { get; set; }
    }
}
