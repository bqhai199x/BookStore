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
            get {
                if (Product.Price < 100000)
                {
                    return "lessthan100k";
                }
                else if (Product.Price >= 100000 && Product.Price <= 200000)
                {
                    return "p100-200k";
                }
                else if (Product.Price >= 200000 && Product.Price <= 300000)
                {
                    return "p200-300k";
                }
                else
                {
                    return "greaterthan300k";
                }
            }
        }
    }
}