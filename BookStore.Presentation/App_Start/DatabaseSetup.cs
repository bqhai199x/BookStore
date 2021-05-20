using BookStore.DataAccess.Data;
using BookStore.DataAccessLayer;
using System.Data.Entity;

namespace BookStore.Presentation.App_Start
{
    public class DatabaseSetup
    {
        public static void Initialize()
        {
            Database.SetInitializer(new DbInitializer());
            using (var db = new BookStoreContext())
            {
                db.Database.Initialize(true);
            }
        }
    }
}