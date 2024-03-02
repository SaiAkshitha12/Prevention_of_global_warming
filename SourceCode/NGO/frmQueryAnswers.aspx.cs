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

public partial class NGO_frmQueryAnswers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            clsOnlineQueries objQueries = new clsOnlineQueries();
            DataSet ds = objQueries.GetOnlineQueryText();
            if (ds.Tables[0].Rows.Count > 0)
            {
                grvQuereis.DataSource = ds.Tables[0];
                grvQuereis.DataBind();
            }

        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {


        clsOnlineQueries objQueries = new clsOnlineQueries();
        objQueries.AnswerText = txtAnswerText.Text;
        objQueries.NGOId = Convert.ToInt32(Session["NGOId"]);
        objQueries.QueryId = Convert.ToInt32(Session["QueryId"]);
        int Flag = objQueries.InsetAnswersForQueries();
        if (Flag > 0)
        {
            Page.RegisterClientScriptBlock("Member", "<script>alert('Your Answer Submited')</script>");

        }
        else
        {
            Page.RegisterClientScriptBlock("Member", "<script>alert('Error Try Again')</script>");

        }

        Field1.Visible = false;
    }
    protected void grvQuereis_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Field1.Visible = true;
        Session["QueryId"] = Convert.ToInt32(e.CommandArgument.ToString());

    }
}
