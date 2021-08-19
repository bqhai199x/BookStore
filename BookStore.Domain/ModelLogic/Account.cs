namespace BookStore.Domain
{
    public partial class Account
    {
        public string FullName
        {
            get { return LastName + " " + FirstName; }
        }
    }
}
