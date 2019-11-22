using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace TactParking3._0
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        String userid;
        String pid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["PID"] != null)
            {
                pid = Session["PID"].ToString();
               // Label1.Text = pid;
            }
            if (Session["USER_ID"] != null)
            {
               
                userid = Request.QueryString["UserId"];
                
            }
            else
            {
                Response.Redirect("Webform1.aspx");
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string longitude, latitude;
            using (SqlConnection connection = new SqlConnection("Server=tcp:tactparking.database.windows.net,1433;Initial Catalog=TactParkingDb;Persist Security Info=False;User ID=TACTParking;Password=Admintact*;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"))
            {
                connection.Open();
                //SqlCommand command = new SqlCommand("update ParkingSpots set occupied ='1', userid = '"+ userid + "'where PID="+DropDownList1.SelectedValue, connection);
                //command.Connection.Open();
                //command.ExecuteNonQuery();
                SqlCommand getlong = new SqlCommand("select longitude from ParkingSpots where PID=" + pid, connection);
                SqlCommand getlat = new SqlCommand("select latitude from ParkingSpots where PID=" + pid, connection);
                var reader = getlong.ExecuteScalar();
                var readlat = getlat.ExecuteScalar();

                longitude = reader.ToString();
                latitude = readlat.ToString();

               Response.Redirect("https://maps.google.com/?q=" + longitude+","+latitude);
            }
        }
    }
}