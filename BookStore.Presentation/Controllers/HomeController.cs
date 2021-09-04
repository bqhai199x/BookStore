using BookStore.BusinessLogic.IServices;
using BookStore.Domain;
using System;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace BookStore.Presentation.Controllers
{
    public class HomeController : Controller
    {
        private readonly ICategoryServices _category;
        private readonly IFeedbackServices _feedback;

        public HomeController(ICategoryServices category, IFeedbackServices feedback)
        {
            _category = category;
            _feedback = feedback;
        }

        [Route("")]
        public ActionResult Index()
        {
            return View();
        }

        public PartialViewResult Footer()
        {
            ViewBag.LstCategory = _category.GetAll();
            return PartialView("_Footer");
        }

        [Route("phan-hoi")]
        public ActionResult Feedback()
        {
            return View();
        }

        public async Task<JsonResult> FeedbackRequest(string email, string content)
        {
            Feedback feedback = new Feedback()
            {
                Email = email,
                Content = content,
                CreatedDate = DateTime.Now
            };
            bool result = await _feedback.CreateAsync(feedback) > 0;
            return Json(result, JsonRequestBehavior.AllowGet);
        }
    }
}