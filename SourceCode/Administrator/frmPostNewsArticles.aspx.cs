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

public partial class Administrator_frmPostNewsArticles : System.Web.UI.Page
{
    clsNews objNews = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        field2.Visible = true;
        objNews  = new clsNews();
        DataSet dsNews = objNews.GetNewsTypeNames();
        if (dsNews.Tables[0].Rows.Count > 0)
        {
            ddlNewsType.DataTextField = "TypeName";
            ddlNewsType.DataValueField = "NewsTypeId";
            ddlNewsType.DataSource = dsNews.Tables[0];
            ddlNewsType.DataBind();
            ddlNewsType.Items.Insert(0, "Select News Types");
        }

    }
    public void InsertNewsTypes()
    {
        objNews = new clsNews();
        objNews.NewsTypeName = txtNewsType.Text;
        objNews.Description = txtDescription.Text;
        int i = objNews.InsertNewsTypeDetails();
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("NGO", "<script>alert('News Type Submitted')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("NGO", "<script>alert('Error Try AGain')</script>");
        }

    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        try
        {
            InsertNewsTypes();
            txtNewsType.Text = "";
            txtDescription.Text = "";
            txtNewsType.Focus();
        }
        catch (Exception ex)
        {
            Page.RegisterClientScriptBlock("NGO", "<script>alert('"+ ex.Message.ToString ()+"')</script>");
        }
    }
    public void InsertNewsDetails()
    {
        objNews = new clsNews();
        objNews.Topic = txtTopic.Text;
        objNews.NewsContent = txtNewsContent.Text;
        objNews.NewsLinks = txtNewsLinks.Text;
        objNews.NewImage =(byte[])Session["Photo"];
        objNews.FileName =Session["FileName"].ToString ();
        objNews.PostedDate = Convert.ToDateTime(txtDate.Text.Trim());
        objNews.NewsTypeId = ddlNewsType.SelectedItem.Value;
        objNews.NewsRelatedLinks = txtRelatedLinks.Text.Trim();
        int i = objNews.InsertNewsDetails();
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("NGO", "<script>alert('News Details Submitted')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("NGO", "<script>alert('Error Try AGain')</script>");
        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        InsertNewsDetails();
        btnClear_Click(sender, e);
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtTopic.Text = "";
        txtNewsContent.Text = "";
        txtNewsLinks.Text  = "";
        Session["Photo"] = null;
        Session["FileName"] = null;
        txtDate.Text = "";
        ddlNewsType.SelectedIndex = 0;
        txtRelatedLinks.Text = "";
        txtTopic.Focus();
    }
}
