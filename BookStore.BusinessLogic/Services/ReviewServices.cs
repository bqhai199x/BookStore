using BookStore.BusinessLogic.BaseServices;
using BookStore.DataAccess.Infrastructure;
using BookStore.DataAccess.Repositories;
using BookStore.Models;

namespace BookStore.BusinessLogic.IServices
{
    public class ReviewServices : BaseServices<Review>, IReviewServices
    {
        public ReviewServices(IUnitOfWork unitOfWork, IGenericRepository<Review> genericRepository) :base(unitOfWork, genericRepository) { }
    }
}
