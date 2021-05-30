using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BookStore.Models
{
    public class Shipper
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ShipperId { get; set; }

        [DisplayName("Tên hãng vận chuyển")]
        public string Name { get; set; }

        [DisplayName("Đơn giá")]
        public decimal? Price { get; set; }

        [DisplayName("Số điện thoại")]
        public string Phone { get; set; }

        [DisplayName("Giới thiệu")]
        public string Description { get; set; }

        public virtual ICollection<Order> Orders { get; set; }
    }
}