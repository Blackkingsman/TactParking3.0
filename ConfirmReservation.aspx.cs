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
            if (pid == "1") Image1.ImageUrl = Page.ResolveUrl("~/Images2/1.jpg");
            if (pid == "2") Image1.ImageUrl = Page.ResolveUrl("~/Images2/2.jpg");
            if (pid == "3") Image1.ImageUrl = Page.ResolveUrl("~/Images2/3.jpg");
            if (pid == "4") Image1.ImageUrl = Page.ResolveUrl("~/Images2/4.jpg");
            if (pid == "5") Image1.ImageUrl = Page.ResolveUrl("~/Images2/5.jpg");
            if (pid == "6") Image1.ImageUrl = Page.ResolveUrl("~/Images2/6.jpg");
            if (pid == "7") Image1.ImageUrl = Page.ResolveUrl("~/Images2/7.jpg");
            if (pid == "8") Image1.ImageUrl = Page.ResolveUrl("~/Images2/8.jpg");
            if (pid == "9") Image1.ImageUrl = Page.ResolveUrl("~/Images2/9.jpg");
            if (pid == "10") Image1.ImageUrl = Page.ResolveUrl("~/Images2/10.jpg");
            if (pid == "11") Image1.ImageUrl = Page.ResolveUrl("~/Images2/11.jpg");
            if (pid == "12") Image1.ImageUrl = Page.ResolveUrl("~/Images2/12.jpg");
            if (pid == "13") Image1.ImageUrl = Page.ResolveUrl("~/Images2/13.jpg");
            if (pid == "14") Image1.ImageUrl = Page.ResolveUrl("~/Images2/14.jpg");
            if (pid == "15") Image1.ImageUrl = Page.ResolveUrl("~/Images2/15.jpg");
            if (pid == "16") Image1.ImageUrl = Page.ResolveUrl("~/Images2/16.jpg");
            if (Session["USER_ID"] != null)
            {

                userid = Session["USER_ID"].ToString();
                
            }
            else
            {
                Response.Redirect("Webform1.aspx");
            }
            connection.Open();
            
           
               
                //system.data.datatable subjects = new system.data.datatable();
                //sqldataadapter adapter = new sqldataadapter("select * from hourparkingspot where pid ="+pid+" and reserved =0 and day_id="+dayselected, connection);
                //adapter.fill(subjects);

                //dropdownlist1.datasource = subjects;
             
                //dropdownlist1.datatextfield = "timerange";
                //dropdownlist1.datavaluefield = "hour_id";
                //dropdownlist1.databind();
            
           

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
            

          //  Label1.Text = DropDownList1.SelectedValue;
            SqlCommand command = new SqlCommand("update HourParkingSpot2 set reserved ='1', userid='" + userid + "'where pid='" + pid + "'and hour_id='" + DropDownList1.SelectedValue + "' and day_id='"+DaySelected+"' and reserved = '0'", connection);
            command.ExecuteNonQuery();

            Response.Redirect(Request.RawUrl);
        }
    }
}