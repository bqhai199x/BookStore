using BookStore.BusinessLogic.BaseServices;
using BookStore.DataAccess.Infrastructure;
using BookStore.DataAccess.Repositories;
using BookStore.Domain;

namespace BookStore.BusinessLogic.IServices
{
    public class FeedbackServices : BaseServices<Feedback>, IFeedbackServices
    {
        public FeedbackServices(IUnitOfWork unitOfWork, IGenericRepository<Feedback> genericRepository) : base(unitOfWork, genericRepository) { }
    }
}
