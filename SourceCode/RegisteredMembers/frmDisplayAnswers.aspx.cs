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

public partial class frmDisplayAnswers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            clsOnlineQueries objQuery = new clsOnlineQueries();
            DataSet ds=objQuery.GetQueryAnswers ();
            if(ds.Tables[0].Rows.Count >0)
            {
                GRVSuggestions.DataSource=ds.Tables[0];
                GRVSuggestions.DataBind ();
            }
            else
            {
                GRVSuggestions.EmptyDataText="No Queries Found";
                GRVSuggestions.DataBind ();
            }
        }

    }
}
