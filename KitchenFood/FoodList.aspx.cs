using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KitchenFood
{
    public partial class FoodList : System.Web.UI.Page
    {
     
        kitchenDBContext db = new kitchenDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
           lblUserName.Text=Session["UserName"].ToString();
                
                if (!IsPostBack)
                {
                    List<tblCart> Cart = db.tblCarts.ToList();
                    foreach (tblCart item in Cart)
                    {
                        db.tblCarts.Remove(item);
                    }
                    db.SaveChanges();
                }
            
        }
        protected void btnVeg_Click(object sender, EventArgs e)
        {
            List<tblFoodList> FoodL = db.tblFoodLists.ToList();
            var VegFL = FoodL.Where(s => s.FoodCategory.Equals("Veg"));
            gdFoodList.DataSource = VegFL;
            gdFoodList.DataBind();
            
            lbFoodList.Items.Clear();
            
            foreach (var item in VegFL)
                {
                    lbFoodList.Visible = true;
                    lbFoodList.Items.Add(item.FoodName);
                }
            }
        protected void btnNonveg_Click(object sender, EventArgs e)
        {
            List<tblFoodList> FoodL = db.tblFoodLists.ToList();
            var NVegFL = FoodL.Where(s => s.FoodCategory.Equals("Non-Veg"));
            gdFoodList.DataSource = NVegFL;
            gdFoodList.DataBind();

            lbFoodList.Items.Clear();
           
                foreach (var item in NVegFL)
                {
                    lbFoodList.Visible = true;
                    lbFoodList.Items.Add(item.FoodName);
                }
            }
        

        protected void btnFoodList_Click(object sender, EventArgs e)
        {
            List<tblFoodList> FoodL = db.tblFoodLists.ToList();

            gdFoodList.DataSource = FoodL;
            gdFoodList.DataBind();
            
            foreach (var item in FoodL)
                {
                    lbFoodList.Visible = true;
                    lbFoodList.Items.Add(item.FoodName);
                }
        }
        

        protected void btnCart_Click(object sender, EventArgs e)
        {
                string CartItem = Convert.ToString(lbFoodList.SelectedItem);
                if (CartItem.Length != 0)
                {
                    int quantity = Convert.ToInt32(txtQuantity.Text);
                    int? price = 0;

                    //To take price from foodlist table
                    List<tblFoodList> FoodPrice = db.tblFoodLists.ToList();

                    foreach (var item in FoodPrice)
                    {
                        if (item.FoodName == CartItem)
                        {
                            price = item.FoodPrice * quantity;
                        }

                    }
                    //To insert data in cart
                    tblCart CartList = new tblCart() { FoodName = CartItem, FQuantity = quantity, FPrice = price };

                    db.tblCarts.Add(CartList);
                    db.SaveChanges();
                }
        }

        protected void btnViewCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/FoodCart.aspx");
        }

    }
}
