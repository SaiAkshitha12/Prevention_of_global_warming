using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class NGO_frmPublishSchedules : System.Web.UI.Page
{
    clsSchedules objSchedule = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetScheduleNames();
        }
    }
    public void GetScheduleNames()
    {
        objSchedule = new clsSchedules();
        DataSet dsSchedule = objSchedule.GetScheduleNames();
        if (dsSchedule.Tables[0].Rows.Count > 0)
        {
            GRVSchedules.DataSource = dsSchedule.Tables[0];
            GRVSchedules.DataBind();
        }
    }
    int ScheduleId;
    protected void GRVSchedules_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ScheduleId")
        {
            Field2.Visible = true;
            ScheduleId = Convert.ToInt32(e.CommandArgument.ToString());
            Session["ScheduleId"] = ScheduleId.ToString();
            objSchedule = new clsSchedules();
            objSchedule.ScheduleId = ScheduleId;
            DataSet dsSchedule = objSchedule.GetScheduleDetailsById();
            if (dsSchedule.Tables[0].Rows.Count > 0)
            {
                lblScheduleTopic.Text = dsSchedule.Tables[0].Rows[0]["Topic"].ToString();
                lblArrangedDate.Text = dsSchedule.Tables[0].Rows[0]["ArrangedDate"].ToString();
                lblDuration.Text = dsSchedule.Tables[0].Rows[0]["Duration"].ToString();
                lblDescription.Text = dsSchedule.Tables[0].Rows[0]["Description"].ToString();
                lblAnnounced.Text = dsSchedule.Tables[0].Rows[0]["AnnouncedDate"].ToString();
                lblConductedBoard.Text = dsSchedule.Tables[0].Rows[0]["ConductedBoard"].ToString();
                lblName.Text = dsSchedule.Tables[0].Rows[0]["Name"].ToString();
                lblDesignation.Text = dsSchedule.Tables[0].Rows[0]["Designation"].ToString();
                lblAddress.Text = dsSchedule.Tables[0].Rows[0]["Address"].ToString();
            }
        }
    }
    protected void lnkAttachment_Click(object sender, EventArgs e)
    {
        try
        {
            objSchedule = new clsSchedules();
            objSchedule.ScheduleId = Convert.ToInt32(Session["ScheduleId"]);
            DataSet ds = objSchedule.GetScheduleDetailsById();
            if (ds.Tables[0].Rows.Count != 0)
            {
                byte[] FileContent = (byte[])ds.Tables[0].Rows[0][4];
                string FileName = (string)ds.Tables[0].Rows[0][5];
                string[] fileSplit = FileName.Split('.');
                int Loc = fileSplit.Length;
                string FileExtention = "." + fileSplit[Loc - 1].ToUpper();

                int i = 0;
                if (FileExtention == ".DOC" || FileExtention == ".DOCX")
                {
                    Response.ContentType = "application/vnd.ms-word";
                    Response.AddHeader("content-disposition", "inline;filename=" + FileName);
                    i = 1;
                }
                else if (FileExtention == ".XL" || FileExtention == ".XLS" || FileExtention == ".XLSX")
                {
                    Response.ContentType = "application/vnd.ms-excel";
                    Response.AddHeader("content-disposition", "inline;filename=" + FileName);
                    i = 1;
                }
                else if (FileExtention == ".PDF")
                {
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "inline;filename=" + FileName);
                    i = 1;
                }
                else if (FileExtention == ".TXT")
                {
                    Response.ContentType = "application/octet-stream";
                    Response.AddHeader("content-disposition", "inline;filename=" + FileName);
                    i = 1;
                }
                if (i == 1)
                {
                    Response.Charset = "";
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.BinaryWrite(FileContent);
                    Response.End();
                }
                else
                    lblMsg.Text = "Problom in downloading the file..";

            }
        }
        catch (Exception ex)
        {

            lblMsg.Text = ex.Message;
        }
    }
}
