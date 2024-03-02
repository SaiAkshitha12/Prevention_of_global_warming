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
/// Summary description for clsReports
/// </summary>
public class clsReports:clsGroupMemberRegistration 
{
	public clsReports()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataSet GetRegMemberReprot()
    {
        try
        {
            string stat = "Select MemberId,FName,Address,EmailId,PhoneNo,Convert(varchar(50),DOB,103)as DOB from tbl_MemberMaster";
            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
}
