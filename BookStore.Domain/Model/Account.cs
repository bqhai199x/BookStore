using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BookStore.Domain
{
    [Table("Account")]
    public partial class Account
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int AccountId { get; set; }

        public string Email { get; set; }

        [DisplayName("Mật khẩu")]
        public string Password { get; set; }

        [DisplayName("Ảnh đại diện")]
        public string ImageURL { get; set; }

        public string FirstName { get; set; }
        
        public string LastName { get; set; }

        [DisplayName("Tỉnh/Thành phố")]
        public string City { get; set; }

        [DisplayName("Quận huyện")]
        public string District { get; set; }

        [DisplayName("Phường xã")]
        public string Commune { get; set; }

        [DisplayName("Địa chỉ")]
        public string Address { get; set; }

        [DisplayName("Số điện thoại")]
        public string Phone { get; set; }

        public RoleUser Role { get; set; }

        [DisplayName("Ngày tạo")]
        public DateTime? CreatedDate { get; set; }

        public virtual ICollection<Review> Reviews { get; set; }

        public virtual ICollection<Order> Orders { get; set; }
    }
}
