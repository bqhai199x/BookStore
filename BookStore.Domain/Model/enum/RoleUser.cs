using System.ComponentModel;

namespace BookStore.Domain
{
    public enum RoleUser
    {
        [Description("Khách hàng")]
        Customer,

        [Description("Quản trị")]
        Admin,

        [Description("Nhân viên")]
        Employee,

        [Description("Bị chặn")]
        Banned
    }
}
