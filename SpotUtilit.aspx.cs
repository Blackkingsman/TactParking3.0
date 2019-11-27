using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TactParking3._0
{
    public partial class SpotUtilit : System.Web.UI.Page
    {
        String userid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER_ID"] != null)
            {
                userid = Request.QueryString["UserId"];
            }
            else
            {
                Response.Redirect("Webform1.aspx");
            }

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }
    }
}