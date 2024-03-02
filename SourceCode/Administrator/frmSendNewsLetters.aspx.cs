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

public partial class Administrator_frmSendNewsLetters : System.Web.UI.Page
{
    clsUserLogin objUser = null;
    clsNewsLetters objNewsLetters = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                GetUsernames();
            }
            catch (Exception ex)
            {
                lblMsg.Visible = true;
                lblMsg.Text = ex.Message.ToString();
            }
        }
    }
    public void GetUsernames()
    {
        objUser = new clsUserLogin();
        DataSet DsUser = objUser.GetUserId();
        if (DsUser.Tables[0].Rows.Count > 0)
        {
            ChkUsers.DataTextField = "UserName";
            ChkUsers.DataValueField = "UserId";
            ChkUsers.DataSource = DsUser.Tables[0];
            ChkUsers.DataBind();
        }

    }
    public void InsertNewsLetterDetails()
    {
        objNewsLetters = new clsNewsLetters();
        objNewsLetters.Title = txtTitle.Text;
        objNewsLetters.Topic = txtTopic.Text;
        objNewsLetters.Venue = txtVenue.Text;
        objNewsLetters.Conclusion = txtConclusion.Text;
        objNewsLetters.NewsImage = (byte[])Session["Photo"];
        objNewsLetters.FileName = Session["FileName"].ToString();
        int i = objNewsLetters.InsertNewsLetterDetails();
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("Admin", "<script>alert('News Letter Uploaded')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("Adin", "<script>alert('Error Occur, Try Again!')</script>");
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            InsertNewsLetterDetails();
            SendNewsLettersToUsers();
        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message.ToString();
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtTitle.Text = "";
        txtTopic.Text = "";
        txtVenue.Text = "";
        txtConclusion.Text = "";
        Session["Photo"] = null;
        Session["FileName"] = null;
        txtTitle.Focus();
        for (int i = 0; i < ChkUsers.Items.Count; i++)
        {
            ChkUsers.Items[i].Selected = false;
        }
    }
    public void SendNewsLettersToUsers()
    {
        for (int i = 0; i < ChkUsers.Items.Count; i++)
        {
            if (ChkUsers.Items[i].Selected == true)
            {
                int Id = Convert.ToInt32(ChkUsers.Items[i].Value);
                objNewsLetters = new clsNewsLetters();
                objNewsLetters.UserId = Id;
                objNewsLetters.SendNewsLettersToUsers();

            }
        }

    }

}
