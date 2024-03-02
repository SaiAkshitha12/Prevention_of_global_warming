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

public partial class frmStateWisePopulationDetails : System.Web.UI.Page
{
    clsPopulation objPopulation = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int StateId = Convert.ToInt32(Request.QueryString["StateId"]);
            Session["StateId"] = StateId.ToString();
            objPopulation = new clsPopulation();
            objPopulation.StateId = StateId;
            DataSet dsPopulation = objPopulation.GetStateWisePopulationByStateId();
            if (dsPopulation.Tables[0].Rows.Count > 0)
            {
                GrvState.DataSource = dsPopulation.Tables[0];
                GrvState.DataBind();
                lblStateName.Text = dsPopulation.Tables[0].Rows[0]["StateName"].ToString();
            }
            GetCityNamesByStateId();
        }
    }
  
    public void GetCityNamesByStateId()
    {
        objPopulation = new clsPopulation();
        objPopulation.StateId = Convert.ToInt32(Session["StateId"]);
        DataSet dsPopulation = objPopulation.GetCityNamesByStaeId();
        if (dsPopulation.Tables[0].Rows.Count > 0)
        {
            GrvCity.DataSource = dsPopulation.Tables[0];
            GrvCity.DataBind();
        }
    }

    protected void GrvCity_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int CityId = Convert.ToInt32(e.CommandArgument.ToString());
        objPopulation = new clsPopulation();
        objPopulation.CityId = CityId;
        DataSet dsPopulation = objPopulation.GetCityDetailsById();
        if (dsPopulation.Tables[0].Rows.Count > 0)
        {
            GrvCityDetails .DataSource = dsPopulation.Tables[0];
            GrvCityDetails.DataBind();
        }

    }
}
