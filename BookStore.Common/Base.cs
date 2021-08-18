using BookStore.Domain;

namespace BookStore.Common
{
    public static class Base
    {
        public static Account Account { get; set; } = null;

        public static void Login(Account account) => Account = account;

        public static void Logout() => Account = null;

        public static int? AccountId
        {
            get
            {
                if (Account == null) return null;
                else return Account.AccountId;
            }
        }
    }
}
