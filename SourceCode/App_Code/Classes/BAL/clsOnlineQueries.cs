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
/// Summary description for clsOnlineQueries
/// </summary>
public class clsOnlineQueries:clsNGORegistration 
{
	public clsOnlineQueries()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string QueryText { get; set; }
    public int QueryId { get; set; }
    public DateTime DateOfSend { get; set; }
    public string AnswerText { get; set; }


    public int InsetOnlineQueries()
    {
        try
        {
            SqlParameter []p=new  SqlParameter [3];
            p[0]=new SqlParameter ("@QueryText",QueryText );
            p[1]=new SqlParameter ("@Name",FName);
            p[2] = new SqlParameter("@DateOfSend", DateOfSend);
            return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertOnlineQueries", p);
        }
        catch (Exception ex)
        {

            throw new ArgumentException(ex.Message);
        }
    }

    public int InsetAnswersForQueries()
    {
        try
        {
            SqlParameter[] p = new SqlParameter[3];
            p[0] = new SqlParameter("@AnswerText", AnswerText);
            p[1] = new SqlParameter("@QueryId", QueryId );
            p[2] = new SqlParameter("@NGOId", NGOId );
            return SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertQueryAnswers", p);
        }
        catch (Exception ex)
        {

            throw new ArgumentException(ex.Message);
        }
    }

    public DataSet GetOnlineQueryText()
    {
        try
        {
            string stat = "Select QueryId,QueryText from tbl_OnlineQueries";
            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, stat, null);
        }
        catch (Exception ex)
        {

            throw new ArgumentException(ex.Message);
        }
    }
    public DataSet GetQueryAnswers()
    {
        try
        {
            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetQueryAnswers", null);
        }
        catch (Exception ex)
        {

            throw new ArgumentException(ex.Message);
        }
    }
}
