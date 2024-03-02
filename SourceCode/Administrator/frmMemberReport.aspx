<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmMemberReport.aspx.cs" Inherits="Administrator_frmMemberReport" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
<center>
<h3>Active Member Report</h3>
<fieldset id="Field1" runat ="server" >
<table>
<tr>
<td align="left" >
<asp:GridView ID="grvMembers" runat ="server" AutoGenerateColumns="false" >
<Columns>
<asp:BoundField DataField ="MemberId" HeaderText="MemberId" />
<asp:BoundField DataField ="FName" HeaderText="FirstName" />
<asp:BoundField DataField ="DOR" HeaderText="DateOfRegister" />
<asp:BoundField DataField="Address" HeaderText="Address" />
<asp:BoundField DataField ="Qualification" HeaderText="Qualification" />
</Columns>
</asp:GridView>
</td>
</tr>
</table>
<table>
<tr>
<td><asp:Button ID="btnExcel" runat ="server" Text="Excel" 
        onclick="btnExcel_Click" /><asp:Button ID="btnPdf" runat="server" 
        Text="PDF" onclick="btnPdf_Click" /></td>
</tr>
<tr><td ><asp:Label ID="lblMsg" runat ="server" Visible="false" ></asp:Label></td></tr>
</table>
</fieldset><br /><br />
<h3>Active Counselors Report</h3>
<fieldset id="Field2" runat ="server" >
<table>
<tr>
<td align="left" >
<asp:GridView ID="grvCounselors" runat ="server" AutoGenerateColumns="false" >
<Columns>
<asp:BoundField DataField ="NGOId" HeaderText="MemberId" />
<asp:BoundField DataField ="FName" HeaderText="FirstName" />
<asp:BoundField DataField ="DOR" HeaderText="DateOfRegister" />
<asp:BoundField DataField="Address" HeaderText="Address" />
<asp:BoundField DataField ="Qualification" HeaderText="Qualification" />
<asp:BoundField DataField ="Working" HeaderText="Experience" />
</Columns>
</asp:GridView>
</td>
</tr>
</table>
<table>
<tr>
<td><asp:Button ID="btnExcel1" runat ="server" Text="Excel" onclick="btnExcel1_Click" 
         />
    <asp:Button ID="btnPDF1" runat="server" 
        Text="PDF" onclick="btnPDF1_Click"  /></td>
</tr>
<tr><td ><asp:Label ID="lblMsg1" runat ="server" Visible="false" ></asp:Label></td></tr>
</table>
</fieldset>
</center>

</asp:Content>

