using BookStore.BusinessLogic.BaseServices;
using BookStore.DataAccess.Infrastructure;
using BookStore.DataAccess.Repositories;
using BookStore.Domain;

namespace BookStore.BusinessLogic.IServices
{
    public class CouponServices : BaseServices<Coupon>, ICouponServices
    {
        public CouponServices(IUnitOfWork unitOfWork, IGenericRepository<Coupon> genericRepository) : base(unitOfWork, genericRepository) { }
    }
}
