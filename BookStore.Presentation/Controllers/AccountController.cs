using BookStore.BusinessLogic.IServices;
using BookStore.Common;
using BookStore.Domain;
using System;
using System.IO;
using System.Threading.Tasks;
using System.Web.Mvc;

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
            if (Session["Account"] != null)
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
                if(account.Role == RoleUser.Banned)
                {
                    return Json(new { banned = true }, JsonRequestBehavior.AllowGet);
                }
                Session["Account"] = account;
                return Json(new { banned = false, success = true }, JsonRequestBehavior.AllowGet);
            }
            return Json(new { success = false }, JsonRequestBehavior.AllowGet);
        }

        [Route("dang-ky")]
        public ActionResult RegisterView()
        {
            if (Session["Account"] != null)
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

        [Route("sua-thong-tin")]
        public ActionResult ProfileView()
        {
            if (Session["Account"] == null)
            {
                return Redirect("/");
            }
            return View("Profile", Session["Account"] as Account);
        }

        public async Task<ActionResult> ChangeInfo(Account info)
        {
            int? baseId = (Session["Account"] as Account)?.AccountId;
            Account account = await _account.FindAsync(x => x.AccountId == baseId);
            account.Address = info.Address;
            account.City = info.City;
            account.Commune = info.Commune;
            account.District = info.District;
            account.FirstName = info.FirstName;
            account.LastName = info.LastName;
            account.Phone = info.Phone;

            var files = Request.Files["avatarFile"];
            if (files != null && files.ContentLength > 0)
            {
                string fileName = Path.GetFileName(files.FileName);
                string uploadPath = Server.MapPath("~/Assets/images/avatars/" + fileName);
                files.SaveAs(uploadPath);
                account.ImageURL = fileName;
            }

            await _account.UpdateAsync(account);
            return Redirect("/sua-thong-tin");
        }

        public async Task<JsonResult> ChangePassword(string oldPass, string newPass, string rePass)
        {
            if(newPass != rePass)
            {
                return Json("Xác nhận mật khẩu không trùng khớp !", JsonRequestBehavior.AllowGet);
            }
            int? baseId = (Session["Account"] as Account)?.AccountId;
            Account account = await _account.FindAsync(x => x.AccountId == baseId);
            if(oldPass.Encrypt() != account.Password)
            {
                return Json("Mật khẩu cũ không đúng !", JsonRequestBehavior.AllowGet);
            }
            account.Password = newPass.Encrypt();
            bool resul = await _account.UpdateAsync(account);

            return Json("OK", JsonRequestBehavior.AllowGet);
        }

        [Route("dang-xuat")]
        public ActionResult Logout()
        {
            Session.Clear();
            return Redirect(Request.UrlReferrer.ToString());
        }
    }
}