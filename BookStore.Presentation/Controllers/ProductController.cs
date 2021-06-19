﻿using BookStore.BusinessLogic.IServices;
using BookStore.Common;
using BookStore.Domain;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace BookStore.Presentation.Controllers
{
    public class ProductController : Controller
    {
        private readonly IProductServices _product;
        private readonly ICategoryServices _category;
        private readonly IReviewServices _review;

        public ProductController(IProductServices product, ICategoryServices category, IReviewServices review)
        {
            _product = product;
            _category = category;
            _review = review;
        }

        [Route("cua-hang")]
        public ActionResult ViewShop(string searchStr)
        {
            ViewBag.SearchStr = searchStr;
            return View();
        }

        [Route("san-pham/{id}")]
        public async Task<ActionResult> ProductDetail(int? id)
        {
            var product = await _product.GetByIdAsync(id);
            ViewBag.RateAVG = product.Reviews.Where(x => x.Rating != 0).Average(x => x.Rating);
            return View(product);
        }

        public PartialViewResult Review(int? productId)
        {
            var review = _review.FindAll(x => x.ProductId == productId);
            return PartialView("_Review", review);
        }

        [HttpPost]
        public async Task<JsonResult> AddReview(int productId, int? rate, string content)
        {
            Review review = new Review()
            {
                AccountId = MyVariable.AccountID,
                ProductId = productId,
                Rating = rate,
                Content = content
            };
            await _review.CreateAsync(review);
            var reviews = await _review.FindAllAsync(x => x.ProductId == productId);
            return Json(reviews.Count(), JsonRequestBehavior.AllowGet);
        }

        public async Task<JsonResult> DeleteReview(int? reviewId)
        {
            var review = await _review.GetByIdAsync(reviewId);
            int? productId = review.ProductId;
            await _review.DeleteAsync(review);
            var reviews = await _review.FindAllAsync(x => x.ProductId == productId);
            return Json(reviews.Count(), JsonRequestBehavior.AllowGet);
        }

        public PartialViewResult RelatedProduct(int? productId, int? categoryId, string author, int? publisherId)
        {
            var product = _product.FindAll
                (
                    x => x.ProductId != productId && (x.CategoryId == categoryId ||
                    x.Author == author || x.PublisherId == publisherId)
                )
                .OrderByDescending(x => x.CategoryId == categoryId)
                .ThenByDescending(x => x.Author == author)
                .ThenByDescending(x => x.PublisherId == publisherId);
            return PartialView("_RelatedProduct", product);
        }

        public PartialViewResult TopProduct()
        {
            var products = _product.GetTop(x => x.OrderByDescending(y => y.OrderDetails.Count), 10);
            return PartialView("_TopProduct", products);
        }

        public PartialViewResult Category()
        {
            ViewBag.LstCategory = _category.GetAll();
            return PartialView("_Category");
        }

        public PartialViewResult ShowProduct(string searchStr)
        {
            var products = _product.GetAll();
            if (!string.IsNullOrEmpty(searchStr))
            {
                //products = _product.FindAll
                //(
                //    x => !x.Category.Name.Equals(searchStr) &&
                //    !x.Name.Contains(searchStr) &&
                //    !x.Author.Contains(searchStr) &&
                //    !x.Publisher.Name.Contains(searchStr)
                //)
                //.OrderByDescending(x => x.ProductId)
                //.ToList();
                foreach (var x in products)
                {
                    if (x.Category.Name.Equals(searchStr) ||
                        x.Name.Contains(searchStr) ||
                        x.Author.Contains(searchStr) ||
                        x.Publisher.Name.Contains(searchStr))
                    {
                        x.SearchClass = "search-value";
                    }
                    else
                    {
                        x.SearchClass = string.Empty;
                    }
                }
            }
            else
            {
                products = _product.GetTop(x => x.OrderByDescending(y => y.ProductId)).ToList();
            }
            return PartialView("_ShowProduct", products);
        }

        public PartialViewResult QuickProduct(int id)
        {
            var product = _product.GetById(id);
            ViewBag.RateAVG = product.Reviews.Where(x => x.Rating != 0).Average(x => x.Rating);
            return PartialView("_QuickProduct", product);
        }
    }
}