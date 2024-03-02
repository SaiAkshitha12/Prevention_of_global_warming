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

public partial class Administrator_frmAddToxicSubstancesTypes : System.Web.UI.Page
{
    clsToxicSubstances objToxic = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            objToxic = new clsToxicSubstances();
            objToxic.ToxicSubstanceTypeName = txtSubstanceType.Text.Trim();
            objToxic.Description = txtDescription.Text;
            int i = objToxic.InsertToxicSubstancesTypes();
            if (i > 0)
            {
                Page.RegisterClientScriptBlock("Admin", "<script>alert('Toxic Substance Inserted')</script>");
            }
            else
            {
                Page.RegisterClientScriptBlock("Admin", "<script>alert('Error Try Again!')</script>");
            }
        }
        catch (Exception ex)
        {
            Page.RegisterClientScriptBlock("Admin", "<script>alert('"+ ex.Message.ToString ()+"')</script>");
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtSubstanceType.Text = "";
        txtDescription.Text = "";
        txtSubstanceType.Focus();
    }
}
