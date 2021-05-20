using BookStore.BusinessLogic.BaseServices;
using BookStore.DataAccess.Infrastructure;
using BookStore.DataAccess.Repositories;
using BookStore.Models;

namespace BookStore.BusinessLogic.IServices
{
    public class AccountServices : BaseServices<Account>, IAccountServices
    {
        public AccountServices(IUnitOfWork unitOfWork, IGenericRepository<Account> genericRepository) : base(unitOfWork, genericRepository) { }
    }
}
