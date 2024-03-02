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

public partial class frmHazardousChemicalsDetails : System.Web.UI.Page
{
    clsToxicSubstances objToxic = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkGr1_Click(object sender, EventArgs e)
    {
        Session["ToxicSubstanceTypeId"] = "TXT1105";
        GetToxicSubstanceDetailsByTypeId();
    }
    public void GetToxicSubstanceDetailsByTypeId()
    {
        Field2.Visible = true;   
        objToxic = new clsToxicSubstances();
        objToxic.ToxicSubstanceTypeId = Session["ToxicSubstanceTypeId"].ToString();
        DataSet dsToxic = objToxic.GetToxicSubstanceDetailsByToxicTypeId();
        if (dsToxic.Tables[0].Rows.Count > 0)
        {
            GrvToxic.DataSource = dsToxic.Tables[0];
            GrvToxic.DataBind();
        }
    }
    protected void lnkGr2_Click(object sender, EventArgs e)
    {
        Session["ToxicSubstanceTypeId"] = "TXT1106";
        GetToxicSubstanceDetailsByTypeId();
    }
    protected void lnkGr3_Click(object sender, EventArgs e)
    {
        Session["ToxicSubstanceTypeId"] = "TXT1107";
        GetToxicSubstanceDetailsByTypeId();
    }
    protected void lnkGr4_Click(object sender, EventArgs e)
    {
        Session["ToxicSubstanceTypeId"] = "TXT1108";
        GetToxicSubstanceDetailsByTypeId();
    }
}
