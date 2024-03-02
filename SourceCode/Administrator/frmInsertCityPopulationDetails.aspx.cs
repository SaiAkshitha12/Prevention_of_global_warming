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

public partial class Administrator_frmInsertCityPopulationDetails : System.Web.UI.Page
{
    clsPopulation objPopulation = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetStateNames();
        }
    }
    public void GetStateNames()
    {
        objPopulation = new clsPopulation();
        DataSet dsPopulation = objPopulation.GetStateNames();
        if (dsPopulation.Tables[0].Rows.Count > 0)
        {
            ddlStateName.DataTextField = "StateName";
            ddlStateName.DataValueField = "StateId";
            ddlStateName.DataSource = dsPopulation.Tables[0];
            ddlStateName.DataBind();
            ddlStateName.Items.Insert(0, "Select State");
        }
    }
    public void InsertCityDetails()
    {
        objPopulation = new clsPopulation();
        objPopulation.CityName = txtCityName.Text.Trim();
        objPopulation.CF1991 = txtCF1991.Text.Trim();
        objPopulation.CF2001 = txtCF1991.Text.Trim();
        objPopulation.StateId = Convert.ToInt32(ddlStateName.SelectedItem.Value);
        int i = objPopulation.InsertCityWisePopulation();
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("NGO", "<script>alert('City Population Submitted')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("NGO", "<script>alert('Error Try AGain')</script>");
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            InsertCityDetails();
        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message;
        }
    }
    protected void bntnClear_Click(object sender, EventArgs e)
    {
        txtCityName.Text = "";
        txtCF1991.Text = "";
        txtCF2001.Text = "";
        ddlStateName.SelectedIndex = 0;
    }
}
