namespace BookStore.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public class Product
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ProductId { get; set; }

        [DisplayName("Mã sản phẩm")]
        public string SKU { get; set; }

        [DisplayName("Tên sản phẩm")]
        public string Name { get; set; }

        public int PublisherId { get; set; }

        public int AuthorId { get; set; }

        public int CategoryId { get; set; }

        [DisplayName("Kích thước")]
        public string Size { get; set; }

        [DisplayName("Số trang")]
        public int NumPage { get; set; }

        [DisplayName("Đơn giá")]
        [DisplayFormat(DataFormatString = "{0:#,###} VNĐ")]
        public decimal Price { get; set; }

        [DisplayName("Tóm tắt")]
        public string Description { get; set; }

        public DateTime CreateDate { get; set; }

        [ForeignKey("CategoryId")]
        public virtual Category Category { get; set; }

        [ForeignKey("PublisherId")]
        public virtual Publisher Publisher { get; set; }

        [ForeignKey("AuthorId")]
        public virtual Author Author { get; set; }

        public virtual ICollection<ProductImage> Image  { get; set; }

        public virtual ICollection<Review> Reviews { get; set; }

        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    }
}
