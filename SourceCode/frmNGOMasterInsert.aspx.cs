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

public partial class frmNGOMasterInsert : System.Web.UI.Page
{
    clsNGORegistration objNGO = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            InsertNGORegistration();
            btnClear_Click(sender, e);
        }
        catch (Exception ex)
        {
            Page.RegisterClientScriptBlock("Member", "<script>alert('" + ex.Message.ToString() + "')</script>");
        }
    }
    string Result;
    public void InsertNGORegistration()
    {
        objNGO = new clsNGORegistration();
        objNGO.FName = txtFirstName.Text.Trim();
        objNGO.MName = txtMiddleName.Text.Trim();
        objNGO.LName = txtLastName.Text.Trim();
        objNGO.DOB =Convert.ToDateTime( txtDOB.Text.Trim());
        objNGO.Address = txtAddress.Text;
        objNGO.EmailId = txtEmailId.Text.Trim();
        objNGO.PhoneNo = txtPhoneNo.Text.Trim();
        objNGO.UserName = txtUserName.Text.Trim();
        objNGO.Password = txtPassword.Text.Trim();
        objNGO.Qualification = ddlQualification.SelectedItem.Text;
        objNGO.Experience = txtExperience.Text.Trim();
        objNGO.Working = txtWorking.Text.Trim();
        objNGO.Photo=(byte[])Session["Photo"];
        objNGO.ImageFile=Session["FileName"].ToString ();
       int i= objNGO.InsertNGODetails(out Result);
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("NGO", "<script>alert('" + Result + "')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("NGO", "<script>alert('" + Result + "')</script>");
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
        txtWorking.Text = "";
        txtExperience.Text = "";
        Session["Photo"] = null;
        Session["FileName"] = null;

    }
}
