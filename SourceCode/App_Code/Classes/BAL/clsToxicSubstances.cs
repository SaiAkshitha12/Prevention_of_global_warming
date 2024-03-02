using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using GlobalWarming.DAL;
/// <summary>
/// Summary description for clsToxicSubstances
/// </summary>
public class clsToxicSubstances
{
	public clsToxicSubstances()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string  ToxicSubstanceTypeId { get; set; }
    public string ToxicSubstanceTypeName { get; set; }
    public string Description { get; set; }
    public string NameOfSubstance { get; set; }
    public string Quantity { get; set; }
    public string CASNo { get; set; }


    public int InsertToxicSubstancesTypes()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@ToxicType", ToxicSubstanceTypeName);
        p[1] = new SqlParameter("@Description", Description);
        return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertToxicSubstancesTypes", p);
    }

    public DataSet GetToxicSubstaceTypeName()
    {
        string stat = "Select ToxicTypeId,ToxicType from tbl_ToxicSubstancesTypes";
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
    }
    public int InsertToxicSubstanceDetails()
    {
        SqlParameter[] p = new SqlParameter[4];
        p[0] = new SqlParameter("@NameOfSubstance", NameOfSubstance);
        p[1] = new SqlParameter("@Quantity", Quantity);
        p[2] = new SqlParameter("@CAS", CASNo);
        p[3] = new SqlParameter("@ToxicTypeId", ToxicSubstanceTypeId);
        return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertToxicSubstanceDetails", p);
    }
    public DataSet GetToxicSubstanceDetailsByToxicTypeId()
    {
        SqlParameter p = new SqlParameter("@ToxicTypeId", ToxicSubstanceTypeId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetToxicSubstanceDetails", p);
    }

}
