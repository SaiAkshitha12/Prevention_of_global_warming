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
/// Summary description for clsSchedules
/// </summary>
public class clsSchedules
{
	public clsSchedules()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string Topic { get; set; }
    public DateTime ArrangedDate { get; set; }
    public string Duration { get; set; }
    public string Description { get; set; }
    public byte[] Contents { get; set; }
    public string FileName { get; set; }
    public DateTime AnnouncedDate { get; set; }
    public string ConductedBoard { get; set; }
    public string Name { get; set; }
    public string Address { get; set; }
    public string Designation { get; set; }
    public int ScheduleId { get; set; }


    public int InsertScheduleDetails()
    {
        SqlParameter[] p = new SqlParameter[11];
        p[0] = new SqlParameter("@Topic", Topic);
        p[1] = new SqlParameter("@ArrangedDate", ArrangedDate);
        p[2] = new SqlParameter("@Duration", Duration);
        p[3] = new SqlParameter("@Description", Description);
        p[4] = new SqlParameter("@Contents", Contents);
        p[5] = new SqlParameter("@FileName", FileName);
        p[6] = new SqlParameter("@AnnouncedDate", AnnouncedDate);
        p[7] = new SqlParameter("@ConductedBoard", ConductedBoard);
        p[8] = new SqlParameter("@Name", Name);
        p[9] = new SqlParameter("@Address", Address);
        p[10] = new SqlParameter("@Designation", Designation);
        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertScheduleDetails", p);
        return i;
    }
    public DataSet GetScheduleNames()
    {
        string Sqlstat = "Select ScheduleId,Topic from tbl_ScheduleDetails";
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, Sqlstat, null);
    }
    public DataSet GetScheduleDetailsById()
    {
        SqlParameter p = new SqlParameter("@ScheduleId", ScheduleId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetScheduleDetailsById", p);
    }
}
