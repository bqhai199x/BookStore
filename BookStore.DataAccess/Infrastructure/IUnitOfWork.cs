using System.Threading.Tasks;

namespace BookStore.DataAccess.Infrastructure
{
    public interface IUnitOfWork
    {
        int Commit();
        Task<int> CommitAsync();
    }
}
