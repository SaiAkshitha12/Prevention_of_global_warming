using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class NGO_frmLogOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        clsUserLogin.InActiveNGOOnlineStatus(Convert.ToInt32(Session["NGOId"]));
        Session.Abandon();
        Session.Clear();
        

        Response.Redirect("~/Default.aspx");
    }
}
