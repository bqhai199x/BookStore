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
    public class AccountAdminController : Controller
    {
        private readonly IAccountServices _account;

        public AccountAdminController(IAccountServices account)
        {
            _account = account;
        }

        [Route("trang-quan-tri/quan-ly-tai-khoan")]
        public async Task<ActionResult> AccountList()
        {
            if (Session["Account"] == null || (Session["Account"] as Account).Role != RoleUser.Admin)
            {
                return Redirect("/");
            }
            var accounts = await _account.GetAllAsync();
            return View("~/Areas/Admin/Views/AccountAdmin/AccountList.cshtml", accounts);
        }

        public async Task<ActionResult> UpdateRole(int accountId, RoleUser role)
        {
            Account account = await _account.FindAsync(x => x.AccountId == accountId);
            account.Role = role;
            bool result = await _account.UpdateAsync(account);
            return Json(result, JsonRequestBehavior.AllowGet);
        }
    }
}