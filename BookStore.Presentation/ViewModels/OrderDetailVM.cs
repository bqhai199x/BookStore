using BookStore.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace BookStore.Presentation.ViewModels
{
    public class OrderDetailVM
    {
        public OrderDetail OrderDetail { get; set; }

        [DisplayFormat(DataFormatString = "{0:#,###}")]
        public decimal? Total
        {
            get
            {
                return OrderDetail.Quantity * OrderDetail.Product.Price;
            }
        }
    }
}