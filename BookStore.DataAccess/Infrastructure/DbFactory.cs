using BookStore.DataAccess.Data;

namespace BookStore.DataAccess.Infrastructure
{
    public class DbFactory : Disposable, IDbFactory
    {
        private BookStoreContext _dbcontext;

        public BookStoreContext Init() => _dbcontext ?? (_dbcontext = new BookStoreContext());

        protected override void DisposeCore()
        {
            if(_dbcontext != null)
            {
                _dbcontext.Dispose();
            }
        }
    }
}
