using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class NGO_NGOMasterPage : System.Web.UI.MasterPage
{
    clsUserLogin objLogin = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["NGOId"] == null)
        {
            Response.Redirect("../Default.aspx");
        }
        //if (!IsPostBack)
        //{
        //    objLogin = new clsUserLogin();
        //    objLogin.GM_NGO_Id = Convert.ToInt32(Session["UID"]);
        //    DataSet ds = objLogin.GetUserImage();
        //    lblName.Text = "You are Logged With: " + ds.Tables[0].Rows[0]["FName"].ToString();
        //    lblName.Visible = true;
        //    BindImage1.LaodImageByte = (byte[])ds.Tables[0].Rows[0]["Photo"];
        //    BindImage1.LoadFileName = ds.Tables[0].Rows[0]["ImageFile"].ToString();
        //}
    }
}
