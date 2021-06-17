using System.ComponentModel;

namespace BookStore.Domain
{
    public enum RoleUser
    {
        [Description("Customer")]
        Customer,

        [Description("Admin")]
        Admin
    }
}
