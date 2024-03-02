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

public partial class Students_frmStudentInbox : System.Web.UI.Page
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
    protected void GridInboxdetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    public void Getdata()
    {
        try
        {
            GridInboxdetails.DataSource = Cls_EmailMaster.ShowInboxdetails(Convert.ToInt32(Session["MemberId"]));
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
            Response.Redirect("~/RegisteredMembers/frmMemberShowInboxDetails.aspx?id=" + id);

        }
        catch (Exception ex)
        {

            lblMsg.Text = ex.Message;
        }
    }
}
