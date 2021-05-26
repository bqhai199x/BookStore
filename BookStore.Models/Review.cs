﻿namespace BookStore.Models
{
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public class Review
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ReviewId { get; set; }

        [ForeignKey("Account")]
        public int AccountId { get; set; }

        [ForeignKey("Product")]
        public int ProductId { get; set; }

        [DisplayName("Nội dung")]
        public string Content { get; set; }

        public virtual Account Account { get; set; }

        public virtual Product Product { get; set; }
    }
}