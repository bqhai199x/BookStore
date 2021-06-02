namespace BookStore.Models
{
    using System;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("Feedback")]
    public class Feedback
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int FeedbackId { get; set; }
        
        public string Email { get; set; }

        [DisplayName("Nội dung")]
        public string Content { get; set; }

        public DateTime? CreatedDate { get; set; }
    }
}
