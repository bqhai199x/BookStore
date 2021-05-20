using BookStore.DataAccess.Data;
using System;

namespace BookStore.DataAccess.Infrastructure
{
    public interface IDbFactory : IDisposable
    {
        BookStoreContext Init();
    }
}
