using BookStore.DataAccess.Data;
using BookStore.Domain;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace BookStore.DataAccessLayer
{
    public class DbInitializer : CreateDatabaseIfNotExists<BookStoreContext>
    {
        protected override void Seed(BookStoreContext context)
        {
            if (context.Categories.Any())
            {
                return;
            }

            #region Add Category
            var categories = new List<Category>()
            {
                
            };
            context.Categories.AddRange(categories);
            #endregion


            #region Add Coupon
            var coupons = new List<Coupon>()
            {
               
            };
            context.Coupons.AddRange(coupons);
            #endregion

            #region Add User
            var users = new List<Account>()
            {
                
            };
            context.Accounts.AddRange(users);
            #endregion

            context.SaveChanges();
        }
    }
}
