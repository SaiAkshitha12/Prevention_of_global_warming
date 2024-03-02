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

public partial class NGO_frmShowNewsLetterDetails : System.Web.UI.Page
{
    clsNewsLetters objNewsLetter = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string  NewsLetterId = Request.QueryString["NewsLetterId"];
            objNewsLetter = new clsNewsLetters();
            objNewsLetter.NewsLetterId =NewsLetterId;
            DataSet dsLetter = objNewsLetter.GetNewsLetterDetailsById();
            if (dsLetter.Tables[0].Rows.Count > 0)
            {
                BindImage1.LaodImageByte = (byte[])dsLetter.Tables[0].Rows[0]["NewsImage"];
                BindImage1.LoadFileName = dsLetter.Tables[0].Rows[0]["FileName"].ToString();
                lblVenue.Text = dsLetter.Tables[0].Rows[0]["Venue"].ToString();
                lblTitle.Text = dsLetter.Tables[0].Rows[0]["Title"].ToString();
                lblMonth.Text = dsLetter.Tables[0].Rows[0]["Month"].ToString();
                lblYear.Text = dsLetter.Tables[0].Rows[0]["Year"].ToString();
                lblConclusion.Text = dsLetter.Tables[0].Rows[0]["Conclusion"].ToString();

            }

        }
    }
}
