using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KitchenFood
{
    public partial class Add_food_List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListItem dlCat = new ListItem("Veg", "Veg");
            ListItem dlCat1 = new ListItem("Non-Veg", "Non-Veg");
            DD_Food_Cat.Items.Add(dlCat);
            DD_Food_Cat.Items.Add(dlCat1);

        }

        protected void btnFdAdd_Click(object sender, EventArgs e)
        {
            string FdName=txtFdName.Text.ToString();
            string FdIngre=txtFdIngre.Text.ToString();
            string FdCat=DD_Food_Cat.SelectedItem.ToString();
            int? FdPrice=Convert.ToInt32( txtFdPrice.Text);

            kitchenDBContext db=new kitchenDBContext();
            db.usp_Admin_insert_food(FdName, FdIngre, FdCat, FdPrice);
            db.SaveChanges();

            lblFdAddSuc.Text = "Successfully added food item in Food List";

        }
    }
}