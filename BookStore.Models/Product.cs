namespace BookStore.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("Product")]
    public class Product
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ProductId { get; set; }

        [DisplayName("Tên sản phẩm")]
        public string Name { get; set; }

        public int? PublisherId { get; set; }

        public string Author { get; set; }

        public int? CategoryId { get; set; }

        [DisplayName("Kích thước")]
        public string Size { get; set; }

        [DisplayName("Số trang")]
        public int? NumPage { get; set; }

        [DisplayName("Đơn giá")]
        [DisplayFormat(DataFormatString = "{0:#,###}")]
        public decimal? Price { get; set; }

        [DisplayName("Tóm tắt")]
        public string Description { get; set; }

        public DateTime? CreatedDate { get; set; }

        [ForeignKey("CategoryId")]
        public virtual Category Category { get; set; }

        [ForeignKey("PublisherId")]
        public virtual Publisher Publisher { get; set; }

        public virtual ICollection<ProductImage> Images  { get; set; }

        public virtual ICollection<Review> Reviews { get; set; }

        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    }
}
