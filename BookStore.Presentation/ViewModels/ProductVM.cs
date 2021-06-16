using BookStore.BusinessLogic.IServices;
using BookStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BookStore.Presentation.ViewModels
{
    public class ProductVM
    {
        public Product Product { get; set; }

        public string CateCalss
        {
            get => $"cate{Product.CategoryId}";
        }

        public string PriceClass
        {
            get
            {
                if (Product.Price < 100000)
                {
                    return "lessthan100k";
                }
                else if (Product.Price >= 100000 && Product.Price <= 200000)
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
                if (Product.ProductId == 17 || Product.ProductId == 18 || Product.ProductId == 16)
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
                double? rateAVG = Product.Reviews.Where(x => x.Rating != 0).Average(x => x.Rating);
                if (rateAVG == null) rateAVG = 0;
                return rateAVG * 10;
            }
        }

        public string SubName
        {
            get
            {
                return Product.Images.FirstOrDefault().ImageURL
                    .Substring(0, Product.Images.FirstOrDefault().ImageURL.IndexOf('.'));
            }
        }
    }
}