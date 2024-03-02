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

public partial class RegisteredMembers_frmSearchForNGOProfile : System.Web.UI.Page
{
    clsNGORegistration objNGO = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            objNGO = new clsNGORegistration();
            DataSet dsGM = objNGO.GetNGONames();
            if (dsGM.Tables[0].Rows.Count > 0)
            {
                DListGM.DataSource = dsGM.Tables[0];
                DListGM.DataBind();
            }
        }
    }

    public void GetMemberPhoto()
    {
        clsUserLogin objLogin = null;
        objLogin = new clsUserLogin();
        objLogin.GM_NGO_Id = Convert.ToInt32(Session["NGOId"]);
        DataSet ds = objLogin.GetUserImage();
        BindImage1.LaodImageByte = (byte[])ds.Tables[0].Rows[0]["Photo"];
        BindImage1.LoadFileName = ds.Tables[0].Rows[0]["ImageFile"].ToString();
        BindImage1.LoadImage();
    }
    public void GetMemberProfileById()
    {
        objNGO = new clsNGORegistration();
        objNGO.NGOId = Convert.ToInt32(Session["NGOId"]);
        DataSet dsNGO = objNGO.GetNGOProfileById();
        if (dsNGO.Tables[0].Rows.Count > 0)
        {

            txtFirstName.Text = dsNGO.Tables[0].Rows[0]["FName"].ToString();
            txtMiddleName.Text = dsNGO.Tables[0].Rows[0]["MName"].ToString();
            txtLastName.Text = dsNGO.Tables[0].Rows[0]["LName"].ToString();
            txtAddress.Text = dsNGO.Tables[0].Rows[0]["Address"].ToString();
            txtEmailId.Text = dsNGO.Tables[0].Rows[0]["EmailId"].ToString();
            txtPhone.Text = dsNGO.Tables[0].Rows[0]["PhoneNo"].ToString();
            txtQualification.Text = dsNGO.Tables[0].Rows[0]["Qualification"].ToString();
            txtWorking.Text = dsNGO.Tables[0].Rows[0]["Working"].ToString();
            BindImage1.LaodImageByte = (byte[])dsNGO.Tables[0].Rows[0]["Photo"];
            BindImage1.LoadFileName = dsNGO.Tables[0].Rows[0]["ImageFile"].ToString();
            

        }
    }
    protected void DListGM_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["NGOId"] = e.CommandArgument.ToString();
        Field2.Visible = true;
        Field3.Visible = true;
        Feild1.Visible = true;
        Field4.Visible = true;
        GetMemberPhoto();
        GetMemberProfileById();

    }
}
