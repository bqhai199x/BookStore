using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BookStore.Domain
{
    [Table("OrderDetail")]
    public partial class OrderDetail
    {
        [Key]
        [Column(Order = 1)]
        public int OrderId { get; set; }

        [Key]
        [Column(Order = 2)]
        public int ProductId { get; set; }

        [DisplayName("Số lượng")]
        public int? Quantity { get; set; }

        [ForeignKey("OrderId")]
        public virtual Order Order { get; set; }

        [ForeignKey("ProductId")]
        public virtual Product Product { get; set; }
    }
}
