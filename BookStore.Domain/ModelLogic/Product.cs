using System.Linq;

namespace BookStore.Domain
{
    public partial class Product
    {
        public string CateCalss
        {
            get => $"cate{CategoryId}";
        }

        public string PriceClass
        {
            get
            {
                if (Price < 100000)
                {
                    return "lessthan100k";
                }
                else if (Price >= 100000 && Price <= 200000)
                {
                    return "p100-200k";
                }
                else
                {
                    return "greaterthan200k";
                }
            }
        }

        public string NewCalss
        {
            get
            {
                //if (Product.CreatedDate != null && (DateTime.Now - Product.CreatedDate.Value).Days <= 3)
                if (ProductId == 17 || ProductId == 18 || ProductId == 16)
                {
                    return "label-new";
                }
                return string.Empty;
            }
        }

        public double? RateAVG
        {
            get
            {
                double? rateAVG = Reviews.Where(x => x.Rating != 0).Average(x => x.Rating);
                if (rateAVG == null) rateAVG = 0;
                return rateAVG * 10;
            }
        }

        public string SubName
        {
            get
            {
                return Images.FirstOrDefault().ImageURL
                    .Substring(0, Images.FirstOrDefault().ImageURL.IndexOf('.'));
            }
        }
    }
}
