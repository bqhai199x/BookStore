using BookStore.Domain;
using System.Data.Entity;

namespace BookStore.DataAccess.Data
{
    public class BookStoreContext : DbContext
    {
        public BookStoreContext() : base("name=BookStoreDB")
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
