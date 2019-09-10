using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KitchenFood
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            kitchenDBContext db = new kitchenDBContext();
            List<tblUser> UserList = db.tblUsers.ToList();

            foreach (var item in UserList)
            {
                if (item.UName == txtUname.Text && item.UPassword == txtPassword.Text)
                {
                    Response.Redirect("~/FoodList.aspx");
                }
                else
                {
                    lblAuthUser.Text = "Please enter correct Username and Password";
                }
            }
        }
    }
}