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

public partial class Administrator_frmUserLogin : System.Web.UI.Page
{
    clsUserLogin objLogin = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtUserName.Focus();
        }
        
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        VerifyUserLogin();
    }


    public void VerifyUserLogin()
    {
        objLogin = new clsUserLogin();
        objLogin.UserName = txtUserName.Text.Trim();
        objLogin.Password = txtPassword.Text.Trim();
        int flag = objLogin.CheckLogin();
        if (flag == 0)
        {
            objLogin.GM_NGO_Id = Convert.ToInt32(objLogin.GM_NGO_Id);
            Session["UID"] = objLogin.GM_NGO_Id.ToString();
            int LoginUseId = objLogin.GetUserLoginId();
            Session["UserLoginId"] = LoginUseId.ToString();
            Session["UserName"] = objLogin.UserName.ToString();
            if (objLogin.Role == "NGO")
            {

                Session["NGOId"] = objLogin.GM_NGO_Id.ToString();
                Session["UserType"] = "NGO";
               clsUserLogin.ActiveNGOOnlineStatus(Convert.ToInt32(Session["NGOId"]));
                Response.Redirect("~/NGO/NGOHome.aspx");
            }
            else if (objLogin.Role == "GMember")
            {
                Session["MemberId"] = objLogin.GM_NGO_Id.ToString();
                Session["UserType"] = "GMember";
               clsUserLogin.ActiveMemberOnlineStatus(Convert.ToInt32(Session["MemberId"]));
                Response.Redirect("~/RegisteredMembers/MemberHome.aspx");

            }
            else
            {
                Response.Redirect("~/Administrator/AdminHome.aspx");
            }
        }
        else if (flag == 1)//User Name Wrong
        {
            Page.RegisterClientScriptBlock("GlobalWarming", "<script>alert('User Name Wrong')</script>");
        }
        else//Password Wrong
        {
            Page.RegisterClientScriptBlock("GlobalWarming", "<script>alert('Password Wrong')</script>");
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtUserName.Text = "";
        txtPassword.Text = "";
        txtUserName.Focus();
    }
   
}
