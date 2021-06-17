using System.ComponentModel.DataAnnotations;

namespace BookStore.Domain
{
    public partial class OrderDetail
    {
        [DisplayFormat(DataFormatString = "{0:#,###}")]
        public decimal? Total
        {
            get
            {
                return Quantity * Product.Price;
            }
        }
    }
}
