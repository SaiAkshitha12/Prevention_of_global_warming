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

public partial class Administrator_frmAnnounceSchedules : System.Web.UI.Page
{
    clsSchedules objSchedule = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtTopic.Focus();

    }
    public void InsertScheduleDetails()
    {
        objSchedule = new clsSchedules();
        objSchedule.Topic = txtTopic.Text;
        objSchedule.ArrangedDate = Convert.ToDateTime(txtDate.Text.Trim());
        objSchedule.Duration = txtDuration.Text;
        objSchedule.Description = txtDescription.Text;
        objSchedule.Contents = (byte[])Session["DocFileContent"];
        objSchedule.FileName = Session["DocFileName"].ToString();
        objSchedule.ConductedBoard = txtBoardName.Text.Trim();
        objSchedule.Name = txtName.Text.Trim();
        objSchedule.Address = txtAddress.Text.Trim();
        objSchedule.Designation = txtDesignation.Text.Trim();
        objSchedule.AnnouncedDate = Convert.ToDateTime(txtAnnouce.Text.Trim());
        int i = objSchedule.InsertScheduleDetails();
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("Admin", "<script>alert('Schdule Details Uploaded')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("Admin", "<script>alert('Error Try Again!')</script>");
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            InsertScheduleDetails();
        }
        catch (Exception ex)
        {
            Page.RegisterClientScriptBlock("Admin", "<script>alert('"+ ex.Message.ToString ()+"')</script>");
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtTopic.Text = "";
        txtDate.Text = "";
        txtAnnouce.Text = "";
        txtDuration.Text = "";
        txtDescription.Text = "";
        Session["DocFileContent"] = null;
        Session["DocFileName"] = null;
        txtName.Text = "";
        txtDesignation.Text = "";
        txtBoardName.Text = "";
        txtAddress.Text = "";
        txtTopic.Focus();

    }
}
