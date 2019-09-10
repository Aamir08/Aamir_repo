using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KitchenFood
{
    public partial class FoodCart : System.Web.UI.Page
    {
        kitchenDBContext db = new kitchenDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<tblCart> CartData = db.tblCarts.ToList();
            gvCart.DataSource = CartData;
            gvCart.DataBind();

            int? Total_Price = 0;

            foreach (tblCart item in CartData)
            {
                Total_Price += item.FPrice;
            }
            if (CartData.Count != 0)
            {
                lblTotal.Visible = true;
                btnConfirmPayment.Visible = true;
                lblTAmount.Text = Convert.ToString(Total_Price);
            }
            else
            {
                lblTAmount.Text = "You have not added any item in Cart";
            }

        }

        
        protected void btnConfirmPayment_Click(object sender, EventArgs e)
        {
            string UN = Session["UserName"].ToString();
            int Userid = 0;
            var UserLogged = db.tblUsers.Where(s => s.UName.Equals(UN)).ToList();

            foreach (var item in UserLogged)
            {
                Userid = item.Uid;
            }

            db.usp_OrderHistory(Userid);
            btnConfirmPayment.Visible = false;
            lblPayment.Text = "Your order is confirmed and Payment is successfull";
        }

        protected void btnOrderHistory_Click(object sender, EventArgs e)
        {
            btnConfirmPayment.Visible = false;
            string UN = Session["UserName"].ToString();
            int Userid = 0;
            var UserLogged = db.tblUsers.Where(s => s.UName.Equals(UN)).ToList();

            foreach (var item in UserLogged)
            {
                Userid = item.Uid;
            }
            List<tblOrderHistory> OrderH = db.tblOrderHistories.Where(s=>s.UserId==Userid).ToList();
            if (OrderH.Count != 0)
            {
                gvOrderHist.DataSource = OrderH;
                gvOrderHist.DataBind();
            }
            else
            {
                Response.Write("No ORDERS yet");
            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/FoodList.aspx");
        }
    }
}