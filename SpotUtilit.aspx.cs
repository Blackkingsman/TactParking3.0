using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TactParking3._0
{
    public partial class SpotUtilit : System.Web.UI.Page
    {
        String userid;
        SqlConnection connection = new SqlConnection("Server=tcp:tactparking.database.windows.net,1433;Initial Catalog=TactParkingDb;Persist Security Info=False;User ID=TACTParking;Password=Admintact*;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER_ID"] != null)
            {
                userid = Request.QueryString["USER_ID"];
            }
            else
            {
                Response.Redirect("Webform1.aspx");
            }

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Update"))
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow selectedRow = GridView1.Rows[index];
                string id = selectedRow.Cells[0].Text; //assuming your ID is the first column of your grid.
                string dayid = selectedRow.Cells[1].Text;
                string hourid = selectedRow.Cells[3].Text;
                connection.Open();
               SqlDataSource1.UpdateCommand =  "update HourParkingSpot2 set reserved =0 ,userid=NULL where pid='"+id+"' and day_id='"+dayid+"' and timerange='"+hourid+"'";
                SqlDataSource1.Update();
                connection.Close();
                Label1.Visible = true;
            }
            if (e.CommandName.Equals("Directions"))
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow selectedRow = GridView1.Rows[index];
                string id = selectedRow.Cells[0].Text; //assuming your ID is the first column of your grid.
                string dayid = selectedRow.Cells[1].Text;
                string hourid = selectedRow.Cells[3].Text;
                connection.Open();
                SqlCommand getlong = new SqlCommand("select longitude from parkingspots where pid=" + id, connection);
                SqlCommand getlat = new SqlCommand("select latitude from parkingspots where pid=" + id, connection);
                var reader = getlong.ExecuteScalar();
                var readlat = getlat.ExecuteScalar();

                string longitude = reader.ToString();
                string latitude = readlat.ToString();

                Response.Redirect("https://maps.google.com/?q=" + longitude + "," + latitude);

            }
        }
    }
}