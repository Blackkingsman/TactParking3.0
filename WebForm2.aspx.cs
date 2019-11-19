using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TactParking3._0
{
    public partial class WebForm2 : System.Web.UI.Page
    { string userid;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if(Session["USER_ID"] != null)
            {

            }
            if(Request.QueryString["UserId"] != null)
            {
                userid = Request.QueryString["UserId"];
                Console.WriteLine(userid);
            }
           
            
        }

        protected void btnReserve_Click(object sender, EventArgs e)
        {
            string longitude, latitude;
            using(SqlConnection connection = new SqlConnection("Server=tcp:tactparking.database.windows.net,1433;Initial Catalog=TactParkingDb;Persist Security Info=False;User ID=TACTParking;Password=Admintact*;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"))
            {
                SqlCommand command = new SqlCommand("update ParkingSpots set occupied ='1', userid = '"+ userid + "'where PID="+DropDownList1.SelectedValue, connection);
                command.Connection.Open();
                command.ExecuteNonQuery();
                SqlCommand getlong = new SqlCommand("select longitude from ParkingSpots where PID="+DropDownList1.SelectedValue, connection);
                SqlCommand getlat = new SqlCommand("select latitude from ParkingSpots where PID=" + DropDownList1.SelectedValue, connection);
                var reader = getlong.ExecuteScalar();
                var readlat = getlat.ExecuteScalar();
                longitude = reader.ToString();
                latitude = readlat.ToString();
                
                Response.Redirect("https://maps.google.com/?q=" + longitude+","+latitude);
            }


        }
    }
    
}