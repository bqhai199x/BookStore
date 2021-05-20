using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookStore.Models
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
