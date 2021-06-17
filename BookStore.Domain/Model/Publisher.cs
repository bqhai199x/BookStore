namespace BookStore.Domain
{
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("Publisher")]
    public partial class Publisher
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int PublisherId { get; set; }

        [DisplayName("Tên nhà phát hành")]

        public string Name { get; set; }

        [DisplayName("Mô tả")]
        public string Description { get; set; }

        public virtual ICollection<Product> Products { get; set; }
    }
}
