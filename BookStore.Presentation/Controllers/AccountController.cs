using BookStore.BusinessLogic.IServices;
using System.Web.Mvc;
using BookStore.Common;
using System.Threading.Tasks;
using BookStore.Domain;
using System.Collections.Generic;
using System;

namespace BookStore.Presentation.Controllers
{
    public class AccountController : Controller
    {
        private readonly IAccountServices _account;

        public AccountController(IAccountServices account)
        {
            _account = account;
        }

        [Route("dang-nhap")]
        public ActionResult LoginView()
        {
            if (Base.Account != null)
            {
                return Redirect("/");
            }
            return View("Login");
        }

        public async Task<JsonResult> LoginRequest(string email, string password)
        {
            password = password.Encrypt();
            Account account = await _account.FindAsync(x => x.Email.Equals(email) && x.Password.Equals(password));
            if (account != null)
            {
                Base.Login(account);
                return Json(new { success = true }, JsonRequestBehavior.AllowGet);
            }
            return Json(new { success = false }, JsonRequestBehavior.AllowGet);
        }

        [Route("dang-ky")]
        public ActionResult RegisterView()
        {
            if (Base.Account != null)
            {
                return Redirect("/");
            }
            return View("Register");
        }

        public async Task<JsonResult> RegisterRequest(Account info)
        {
            var account = await _account.FindAsync(x => x.Email.ToLower().Equals(info.Email.ToLower()));
            if (account != null)
             {
                return Json(new { success = false }, JsonRequestBehavior.AllowGet);
            }
            info.Password = info.Password.Encrypt();
            Account newAccount = new Account()
            {
                FirstName = info.FirstName,
                LastName = info.LastName,
                Password = info.Password,
                Email = info.Email,
                Role = RoleUser.Customer,
                CreatedDate = DateTime.Now
            };
            await _account.CreateAsync(newAccount);
            return Json(new { success = true }, JsonRequestBehavior.AllowGet);
        }

        [Route("dang-xuat")]
        public ActionResult Logout()
        {
            Base.Logout();
            return Redirect(Request.UrlReferrer.ToString());
        }
    }
}