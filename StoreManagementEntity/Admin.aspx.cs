using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace StoreManagementEntity
{
    public partial class Admin : System.Web.UI.Page
    {
        Stock.Connection instance_Object = new Stock.Connection();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            if (UserName.Text.ToString().Equals("") && adminPassword.Value.ToString().Equals(""))
            {
                data.InnerHtml = "Fill the User Name and Password";
            }
            else {
                // redirect the page to the admin zone 
                DataTable tbl = new DataTable();
                // write the query  to search the record from the table
                String query = "select * from Admin where UsrName='"+UserName.Text.ToString()+"' and UsrPassword='"+adminPassword.Value.ToString()+"'";
                tbl = instance_Object.Srch(query);
                // check if the record is matched then redirect to another page
                if (tbl.Rows.Count>0) {
                    Response.Redirect("workingArea.aspx");
                }
                else {
                    data.InnerHtml = "Invalis User Name and Password";
                }

            }
        }
    }
}