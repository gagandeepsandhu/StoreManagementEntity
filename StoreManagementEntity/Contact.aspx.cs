using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StoreManagementEntity
{
    public partial class Contact : Page
    {
        Stock.Connection instance_Object = new Stock.Connection();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Send_Click(object sender, EventArgs e)
        {
            if (Name.Text.ToString().Equals("") && Email.Text.ToString().Equals("") && msg.Value.ToString().Equals(""))
            {
                data.InnerHtml = "Fill all the information";
            }
            else {
                string query = "insert into contact(Name,Email,Msg)values('"+Name.Text.ToString()+"','"+Email.Text.ToString()+"','"+msg.Value.ToString()+"')";
                instance_Object.IDUquery(query);
                data.InnerHtml = "We will solve your issue as soon as possible ";
            }


        }
    }
}