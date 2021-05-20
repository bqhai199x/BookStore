using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BookStore.Models
{
    public class Author
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int AuthorId { get; set; }

        [DisplayName("Tên tác giả")]
        public string Name { get; set; }

        [DisplayName("Giới thiệu")]
        public string Description { get; set; }

        public virtual ICollection<Product> Products { get; set; }
    }
}
