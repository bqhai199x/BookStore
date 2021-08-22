using System.ComponentModel;

namespace BookStore.Domain
{
    public enum Payment
    {
        [Description("Thanh toán sau khi nhận hàng")]
        COD,

        [Description("Thanh toán bằng Momo")]
        Momo,

        [Description("Thanh toán bằng PayPal")]
        PayPal,

        [Description("Thanh toán bằng thẻ ATM")]
        ATM
    }
}
