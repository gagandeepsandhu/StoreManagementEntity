using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StoreManagementEntity
{
    public partial class Purchase : System.Web.UI.Page
    {
        Stock.Connection instance_object = new Stock.Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void order_Click(object sender, EventArgs e)
        {
            if (PrdctCompany.Text.ToString().Equals("") && PrdctName.Text.ToString().Equals("") && PrdctPrice.Text.ToString().Equals("") && PrdctQty.Text.ToString().Equals("") && ProdctDate.Text.ToString().Equals(""))
            {
                data.InnerHtml = "Fill all the Values first";
            }
            else {
                String query = "insert into Purchase(Company,Product,Qty,Price,Date) values('"+PrdctCompany.Text.ToString()+"','"+PrdctName.Text.ToString()+"',"+Convert.ToInt32(PrdctQty.Text.ToString())+","+Convert.ToInt32(PrdctPrice.Text.ToString())+",'"+ProdctDate.Text.ToString()+"')";
                instance_object.IDUquery(query);
                data.InnerHtml = "Purchase Record is Saved";
            }

        }
    }
}