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
        String DaySelected;
        SqlConnection connection = new SqlConnection("Server=tcp:tactparking.database.windows.net,1433;Initial Catalog=TactParkingDb;Persist Security Info=False;User ID=TACTParking;Password=Admintact*;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Session["PID"] != null)
            {
                pid = Session["PID"].ToString();
               // Label1.Text = pid;
            }
            if (Session["DayValue"] != null) DaySelected = Session["DayValue"].ToString();
            if (pid == "1") Image1.ImageUrl = Page.ResolveUrl("~/Images/ParkingSpot1.png");
            if (Session["USER_ID"] != null)
            {
               
                userid = Request.QueryString["UserId"];
                
            }
            else
            {
                Response.Redirect("Webform1.aspx");
            }
            connection.Open();
            
           
               
                System.Data.DataTable subjects = new System.Data.DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter("select hour_id,timerange from HourParkingSpot where pid ="+pid+" and reserved =0 and day_id="+DaySelected, connection);
                adapter.Fill(subjects);

                DropDownList1.DataSource = subjects;
                DropDownList1.DataTextField = "timerange";
                DropDownList1.DataValueField = "hour_id";
                DropDownList1.DataBind();
            
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string longitude, latitude;
            //using (sqlconnection connection = new sqlconnection("server=tcp:tactparking.database.windows.net,1433;initial catalog=tactparkingdb;persist security info=false;user id=tactparking;password=admintact*;multipleactiveresultsets=false;encrypt=true;trustservercertificate=false;connection timeout=30;"))
            //{
            //    connection.open();
            //    sqlcommand command = new sqlcommand("update parkingspots set occupied ='1', userid = '" + userid + "'where pid=" + dropdownlist1.selectedvalue, connection);
            //    command.connection.open();
            //    command.executenonquery();
            //    sqlcommand getlong = new sqlcommand("select longitude from parkingspots where pid=" + pid, connection);
            //    sqlcommand getlat = new sqlcommand("select latitude from parkingspots where pid=" + pid, connection);
            //    var reader = getlong.executescalar();
            //    var readlat = getlat.executescalar();

            //    longitude = reader.tostring();
            //    latitude = readlat.tostring();

            //    response.redirect("https://maps.google.com/?q=" + longitude + "," + latitude);
            //}
        }

        protected void btnReserve_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("update HourParkinSpot set reserved ='1', user_id="+userid+"where pid="+pid+"and hour_id="+DropDownList1.SelectedValue, connection);
        }
    }
}