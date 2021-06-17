using System.ComponentModel;

namespace BookStore.Domain
{
    public enum OrderStatus
    {
        [Description("Giỏ hàng")]
        InCart,

        [Description("Chờ xác nhận")]
        Waitting,

        [Description("Đã xác nhận")]
        Confirmed,

        [Description("Đang giao")]
        Shipping,

        [Description("Đã giao")]
        Delivered,

        [Description("Đã huỷ")]
        Cancelled,
    }
}
