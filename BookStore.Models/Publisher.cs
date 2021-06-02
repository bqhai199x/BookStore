namespace BookStore.Models
{
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("Publisher")]
    public class Publisher
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int PublisherId { get; set; }

        [DisplayName("Tên nhà phát hành")]
        [StringLength(50)]
        public string Name { get; set; }

        [DisplayName("Mô tả")]
        public string Description { get; set; }

        public virtual ICollection<Product> Products { get; set; }
    }
}
