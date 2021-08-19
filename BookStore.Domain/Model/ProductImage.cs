using System.ComponentModel.DataAnnotations.Schema;

namespace BookStore.Domain
{
    [Table("ProductImage")]
    public partial class ProductImage
    {
        public int ProductImageId { get; set; }

        public string ImageURL { get; set; }

        public int? ProductId { get; set; }

        [ForeignKey("ProductId")]
        public virtual Product Product { get; set; }
    }
}
