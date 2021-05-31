using System.ComponentModel.DataAnnotations.Schema;

namespace BookStore.Models
{
    public class ProductImage
    {
        public int ProductImageId { get; set; }

        public string ImageURL { get; set; }

        public int? ProductId { get; set; }

        [ForeignKey("ProductId")]

        public Product Product { get; set; }
    }
}
