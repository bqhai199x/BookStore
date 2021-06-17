using System.ComponentModel;

namespace BookStore.Domain
{
    public partial class Account
    {
        [DisplayName("Địa chỉ")]
        public string FullName
        {
            get { return LastName + " " + FirstName; }
        }
    }
}
