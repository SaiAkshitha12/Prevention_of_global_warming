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
/// Summary description for clsNGORegistration
/// </summary>
public class clsNGORegistration:clsGroupMemberRegistration 
{
	public clsNGORegistration()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string Working { get; set; }
    public string Experience { get; set; }
    public int NGOId { get; set; }

    public int InsertNGODetails(out string Result)
    {
        SqlParameter[] p = new SqlParameter[16];
        p[0] = new SqlParameter("@FName", FName);
        p[1] = new SqlParameter("@LName", LName);
        p[2] = new SqlParameter("@MName", MName);
        p[3] = new SqlParameter("@DOB", DOB);
        p[4] = new SqlParameter("@Address", Address);
        p[5] = new SqlParameter("@EmailId", EmailId);
        p[6] = new SqlParameter("@PhoneNo", PhoneNo);
        p[7] = new SqlParameter("@Photo", Photo);
        p[8] = new SqlParameter("@ImageFile", ImageFile);
        p[9] = new SqlParameter("@UserName", UserName);
        p[10] = new SqlParameter("@Password", Password);
        p[11] = new SqlParameter("@NGOId", SqlDbType.Int);
        p[11].Direction = ParameterDirection.Output;
        p[12] = new SqlParameter("@Out", SqlDbType.VarChar, 150);
        p[12].Direction = ParameterDirection.Output;
        p[13] = new SqlParameter("@Qualification", Qualification);
        p[14]=new SqlParameter ("@Working",Working );
        p[15] = new SqlParameter("@Experience", Experience);
        SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertNGOMaster", p);
        Result = p[12].Value.ToString();
        return Convert.ToInt32(p[11].Value);

    }
    public DataSet GetNotApprovalNGO()
    {
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetNonApprovalNGO", null);
    }
    public int ApproveNGORegistration()
    {
        SqlParameter p = new SqlParameter("@NGOId", NGOId);
        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_ApproveNGORegistration", p);
        return i;
    }
    public DataSet GetNGOProfileById()
    {
        SqlParameter p = new SqlParameter("@NGOId", NGOId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetNGOProfileById", p);
    }

    public int UpdateNGOOfficerProfile()
    {
        SqlParameter[] p = new SqlParameter[11];
        p[0] = new SqlParameter("@NGOId", NGOId );
        p[1] = new SqlParameter("@FName", FName);
        p[2] = new SqlParameter("@LName", LName);
        p[3] = new SqlParameter("@MName", MName);
        p[4] = new SqlParameter("@Address", Address);
        p[5] = new SqlParameter("@EmailId", EmailId);
        p[6] = new SqlParameter("@PhoneNo", PhoneNo);

        p[7] = new SqlParameter("@Photo ", Photo);
        p[8] = new SqlParameter("@ImageFile", ImageFile);
        p[9] = new SqlParameter("@Qualification", Qualification);
        p[10] = new SqlParameter("@Working", Working);

        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_UpdateNGOProfile", p);
        return i;

    }
    public DataSet GetNGONames()
    {
        string stat = "Select NGOId,FName from tbl_NGOMaster";
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
    }
    public DataSet GetNGOReport()
    {
        string stat = "Select NGOId,FName,Convert(varchar(50),DoR,103)as DOR,Address,PhoneNo,EmailId,Qualification,Working from tbl_NGOMaster";
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
    }
    public DataSet GetNGOInfoById(int NGOId)
    {
        string stat = "Select NGOId,FName,Convert(varchar(50),DoR,103)as DOR,Address,PhoneNo,EmailId,Qualification,Working from tbl_NGOMaster where NGOId="+NGOId ;
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
    }
}
