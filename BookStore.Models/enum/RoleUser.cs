using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookStore.Models
{
    public enum RoleUser
    {
        [Description("Customer")]
        Customer,

        [Description("Admin")]
        Admin
    }
}
