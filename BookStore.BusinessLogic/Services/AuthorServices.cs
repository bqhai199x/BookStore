using BookStore.BusinessLogic.BaseServices;
using BookStore.DataAccess.Infrastructure;
using BookStore.DataAccess.Repositories;
using BookStore.Models;

namespace BookStore.BusinessLogic.IServices
{
    public class AuthorServices : BaseServices<Author>, IAuthorServices
    {
        public AuthorServices(IUnitOfWork unitOfWork, IGenericRepository<Author> genericRepository) : base(unitOfWork, genericRepository) { }

    }
}
