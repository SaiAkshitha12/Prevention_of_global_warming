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

public partial class frmPublishNews : System.Web.UI.Page
{
    clsNews objNews = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetNewsTopics();
        }
    }
    public void GetNewsTopics()
    {
        objNews = new clsNews();
        DataSet dsNews = objNews.GetNewsTopics();
        if (dsNews.Tables[0].Rows.Count > 0)
        {
            GrvLatestNews.DataSource = dsNews.Tables[0];
            GrvLatestNews.DataBind();
        }
    }

    protected void GrvLatestNews_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "NewsId")
        {
            int NewsId = Convert.ToInt32(e.CommandArgument.ToString());
            objNews = new clsNews();
            objNews.NewsId = NewsId;
            DataSet dsNews = objNews.GetNewsDetailsById();
            if (dsNews.Tables[0].Rows.Count > 0)
            {
                Field2.Visible = true;
                BindImage1.LaodImageByte = (byte[])dsNews.Tables[0].Rows[0][4];
                BindImage1.LoadFileName = dsNews.Tables[0].Rows[0][5].ToString();
                BindImage1.BindMyImage();
                lblTopic.Text = dsNews.Tables[0].Rows[0]["Topic"].ToString();
                lblNewsContent.Text = dsNews.Tables[0].Rows[0]["NewsContent"].ToString();
                lnkLink.Text = dsNews.Tables[0].Rows[0]["NewsLink"].ToString();
                lblDate.Text = dsNews.Tables[0].Rows[0]["PostedDate"].ToString();

            }
        }
    }
}
