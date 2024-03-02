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

public partial class AgricultureOfficer_frmOfficersOutBox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {

                Getdata();
            }
        }
        catch (Exception ex)
        {

            lblMsg.Text = ex.Message;
        }
    }
    public void Getdata()
    {
        try
        {
            GridInboxdetails.DataSource = Cls_EmailMaster.ShowOutboxdetails(Convert.ToInt32(Session["NGOId"]));
            GridInboxdetails.DataBind();
            lblMsg.Text = "";
        }
        catch (Exception ex)
        {

            lblMsg.Text = ex.Message;
        }
    }
    protected void GridInboxdetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("~/NGO/frmNGOShowOutBoxDetails.aspx?id=" + id);

        }
        catch (Exception ex)
        {

            lblMsg.Text = ex.Message;
        }
    }
}
