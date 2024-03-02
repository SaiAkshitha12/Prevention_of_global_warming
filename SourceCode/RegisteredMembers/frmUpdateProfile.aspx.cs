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

public partial class RegisteredMembers_frmUpdateProfile : System.Web.UI.Page
{
    clsGroupMemberRegistration objMember = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetMemberProfileById();
            GetMemberPhoto();
            
        }
    }
    public void GetMemberPhoto()
    {
        clsUserLogin objLogin = null;        
            objLogin = new clsUserLogin();
            objLogin.GM_NGO_Id = Convert.ToInt32(Session["UID"]);
            DataSet ds = objLogin.GetUserImage();
            BindImage1.LaodImageByte = (byte[])ds.Tables[0].Rows[0]["Photo"];
            BindImage1.LoadFileName = ds.Tables[0].Rows[0]["ImageFile"].ToString();
      }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            UpdateMemberProfile();
        }
        catch (Exception ex)
        {
            Page.RegisterClientScriptBlock("NGO", "<script>alert('" + ex.Message.ToString() + "')</script>");
        }
    }
    public void GetMemberProfileById()
    {
        objMember = new clsGroupMemberRegistration();
        objMember.MemberId = Convert.ToInt32(Session["MemberId"]);
        DataSet dsMember = objMember.GetMemberProfileById();
        if (dsMember.Tables[0].Rows.Count > 0)
        {
            lblMemberId.Text = dsMember.Tables[0].Rows[0]["MemberId"].ToString();
            txtFirstName.Text = dsMember.Tables[0].Rows[0]["FName"].ToString();
            txtMiddleName.Text = dsMember.Tables[0].Rows[0]["MName"].ToString();
            txtLastName.Text = dsMember.Tables[0].Rows[0]["LName"].ToString();
            txtAddress.Text = dsMember.Tables[0].Rows[0]["Address"].ToString();
            txtEmailId.Text = dsMember.Tables[0].Rows[0]["EmailId"].ToString();
            txtPhone.Text = dsMember.Tables[0].Rows[0]["PhoneNo"].ToString();

        }
    }
    public void UpdateMemberProfile()
    {
        objMember = new clsGroupMemberRegistration();
        objMember.MemberId = Convert.ToInt32(Session["MemberId"]);
        objMember.FName = txtFirstName.Text.Trim();
        objMember.MName = txtMiddleName.Text.Trim();
        objMember.LName = txtLastName.Text.Trim();
        objMember.Address = txtAddress.Text;
        objMember.PhoneNo = txtPhone.Text.Trim();
        objMember.EmailId = txtEmailId.Text.Trim();
        objMember.Photo = (byte[])Session["Photo"];
        objMember.ImageFile = Session["FileName"].ToString();
        int i = objMember.UpdateMemberProfile();
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("Member", "<script>alert('Profile Updated')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("Member", "<script>alert('Bad Request')</script>");
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/RegisteredMembers/MemberHome.aspx");
        
    }
}