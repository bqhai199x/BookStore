using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BookStore.Domain
{
    [Table("Category")]
    public partial class Category
    {

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int CategoryId { get; set; }

        [DisplayName("Tên danh mục")]
        public string Name { get; set; }

        [DisplayName("Mô tả")]
        public string Description { get; set; }

        public virtual ICollection<Product> Products { get; set; }
    }
}
