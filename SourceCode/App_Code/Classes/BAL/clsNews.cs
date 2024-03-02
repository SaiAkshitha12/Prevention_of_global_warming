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
/// Summary description for clsNews
/// </summary>
public class clsNews
{
	public clsNews()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int NewsId { get; set; }
    public string Topic { get; set; }
    public string NewsContent { get; set; }
    public string NewsLinks { get; set; }
    public byte[] NewImage { get; set; }
    public string FileName { get; set; }
    public DateTime PostedDate { get; set; }
    public string NewsTypeId { get; set; }
    public string NewsRelatedLinks { get; set; }
    public string NewsTypeName { get; set; }
    public string Description { get; set; }

    public int InsertNewsTypeDetails()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@TypeName", NewsTypeName);
        p[1] = new SqlParameter("@Description", Description);
        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertNewsTypes", p);
        return i;
    }
    public DataSet GetNewsTypeNames()
    {
        string stat = "Select NewsTypeId,TypeName from tbl_NewsTypes";
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
    }
    public int InsertNewsDetails()
    {
        SqlParameter[] p = new SqlParameter[8];
        p[0] = new SqlParameter("@Topic", Topic);
        p[1]=new SqlParameter ("@NewsContent",NewsContent );
        p[2]=new SqlParameter ("@NewsLink",NewsLinks );
        p[3]=new SqlParameter ("@NewsImage",NewImage );
        p[4]=new SqlParameter ("@FileName",FileName );
        p[5]=new SqlParameter ("@PostedDate",PostedDate );
        p[6]=new SqlParameter ("@NewsTypeId",NewsTypeId );
        p[7]=new SqlParameter ("@RelatedLinks",NewsRelatedLinks );
        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertNewsDetails", p);
        return i;
    }
    public DataSet GetNewsTopics()
    {
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetNewsTopics", null);
    }
    public DataSet GetNewsDetailsById()
    {
        SqlParameter p = new SqlParameter("@NewsId", NewsId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetNewDetailsById", p);
    }
}
