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

public partial class frmRegMemberReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            clsReports objReport = new clsReports();
            DataSet ds = objReport.GetRegMemberReprot();
            if (ds.Tables[0].Rows.Count > 0)
            {
                grvMemberReport.DataSource = ds.Tables[0];
                grvMemberReport.DataBind();
            }
            else
            {
                grvMemberReport.EmptyDataText = "No Data Found";
                grvMemberReport.DataBind();
                    
            }
        }
    }
}
