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
                if(Product.CreatedDate != null && (DateTime.Now - Product.CreatedDate.Value).Days <= 3)
                {
                    return "label-new";
                }
                return string.Empty;
            }
        }
    }
}