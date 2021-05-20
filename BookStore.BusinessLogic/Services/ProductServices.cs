using BookStore.BusinessLogic.BaseServices;
using BookStore.DataAccess.Infrastructure;
using BookStore.DataAccess.Repositories;
using BookStore.Models;

namespace BookStore.BusinessLogic.IServices
{
    public class ProductServices : BaseServices<Product>, IProductServices
    {
        public ProductServices(IUnitOfWork unitOfWork, IGenericRepository<Product> genericRepository) : base(unitOfWork, genericRepository) { }

    }
}
