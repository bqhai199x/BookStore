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
            return View("Login");
        }

        public async Task<JsonResult> LoginRequest(string user, string password)
        {
            Account account = await _account.FindAsync(
                x => (x.UserName.Equals(user) || x.Email.Equals(user) || x.Phone.Equals(user)) && x.Password.Equals(password));
            if (account != null)
            {
                Static.Login(account.AccountId, account.FullName, account.Role == RoleUser.Admin);
                return Json(new { success = true }, JsonRequestBehavior.AllowGet);
            }
            return Json(new { success = false }, JsonRequestBehavior.AllowGet);
        }

        [Route("dang-ky")]
        public ActionResult RegisterView()
        {
            return View("Register");
        }

        public async Task<JsonResult> RegisterRequest(Account info)
        {
            List<string> infoList = new List<string>();
            // userName, email, phoneNumber
            bool[] isValid = new bool[] { true, true, true };
            foreach (var item in await _account.GetAllAsync())
            {
                infoList.Add(item.UserName.ToLower());
                infoList.Add(item.Email.ToLower());
                infoList.Add(item.Phone);
            }
            if (infoList.Exists(x => x.Equals(info.UserName.ToLower())))
            {
                isValid[0] = false;
            }
            if (infoList.Exists(x => x.Equals(info.Email.ToLower())))
            {
                isValid[1] = false;
            }
            if (infoList.Exists(x => x.Equals(info.Phone.ToLower())))
            {
                isValid[2] = false;
            }
            if (!isValid[0] || !isValid[1] || !isValid[2])
            {
                return Json(new 
                { 
                    success = false, existUser = isValid[0],
                    existEmail = isValid[1],
                    existPhone = isValid[2] 
                }, JsonRequestBehavior.AllowGet);
            }
            Account newAccount = new Account()
            {
                FirstName = info.FirstName,
                LastName = info.LastName,
                UserName = info.UserName,
                Password = info.Password,
                Email = info.Email,
                Phone = info.Phone,
                Address = info.Address,
                Role = RoleUser.Customer,
                CreatedDate = DateTime.Now
            };
            await _account.CreateAsync(newAccount);
            return Json(new { success = true }, JsonRequestBehavior.AllowGet);
        }

        [Route("dang-xuat")]
        public ActionResult Logout()
        {
            Static.Logout();
            return Redirect(Request.UrlReferrer.ToString());
        }
    }
}