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

public partial class frmDisplayStateWisePopulation : System.Web.UI.Page
{
    clsPopulation objPopulation = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            objPopulation = new clsPopulation();
            DataSet dsPopulation = objPopulation.GetStateNames();
            if (dsPopulation.Tables[0].Rows.Count > 0)
            {
                GrvState.DataSource = dsPopulation.Tables[0];
                GrvState.DataBind();
            }
        }
    }
    protected void GrvState_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int StateId = Convert.ToInt32(e.CommandArgument.ToString());
        Response.Redirect("~/frmStateWisePopulationDetails.aspx?StateId="+StateId );
    }
}
