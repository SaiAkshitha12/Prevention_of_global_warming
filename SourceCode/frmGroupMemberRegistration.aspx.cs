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

public partial class frmGroupMemberRegistration : System.Web.UI.Page
{
    clsGroupMemberRegistration objMember = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    string  Result;
    public void InsertMemberRegistration()
    {
        objMember = new clsGroupMemberRegistration();
        objMember.FName = txtFirstName.Text.Trim();
        objMember.MName = txtMiddleName.Text.Trim();
        objMember.LName = txtLastName.Text.Trim();
        objMember.DOB =Convert.ToDateTime( txtDOB.Text.Trim());
        objMember.Address = txtAddress.Text;
        objMember.EmailId = txtEmailId.Text.Trim();
        objMember.PhoneNo = txtPhoneNo.Text.Trim();
        objMember.Photo = (byte[])Session["Photo"];
        objMember.ImageFile = Session["FileName"].ToString();
        objMember.UserName = txtUserName.Text.Trim();
        objMember.Password = txtPassword.Text;
        objMember.Qualification = ddlQualification.SelectedItem.Text;
        int i = objMember.InsertMemberDetails(out Result);
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("Member", "<script>alert('" + Result + "')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("Member", "<script>alert('" + Result + "')</script>");
        }
    }
    protected void btnSubmit_Click1(object sender, EventArgs e)
    {
        try
        {
            InsertMemberRegistration();
            btnClear_Click(sender, e);
        }
        catch (Exception ex)
        {
            Page.RegisterClientScriptBlock("Member", "<script>alert('" + ex.Message.ToString() + "')</script>");
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtMiddleName.Text = "";
        txtDOB.Text = "";
        txtEmailId.Text = "";
        ddlQualification.SelectedIndex = 0;
        ddlHintQuestion.SelectedIndex = 0;
        txtPhoneNo.Text = "";
        txtUserName.Text = "";
        txtPassword.Text = "";
        txtAddress.Text = "";
        txtAnswer.Text = "";
        Session["Photo"] = null;
        Session["FileName"] = null;

    }
}
