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

public partial class NGO_frmUpdateProfile : System.Web.UI.Page
{
    clsNGORegistration objNGO = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetNGOProfileById();
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
    public void GetNGOProfileById()
    {
        objNGO = new clsNGORegistration();
        objNGO.NGOId = Convert.ToInt32(Session["NGOId"]);
        DataSet dsNGO = objNGO.GetNGOProfileById();
        if (dsNGO.Tables[0].Rows.Count > 0)
        {
            lblNGOId.Text = dsNGO.Tables[0].Rows[0]["NGOId"].ToString();
            txtFirstName.Text = dsNGO.Tables[0].Rows[0]["FName"].ToString();
            txtMiddleName.Text = dsNGO.Tables[0].Rows[0]["MName"].ToString();
            txtLastName.Text = dsNGO.Tables[0].Rows[0]["LName"].ToString();
            txtAddress.Text = dsNGO.Tables[0].Rows[0]["Address"].ToString();
            txtEmailId.Text = dsNGO.Tables[0].Rows[0]["EmailId"].ToString();
            txtPhone.Text = dsNGO.Tables[0].Rows[0]["PhoneNo"].ToString();
            txtWorking.Text = dsNGO.Tables[0].Rows[0]["Working"].ToString();
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            UpdateNGOOfficerProfile();
        }
        catch (Exception ex)
        {
            Page.RegisterClientScriptBlock("NGO", "<script>alert('" + ex.Message.ToString()+ "')</script>");
        }
    }
    public void UpdateNGOOfficerProfile()
    {
        objNGO = new clsNGORegistration();
        objNGO.NGOId = Convert.ToInt32(Session["NGOId"]);
        objNGO.FName = txtFirstName.Text;
        objNGO.MName = txtMiddleName.Text;
        objNGO.LName = txtLastName.Text;
        objNGO.Address = txtAddress.Text;
        objNGO.EmailId = txtEmailId.Text;
        objNGO.Working = txtWorking.Text;
        objNGO.PhoneNo = txtPhone.Text;
        objNGO.Qualification = ddlQualification.SelectedItem.Text;
        objNGO.Photo = (byte[])Session["Photo"];
        objNGO.ImageFile = Session["FileName"].ToString();
        int i = objNGO.UpdateNGOOfficerProfile();
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("NGO", "<script>alert('Profile Update')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("NGO", "<script>alert('Error Try Again')</script>");
        }

    }
}
