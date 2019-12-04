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
    { string Userid;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if(Session["USER_ID"] != null)
            {
               Userid = Request.QueryString["USER_ID"];
            }
            else
            {
                Response.Redirect("Webform1.aspx");
            }
           
            
        }

        protected void btnReserve_Click(object sender, EventArgs e)

        {
            Session["PID"] = DropDownList1.SelectedValue.ToString();
            Session["DayValue"] = DropDownList2.SelectedValue;
            //Session["USER_ID"] = Userid;
            Response.Redirect("ConfirmReservation.aspx");
           


        }
    }
    
}