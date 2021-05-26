﻿using BookStore.BusinessLogic.BaseServices;
using BookStore.DataAccess.Infrastructure;
using BookStore.DataAccess.Repositories;
using BookStore.Models;

namespace BookStore.BusinessLogic.IServices
{
    public class ProductImageServices : BaseServices<ProductImage>, IProductImageServices
    {
        public ProductImageServices(IUnitOfWork unitOfWork, IGenericRepository<ProductImage> genericRepository) : base(unitOfWork, genericRepository) { }

    }
}