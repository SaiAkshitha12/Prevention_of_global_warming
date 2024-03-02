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

public partial class Administrator_frmInsertToxicSubstanceDetails : System.Web.UI.Page
{
    clsToxicSubstances objToxic = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            objToxic = new clsToxicSubstances();
            DataSet dsToxic = objToxic.GetToxicSubstaceTypeName();
            if (dsToxic.Tables[0].Rows.Count > 0)
            {
                RBListSubstaces.DataTextField = "ToxicType";
                RBListSubstaces.DataValueField = "ToxicTypeId";
                RBListSubstaces.DataSource = dsToxic.Tables[0];
                RBListSubstaces.DataBind();
            }
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            objToxic = new clsToxicSubstances();
            objToxic.NameOfSubstance = txtSubStanceName.Text.Trim();
            objToxic.Quantity = txtQuantity.Text.Trim();
            objToxic.CASNo = txtCASNo.Text.Trim();
            objToxic.ToxicSubstanceTypeId = RBListSubstaces.SelectedItem.Value;
            int i = objToxic.InsertToxicSubstanceDetails();
            if (i > 0)
            {
                Page.RegisterClientScriptBlock("Member", "<script>alert('Substance Details Inserted')</script>");
            }
            else
            {
                Page.RegisterClientScriptBlock("Member", "<script>alert('Error Try Again')</script>");
            }
        }
        catch (Exception ex)
        {
            lblMsg.Visible = true;
            lblMsg.Text = ex.Message.ToString();
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtCASNo.Text = "";
        txtQuantity.Text = "";
        txtSubStanceName.Text = "";
        txtSubStanceName.Focus();
    }
}
