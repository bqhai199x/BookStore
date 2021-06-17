using BookStore.BusinessLogic.BaseServices;
using BookStore.DataAccess.Infrastructure;
using BookStore.DataAccess.Repositories;
using BookStore.Domain;

namespace BookStore.BusinessLogic.IServices
{
    public class OrderServices : BaseServices<Order>, IOrderServices
    {
        public OrderServices(IUnitOfWork unitOfWork, IGenericRepository<Order> genericRepository) : base(unitOfWork, genericRepository) { }
    }
}
