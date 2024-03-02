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

public partial class frmUploadQueries : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        clsOnlineQueries objQuery = new clsOnlineQueries();
        objQuery.QueryText = txtQueryText.Text;
        objQuery.FName = txtName.Text;
        objQuery.DateOfSend = Convert.ToDateTime(txtDate.Text);
        int Flag = objQuery.InsetOnlineQueries();
        if (Flag > 0)
        {
            Page.RegisterClientScriptBlock("Member", "<script>alert('Query Details Submited')</script>");
            txtDate.Text = "";
            txtQueryText.Text = "";
            txtName.Text = "";
            txtQueryText.Focus();
        }
        else
        {
            Page.RegisterClientScriptBlock("Member", "<script>alert('Error Try Again')</script>");
            txtDate.Text = "";
            txtQueryText.Text = "";
            txtName.Text = "";
            txtQueryText.Focus();
        }
    }
}
