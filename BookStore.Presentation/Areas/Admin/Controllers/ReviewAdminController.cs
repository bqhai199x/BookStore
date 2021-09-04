using BookStore.BusinessLogic.IServices;
using BookStore.Common;
using BookStore.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace BookStore.Presentation.Areas.Admin.Controllers
{
    public class ReviewAdminController : Controller
    {
        private readonly IReviewServices _review;

        public ReviewAdminController(IReviewServices review)
        {
            _review = review;
        }

        [Route("trang-quan-tri/quan-ly-nhan-xet")]
        public async Task<ActionResult> ReviewList()
        {
            if (Base.Account == null || Base.Account.Role == RoleUser.Customer)
            {
                return Redirect("/");
            }
            var reviews = await _review.GetAllAsync();
            return View("~/Areas/Admin/Views/ReviewAdmin/ReviewList.cshtml", reviews.OrderByDescending(x => x.CreatedTime));
        }

        public async Task<ActionResult> ReviewDelete(int reviewId)
        {
            await _review.DeleteByIdAsync(reviewId);
            return Redirect("/trang-quan-tri/quan-ly-nhan-xet");
        }
    }
}