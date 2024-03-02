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
using GlobalWarming.DAL;
using System.Data.SqlClient;  
/// <summary>
/// Summary description for clsUserLogin
/// </summary>
public class clsUserLogin:clsGroupMemberRegistration
{
	public clsUserLogin()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public string Role { get; set; }
    public int GM_NGO_Id { get; set; }
    public int CheckLogin()
    {
        SqlParameter[] p = new SqlParameter[5];
        p[0] = new SqlParameter("@UserName", UserName);
        p[1] = new SqlParameter("@Password", Password);
        p[2] = new SqlParameter("@GM_NGO_Id", SqlDbType.Int);
        p[2].Direction = ParameterDirection.Output;
        p[3]=new SqlParameter("@Flag",SqlDbType.Int);
        p[3].Direction=ParameterDirection.Output;
        p[4] = new SqlParameter("@Role",SqlDbType.VarChar,50);
        p[4].Direction = ParameterDirection.Output;
        SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "Sp_VerifyUserLogin", p);
        Role = p[4].Value.ToString ();
        GM_NGO_Id  = Convert.ToInt32(p[2].Value);
        return Convert.ToInt32(p[3].Value);  
    }
    public DataSet GetUserImage()
    {
        SqlParameter p = new SqlParameter("@GM_NGO_Id", GM_NGO_Id);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetImage", p);
    }
    public int GetUserLoginId()
    {
        SqlParameter p = new SqlParameter("@GM_NGO_Id", GM_NGO_Id);
        int i=Convert.ToInt32 ( SqlHelper.ExecuteScalar(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetLoginUserId", p));
        return i;
    }
    public static DataSet GetOnlineNGOData()
    {
        try
        {
            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetOnlineNGOData");
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public static DataSet GetOnlineMemberData()
    {
        try
        {
            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetOnlineMemberData");
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public static void ActiveNGOOnlineStatus(int Id)
    {
        try
        {
            string str = "Update tbl_NGOOnline set [status]=1 where NGOId=" + Id;
            SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.Text, str);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public static void InActiveNGOOnlineStatus(int Id)
    {
        try
        {
            string str = "Update tbl_NGOOnline set [status]=0 where NGOId=" + Id;
            SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.Text, str);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public static void ActiveMemberOnlineStatus(int Id)
    {
        try
        {
            string str = "Update tbl_MemberOnline set [status]=1 where MemberId=" + Id;
            SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.Text, str);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public static void InActiveMemberOnlineStatus(int Id)
    {
        try
        {
            string str = "Update tbl_MemberOnline set [status]=0 where MemberId=" + Id;
            SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.Text, str);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    public string NewPassword { get; set; }

    public int ChangePassword()
    {
        SqlParameter[] p = new SqlParameter[4];
        p[0] = new SqlParameter("@UserName", UserName);
        p[1] = new SqlParameter("@OldPassword", Password);
        p[2] = new SqlParameter("@NewPassword", NewPassword);
        p[3] = new SqlParameter("@Result", SqlDbType.Int);
        p[3].Direction = ParameterDirection.Output;
        SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_ChangePassWord", p);
        return Convert.ToInt32(p[3].Value);
    }
    public DataSet GetUserId()
    {
        string stat = "Select UserId,Username from tbl_LoginMaster where Role <> 'admin'";
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
    }
}
