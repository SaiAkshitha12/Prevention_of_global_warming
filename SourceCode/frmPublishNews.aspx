<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="frmPublishNews.aspx.cs" Inherits="frmPublishNews" Title="Untitled Page" %>

<%@ Register src="UserControls/BindImage.ascx" tagname="BindImage" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
<center>
<h3 style="text-decoration: underline">Latest News</h3>
<fieldset id="Field1" runat ="server" style="border-style: groove; border-color: #996633; width:700px">
<legend>Latest</legend>
<table align="left">
<tr>
<td align="left">
<asp:GridView ID="GrvLatestNews" runat ="server" AutoGenerateColumns ="false" 
        EmptyDataText="No News Posted Today" 
        onrowcommand="GrvLatestNews_RowCommand" >
<Columns >
<asp:TemplateField HeaderText="Latest News">
<ItemTemplate >
<asp:LinkButton  ID="lnkTopic" runat ="server" Text='<%# Eval("Topic") %>' CommandArgument='<%# Eval("NewsId") %>' CommandName="NewsId" Font-Bold="True" Font-Size="Medium" ForeColor="Blue"></asp:LinkButton>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField >
<ItemTemplate>
<asp:Label ID="lblDate" runat ="server" Text='<%# Eval("PostedDate") %>' Font-Bold="True" Font-Size="Medium" ForeColor="Blue" ></asp:Label>

</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
</td>
</tr>
</table>
</fieldset>
<fieldset id="Field2" runat ="server" visible="false"  style="border-style: groove; border-color: #996633; width:700px">
<legend>News Details</legend>
<table align="left">
<tr>
<td align="left" >
    <uc1:BindImage ID="BindImage1" runat="server" />
    </td>
</tr>
<tr>
<td align="left"><asp:Label ID="lblTopic" runat ="server" Font-Bold="True" 
        Font-Size="Medium" ForeColor="Blue" Font-Underline="True" ></asp:Label> </td>
</tr>
<tr>
<td align="left"><asp:Label ID="lblNewsContent" runat ="server" Font-Bold="True" Font-Size="small" ForeColor="Blue"></asp:Label> </td>
</tr>
<tr>
<td align="left"><asp:LinkButton ID="lnkLink" runat ="server" Font-Bold="True" Font-Size="small" ForeColor="Blue" ></asp:LinkButton></td>
</tr>
<tr>
<td align="left"><asp:Label ID="lblDate" runat ="server" Font-Bold="True" Font-Size="x-small" ForeColor="Blue" ></asp:Label></td>
</tr>
</table>
</fieldset>
</center>
</asp:Content>

