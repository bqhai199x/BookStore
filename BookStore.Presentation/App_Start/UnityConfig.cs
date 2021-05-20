using BookStore.BusinessLogic.IServices;
using BookStore.DataAccess.Data;
using BookStore.DataAccess.Infrastructure;
using BookStore.DataAccess.Repositories;
using BookStore.Models;
using System;

using Unity;

namespace BookStore.Presentation
{
    /// <summary>
    /// Specifies the Unity configuration for the main container.
    /// </summary>
    public static class UnityConfig
    {
        #region Unity Container
        private static Lazy<IUnityContainer> container =
          new Lazy<IUnityContainer>(() =>
          {
              var container = new UnityContainer();
              RegisterTypes(container);
              return container;
          });

        /// <summary>
        /// Configured Unity Container.
        /// </summary>
        public static IUnityContainer Container => container.Value;
        #endregion

        /// <summary>
        /// Registers the type mappings with the Unity container.
        /// </summary>
        /// <param name="container">The unity container to configure.</param>
        /// <remarks>
        /// There is no need to register concrete types such as controllers or
        /// API controllers (unless you want to change the defaults), as Unity
        /// allows resolving a concrete type even if it was not previously
        /// registered.
        /// </remarks>
        public static void RegisterTypes(IUnityContainer container)
        {
            // NOTE: To load from web.config uncomment the line below.
            // Make sure to add a Unity.Configuration to the using statements.
            // container.LoadConfiguration();

            // TODO: Register your type's mappings here.
            // container.RegisterType<IProductRepository, ProductRepository>();

            container.RegisterSingleton<BookStoreContext, BookStoreContext>();
            container.RegisterSingleton<IDbFactory, DbFactory>();
            container.RegisterSingleton<IUnitOfWork, UnitOfWork>();


            container.RegisterType<IGenericRepository<Category>, GenericRepository<Category>>();
            container.RegisterType<ICategoryServices, CategoryServices>();

            container.RegisterType<IGenericRepository<Review>, GenericRepository<Review>>();
            container.RegisterType<IReviewServices, ReviewServices>();

            container.RegisterType<IGenericRepository<Feedback>, GenericRepository<Feedback>>();
            container.RegisterType<IFeedbackServices, FeedbackServices>();

            container.RegisterType<IGenericRepository<Order>, GenericRepository<Order>>();
            container.RegisterType<IOrderServices, OrderServices>();

            container.RegisterType<IGenericRepository<OrderDetail>, GenericRepository<OrderDetail>>();
            container.RegisterType<IOrderDetailServices, OrderDetailServices>();

            container.RegisterType<IGenericRepository<Product>, GenericRepository<Product>>();
            container.RegisterType<IProductServices, ProductServices>();

            container.RegisterType<IGenericRepository<Publisher>, GenericRepository<Publisher>>();
            container.RegisterType<IPublisherServices, PublisherServices>();

            container.RegisterType<IGenericRepository<Account>, GenericRepository<Account>>();
            container.RegisterType<IAccountServices, AccountServices>();

            container.RegisterType<IGenericRepository<Author>, GenericRepository<Author>>();
            container.RegisterType<IAuthorServices, AuthorServices>();

            container.RegisterType<IGenericRepository<Coupon>, GenericRepository<Coupon>>();
            container.RegisterType<ICouponServices, CouponServices>();

            container.RegisterType<IGenericRepository<ProductImage>, GenericRepository<ProductImage>>();
            container.RegisterType<IProductImageServices, ProductImageServices>();

            container.RegisterType<IGenericRepository<Shipper>, GenericRepository<Shipper>>();
            container.RegisterType<IShipperServices, ShipperServices>();
        }
    }
}