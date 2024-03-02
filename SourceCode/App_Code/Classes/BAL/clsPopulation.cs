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
/// Summary description for clsPopulation
/// </summary>
public class clsPopulation
{
	public clsPopulation()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int StateId { get; set; }
    public string StateName { get; set; }
    public string Abbreviation { get; set; }
    public string Status { get; set; }
    public string Capital { get; set; }
    public string Area { get; set; }
    public string CF1981 { get; set; }
    public string CF1991 { get; set; }
    public string CF2001 { get; set; }
    public string CityName { get; set; }
    public int CityId { get; set; }

    public int InsertStateWisePopulation()
    {
        SqlParameter[] p = new SqlParameter[8];
        p[0] = new SqlParameter("@Statename", StateName);
        p[1] = new SqlParameter("@Abbr", Abbreviation);
        p[2] = new SqlParameter("@Status", Status);
        p[3] = new SqlParameter("@Capital", Capital);
        p[4] = new SqlParameter("@Area", Area);
        p[5] = new SqlParameter("@Cf1981", CF1981);
        p[6] = new SqlParameter("@Cf1991", CF1991);
        p[7] = new SqlParameter("@Cf2001", CF2001);
        return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertStateWisePopulation", p);
    }
    public int InsertCityWisePopulation()
    {
        SqlParameter []p=new SqlParameter[4];
        p[0] = new SqlParameter("@CityName", CityName);
        p[1] = new SqlParameter("@CF1991", CF1991);
        p[2] = new SqlParameter("@CF2001", CF2001);
        p[3] = new SqlParameter("@StateId", StateId);
        return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertCityWisePopulation", p);

    }
    public DataSet GetStateNames()
    {
        string stat = "Select StateId,StateName from tbl_stateWisePopulation";
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
    }
    public DataSet GetStateWisePopulationByStateId()
    {
        SqlParameter p = new SqlParameter("@StateId", StateId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetStaeWisePopulationByStateId", p);
    }
    public DataSet GetCityNamesByStaeId()
    {
        SqlParameter p = new SqlParameter("@StateId", StateId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetCityNamesByStateId", p);
    }
    public DataSet GetCityDetailsById()
    {
        SqlParameter p = new SqlParameter("@CityId", CityId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetCityDetailsById", p);
    }
}
