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

public partial class Administrator_AdminHome : System.Web.UI.Page
{
    clsGroupMemberRegistration objMember = null;
    clsNGORegistration objNGO = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetNotApprovalMember();
            GetNotApprovalNGO();
        }
    }
    int NGOUserId, MemberUserId;
    public void GetNotApprovalNGO()
    {
        objNGO = new clsNGORegistration();
        DataSet dsNGO=objNGO.GetNotApprovalNGO();
        ViewState["dsNGO"] = dsNGO;
        if (dsNGO.Tables[0].Rows.Count > 0)
        {
            GRVNGO.DataSource = dsNGO.Tables[0];
            GRVNGO.DataBind();
            
        }
    }

    public void GetNotApprovalMember()
    {
        objMember = new clsGroupMemberRegistration();
        DataSet dsMember = objMember.GetNotApprovalMember();
        if (dsMember.Tables[0].Rows.Count > 0)
        {
            GRVMembers.DataSource = dsMember.Tables[0];
            GRVMembers.DataBind();
        }
    }
    protected void GRVMembers_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    
    protected void GRVNGO_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Approve")
        {
            objNGO = new clsNGORegistration();
            objNGO.NGOId = Convert.ToInt32(e.CommandArgument.ToString());
            int i = objNGO.ApproveNGORegistration();
            if (i > 0)
            {
                //DataSet ds = (DataSet)ViewState["dsNGO"];
                //NGOUserId =Convert.ToInt32 ( ds.Tables[0].Rows.Find(objNGO.NGOId));
                Page.RegisterClientScriptBlock("NGO", "<script>alert('NGO Registration Approved')</script>");

            }
            else
            {
                Page.RegisterClientScriptBlock("NGO", "<script>alert('Error Try Again!')</script>");
            }

            GetNotApprovalNGO();
        }
    }
    protected void GRVMembers_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Approve")
        {
            objMember = new clsGroupMemberRegistration();
            objMember.MemberId = Convert.ToInt32(e.CommandArgument.ToString());
            int i = objMember.ApproveMemberRegistration();
            if (i > 0)
            {
                Page.RegisterClientScriptBlock("NGO", "<script>alert('Member Registration Approved')</script>");
            }
            else
            {
                Page.RegisterClientScriptBlock("NGO", "<script>alert('Error Try Again!')</script>");
            }
            GetNotApprovalMember();
        }
    }
    protected void GRVNGO_RowEditing(object sender, GridViewEditEventArgs e)
    {
        clsNGORegistration objNGo = new clsNGORegistration();
        int NGOId = Convert.ToInt32(GRVNGO.Rows[e.NewEditIndex].Cells[0].Text);
        DataSet ds = objNGo.GetNGOInfoById(NGOId);
        ShowDeatils.DataSource = ds.Tables[0];
        ShowDeatils.DataBind();
        Field4.Visible = true;
        
        
    }
    protected void GRVMembers_RowEditing(object sender, GridViewEditEventArgs e)
    {
        clsGroupMemberRegistration objGroup = new clsGroupMemberRegistration();
        int MemberId = Convert.ToInt32(GRVMembers.Rows[e.NewEditIndex].Cells[0].Text);
        DataSet ds = objGroup.GetMemberInfoByd (MemberId );
        ShowDeatils.DataSource = ds.Tables[0];
        ShowDeatils.DataBind();
        Field4.Visible = true;
    }
}
