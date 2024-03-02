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

public partial class NGO_frmBrowseNewsStories : System.Web.UI.Page
{
    clsNewsLetters objNewsLetter = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetNewsletterTitles();
        }
    }
    public void GetNewsletterTitles()
    {
        objNewsLetter = new clsNewsLetters();
        objNewsLetter.UserId = Convert.ToInt32(Session["UserLoginId"]);
        DataSet dsNewsLetter = objNewsLetter.GetNewsLetterTitle();
        if (dsNewsLetter.Tables[0].Rows.Count > 0)
        {
            GRVNewsLetter.DataSource = dsNewsLetter.Tables[0];
            GRVNewsLetter.DataBind();
        }

    }
    protected void GRVNewsLetter_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "NewsLetterId")
        {
            string  NewsLetterId = e.CommandArgument.ToString ();
            Response.Redirect("~/NGO/frmShowNewsLetterDetails.aspx?NewsLetterId="+NewsLetterId );
            
        }
    }
}
