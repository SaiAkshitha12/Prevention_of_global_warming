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

public partial class Administrator_frmInsertPopulationDetails : System.Web.UI.Page
{
    clsPopulation objPopulation = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            objPopulation = new clsPopulation();
            objPopulation.StateName = txtStateName.Text.Trim();
            objPopulation.Abbreviation = txtAbbr.Text.Trim();
            objPopulation.Status = ddlStaus.SelectedItem.Text;
            objPopulation.Capital = txtCapital.Text.Trim();
            objPopulation.Area = txtArea.Text.Trim();
            objPopulation.CF1981 = txtCF1981.Text.Trim();
            objPopulation.CF1991 = txtCF1991.Text.Trim();
            objPopulation.CF2001 = txtCF2001.Text.Trim();
            int i = objPopulation.InsertStateWisePopulation();
            if (i > 0)
            {
                Page.RegisterClientScriptBlock("NGO", "<script>alert('Population Details Uploaded')</script>");
            }
            else
            {
                Page.RegisterClientScriptBlock("NGO", "<script>alert('Error Try AGain')</script>");
            }


        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message;
        }

    }
    protected void bntnClear_Click(object sender, EventArgs e)
    {
        txtStateName.Text = "";
        txtAbbr.Text = "";
        ddlStaus.SelectedIndex = 0;
        txtCapital.Text = "";
        txtArea.Text = "";
        txtCF1981.Text = "";
        txtCF1991.Text = "";
        txtCF2001.Text = "";
        txtStateName.Focus();
    }
}
