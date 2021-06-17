using BookStore.BusinessLogic.BaseServices;
using BookStore.DataAccess.Infrastructure;
using BookStore.DataAccess.Repositories;
using BookStore.Domain;

namespace BookStore.BusinessLogic.IServices
{
    public class PublisherServices : BaseServices<Publisher>, IPublisherServices
    {
        public PublisherServices(IUnitOfWork unitOfWork, IGenericRepository<Publisher> genericRepository) : base(unitOfWork, genericRepository) { }
    }
}
