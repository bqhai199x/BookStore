namespace BookStore.Common
{
    public class Static
    {
        public static int? AccountID { get; set; } = null;
        public static string FullName { get; set; } = null;
        public static bool IsAdmin { get; set; } = false;

        public static void Login(int accountId, string fullName, bool isAdmin)
        {
            AccountID = accountId;
            FullName = fullName;
            IsAdmin = isAdmin;
        }

        public static void Logout()
        {
            AccountID = null;
            FullName = null;
            IsAdmin = false;
        }
    }
}
