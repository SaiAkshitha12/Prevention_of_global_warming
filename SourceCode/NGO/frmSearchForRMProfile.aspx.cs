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

public partial class NGO_frmSearchForRMProfile : System.Web.UI.Page
{
    clsGroupMemberRegistration objGM = null;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            objGM = new clsGroupMemberRegistration();
            DataSet dsGM = objGM.GetMemberNames();
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
        objLogin.GM_NGO_Id = Convert.ToInt32(Session["MemberId"]);
        DataSet ds = objLogin.GetUserImage();
        BindImage1.LaodImageByte = (byte[])ds.Tables[0].Rows[0]["Photo"];
        BindImage1.LoadFileName = ds.Tables[0].Rows[0]["ImageFile"].ToString();
        BindImage1.LoadImage();
    }
    public void GetMemberProfileById()
    {
        objGM = new clsGroupMemberRegistration();
        objGM.MemberId = Convert.ToInt32(Session["MemberId"]);
        DataSet dsNGO = objGM.GetMemberProfileById();
        if (dsNGO.Tables[0].Rows.Count > 0)
        {
            
            txtFirstName.Text = dsNGO.Tables[0].Rows[0]["FName"].ToString();
            txtMiddleName.Text = dsNGO.Tables[0].Rows[0]["MName"].ToString();
            txtLastName.Text = dsNGO.Tables[0].Rows[0]["LName"].ToString();
            txtAddress.Text = dsNGO.Tables[0].Rows[0]["Address"].ToString();
            txtEmailId.Text = dsNGO.Tables[0].Rows[0]["EmailId"].ToString();
            txtPhone.Text = dsNGO.Tables[0].Rows[0]["PhoneNo"].ToString();
            txtQualification.Text = dsNGO.Tables[0].Rows[0]["Qualification"].ToString();
          
        }
    }
    protected void DListGM_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["MemberId"] = e.CommandArgument.ToString();
        Field2.Visible = true;
        Field3.Visible = true;
        Feild1.Visible = true;
        Field4.Visible = true;
        GetMemberPhoto();
        GetMemberProfileById();

    }
}
