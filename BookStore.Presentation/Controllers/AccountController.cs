using BookStore.BusinessLogic.IServices;
using System.Web.Mvc;

namespace BookStore.Presentation.Controllers
{
    public class AccountController : Controller
    {
        private readonly IAccountServices _account;
        private readonly IOrderServices _order;

        public AccountController(IAccountServices account, IOrderServices order)
        {
            _account = account;
            _order = order;
        }

        public ActionResult Account()
        {
            return View();
        }
    }
}