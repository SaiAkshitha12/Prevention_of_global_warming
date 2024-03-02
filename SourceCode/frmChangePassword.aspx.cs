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

public partial class frmChangePassword : System.Web.UI.Page
{
    clsUserLogin objUser = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            objUser = new clsUserLogin();
            objUser.UserName = txtUserName.Text.Trim();
            objUser.Password = txtPassword.Text.Trim();
            objUser.NewPassword = txtNewPassword.Text.Trim();
            int Result = objUser.ChangePassword();
            if (Result == 1)
            {
                Page.RegisterClientScriptBlock("Member", "<script>alert('Your Password Changed to:" + objUser.Password + "')</script>");
            }
            else if (Result == 2)
            {
                Page.RegisterClientScriptBlock("Member", "<script>alert('Old Password and New Password Should Be Different')</script>");
            }
            else
            {
                Page.RegisterClientScriptBlock("Member", "<script>alert('Wrong UserName/Password')</script>");
            }
        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message.ToString();
        }
    }
}
