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
        kitchenDBContext db = new kitchenDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
           
            List<tblUser> UserList = db.tblUsers.ToList();

            Session["UserName"]=txtUname.Text;
            
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

        protected void btn_Admin_Click(object sender, EventArgs e)
        {
            if ((txtUname.Text.ToString()).Equals("Admin"))
            {
                List<tblUser> UserList = db.tblUsers.ToList();

                Session["UserName"] = txtUname.Text;

                foreach (var item in UserList)
                {
                    if (item.UName == txtUname.Text && item.UPassword == txtPassword.Text)
                    {

                        Response.Redirect("~/Add_food_List.aspx");


                    }
                    else
                    {
                        lblAuthUser.Text = "Please enter correct Username and Password";
                    }
                }
            }
            else
            {
                lblAuthUser.Text = "You are not Authorised";
            }
            
        }
    }
}