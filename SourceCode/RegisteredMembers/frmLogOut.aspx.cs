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

public partial class RegisteredMembers_frmLogOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnk1_Click(object sender, EventArgs e)
    {
        clsUserLogin.InActiveMemberOnlineStatus(Convert.ToInt32(Session["MemberId"]));
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/Default.aspx");
    }
}
