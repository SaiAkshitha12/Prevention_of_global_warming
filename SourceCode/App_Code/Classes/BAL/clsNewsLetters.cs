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
/// Summary description for clsNewsLetters
/// </summary>
public class clsNewsLetters
{
	public clsNewsLetters()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string NewsLetterId { get; set; }
    public string Topic { get; set; }
    public string Title { get; set; }
    public string Venue { get; set; }
    public string Conclusion { get; set; }
    public byte[] NewsImage { get; set; }
    public string FileName { get; set; }
    public int UserId { get; set; }

    public int InsertNewsLetterDetails()
    {
        SqlParameter []p=new  SqlParameter[6];
        p[0] = new SqlParameter("@Title", Title);
        p[1] = new SqlParameter("@Topic", Topic);
        p[2] = new SqlParameter("@Venue", Venue);
        p[3] = new SqlParameter("@Conclusion", Conclusion);
        p[4] = new SqlParameter("@NewsImage", NewsImage);
        p[5] = new SqlParameter("@FileName", FileName);
        return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertNewsLetterDetails", p);

    }
    public int SendNewsLettersToUsers()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@UserId", UserId);
        return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertSendNewsletter", p);
    }
    public DataSet GetNewsLetterTitle()
    {
        SqlParameter p = new SqlParameter("@UserId", UserId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetNewsTitle", p);
    }
    public DataSet GetNewsLetterDetailsById()
    {
        SqlParameter p = new SqlParameter("@NewsLetterId", NewsLetterId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_ShowNewsLetterDetails", p);
    }
}
