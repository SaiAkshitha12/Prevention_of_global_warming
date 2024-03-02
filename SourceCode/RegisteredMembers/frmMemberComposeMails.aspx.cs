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

public partial class Students_frmStudentComposeMails : System.Web.UI.Page
{
    Cls_EmailMaster objEmailmaster = new Cls_EmailMaster();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                GetNGOMailId();
            }
        }
        catch (Exception ex)
        {

            lblMsg.Text = ex.Message;
        }
    }




    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (ddlOfficerMailId.SelectedIndex != 0)
            {
                string str = "";
                System.Text.ASCIIEncoding encoding = new System.Text.ASCIIEncoding();
                byte[] data = encoding.GetBytes(str);
                objEmailmaster.EmailSenderId = Convert.ToInt32(Session["MemberId"]);
                objEmailmaster.EMailBodyMsg = txtbody.Text;
                objEmailmaster.EmailSubjectText = txtsubject.Text;
                objEmailmaster.EmailReciptedId = Convert.ToInt32(ddlOfficerMailId.SelectedValue);
                if (Session["FileName"] != null && Session["FileContent"] != null)
                {
                    objEmailmaster.EmailAttachFileName = Convert.ToString(Session["FileName"]);
                    objEmailmaster.EmailAttachFileContent = (byte[])Session["FileContent"];
                }
                else
                {
                    objEmailmaster.EmailAttachFileName = "No FIle";
                    objEmailmaster.EmailAttachFileContent = data;
                }
                int i = objEmailmaster.InsertEmailMaster();
                if (i > 0)
                {
                    ClearData();
                    lblMsg.Text = "Your message has been sent.";
                }
                else
                {
                    lblMsg.Text = "Message Failed..";
                }
            }
            else
            {
                Page.RegisterClientScriptBlock("Student", "<script>Alert('Select To EmailId')</script>");
            }
        }
        catch (Exception ex)
        {

            lblMsg.Text = ex.Message;
        }

    }
    public void ClearData()
    {
        Session["FileName"] = null;
        Session["FileContent"] = null;
        txtsubject.Text = "";
        txtbody.Text = "";
        if (ddlOfficerMailId.SelectedIndex != 0)
            ddlOfficerMailId.SelectedIndex = 0;
        lblMsg.Text = "";
    }
    public void GetNGOMailId()
    {
        DataSet dsOfficerMails = Cls_EmailMaster.ShowNGOEmails();
        if (dsOfficerMails.Tables[0].Rows.Count > 0)
        {
            ddlOfficerMailId.DataTextField = "UserName";
            ddlOfficerMailId.DataValueField = "GM_NGO_Id";
            ddlOfficerMailId.DataSource = dsOfficerMails.Tables[0];
            ddlOfficerMailId.DataBind();
            ddlOfficerMailId.Items.Insert(0, "Select Valid NGO MailId");
        }
    }

}

