using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
namespace Stock
{
    public class Connection
    {

        //global declaration of the variable 
        SqlConnection connection;
        String connection_String = "Data Source=DESKTOP-17CKR5L;Initial Catalog=Inventory;Integrated Security=True";
        SqlCommand command;
        SqlDataReader Datareader;

        //using the concept of oops define a single method that is used to insert delete and update the record in the table 
        public void IDUquery(String qry)
        {

            connection = new SqlConnection(connection_String);
            connection.Open();
            command = new SqlCommand(qry, connection);
            command.ExecuteNonQuery();
            connection.Close();
        }


        // user define method that is used to get the record from the table
        public DataTable Srch(String qry)
        {
            DataTable tbl = new DataTable();


            connection = new SqlConnection(connection_String);

            connection.Open();
            command = new SqlCommand(qry, connection);

            Datareader = command.ExecuteReader();

            tbl.Load(Datareader);

            connection.Close();

            return tbl;
        }

    }
}
