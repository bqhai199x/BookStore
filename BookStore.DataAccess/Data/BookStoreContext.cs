using BookStore.Models;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;

namespace BookStore.DataAccess.Data
{
    public class BookStoreContext : DbContext
    {
        public BookStoreContext() : base("name=TofuBookDB")
        {
        }

        public virtual DbSet<Account> Accounts{ get; set; }
        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<Review> Reviews { get; set; }
        public virtual DbSet<Feedback> Feedbacks { get; set; }
        public virtual DbSet<Coupon> Coupons { get; set; }
        public virtual DbSet<OrderDetail> OrderDetails { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<Publisher> Publishers { get; set; }
        public virtual DbSet<Shipper> Shippers { get; set; }
        public virtual DbSet<ProductImage> ProductImages { get; set; }
    }
}
