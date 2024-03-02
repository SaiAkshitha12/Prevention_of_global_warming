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
/// Summary description for clsGroupMemberRegistration
/// </summary>
public class clsGroupMemberRegistration
{
	public clsGroupMemberRegistration()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int MemberId { get; set; }
    public string FName { get; set; }
    public string MName { get; set; }
    public string LName { get; set; }
    public DateTime DOB { get; set; }
    public string Address { get; set; }
    public string EmailId { get; set; }
    public string PhoneNo { get; set; }
    public byte[] Photo { get; set; }
    public string ImageFile { get; set; }
    public string UserName { get; set; }
    public string Password { get; set; }
    public string Qualification { get; set; }

    public int InsertMemberDetails(out string Result)
    {
        SqlParameter[] p = new SqlParameter[14];
        p[0] = new SqlParameter("@FName", FName);
        p[1] = new SqlParameter("@LName", LName);
        p[2] = new SqlParameter("@MName", MName);
        p[3] = new SqlParameter("@DOB", DOB);
        p[4] = new SqlParameter("@Address", Address);
        p[5] = new SqlParameter("@EmailId", EmailId);
        p[6] = new SqlParameter("@PhoneNo", PhoneNo);
        p[7] = new SqlParameter("@ImageContent", Photo);
        p[8] = new SqlParameter("@ImageFile", ImageFile);
        p[9] = new SqlParameter("@UserName", UserName);
        p[10] = new SqlParameter("@Password", Password);
        p[11] = new SqlParameter("@MemberId", SqlDbType.Int);
        p[11].Direction = ParameterDirection.Output;
        p[12] = new SqlParameter("@Out", SqlDbType.VarChar, 150);
        p[12].Direction = ParameterDirection.Output;
        p[13] = new SqlParameter("@Qualification", Qualification);
        SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertMemberMaster", p);
        Result = p[12].Value.ToString();
        return Convert.ToInt32(p[11].Value);

    }

    public DataSet GetNotApprovalMember()
    {
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetNonApprovalMember", null);
    }

    public int ApproveMemberRegistration()
    {
        SqlParameter p = new SqlParameter("@MemberId", MemberId);
        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_ApproveMemberRegistration", p);
        return i;
    }
    public DataSet GetMemberProfileById()
    {
        SqlParameter p = new SqlParameter("@MemberId", MemberId );
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetMemberProfileById", p);
    }
    public int UpdateMemberProfile()
    {
        SqlParameter[] p = new SqlParameter[9];
        p[0] = new SqlParameter("@MemberId", MemberId );
        p[1] = new SqlParameter("@FName", FName);
        p[2] = new SqlParameter("@LName", LName);
        p[3] = new SqlParameter("@MName", MName);
        p[4] = new SqlParameter("@Address", Address);
        p[5] = new SqlParameter("@EmailId", EmailId);
        p[6] = new SqlParameter("@PhoneNo", PhoneNo);
        p[7] = new SqlParameter("@Photo ", Photo);
        p[8] = new SqlParameter("@ImageFile", ImageFile);

        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_UpdateMemberProfile", p);
        return i;

    }
    public DataSet GetMemberNames()
    {
        string stat = "Select MemberId,FName from tbl_MemberMaster";
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
    }
    public DataSet GetMemberReport()
    {
        string stat = "Select MemberId,FName,Convert(varchar(50),DoR,103)as DOR,Address,PhoneNo,EmailId,Qualification from tbl_MemberMaster";
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
    }
    public DataSet GetMemberInfoByd(int MemberId)
    {
        string stat = "Select MemberId,FName,Convert(varchar(50),DoR,103)as DOR,Address,PhoneNo,EmailId,Qualification from tbl_MemberMaster where MemberId="+MemberId ;
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
    }

}
