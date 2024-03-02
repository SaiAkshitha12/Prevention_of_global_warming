<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="ApproveRegistration.aspx.cs" Inherits="Administrator_AdminHome" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
<center>
<h3 style="text-decoration: underline">Approving Member and NGO Registration</h3>
<fieldset id="Field1" runat ="server" style="border-style: groove; border-color: #996633; width:700px">
<legend>Registered NGO's</legend>

<asp:GridView ID="GRVNGO" runat ="server" AutoGenerateColumns="false" 
                                    EmptyDataText="No New Registration Has Been Done" 
                                    onrowcommand="GRVNGO_RowCommand" 
        onrowediting="GRVNGO_RowEditing" >
<Columns>
<asp:BoundField DataField ="NGOId" HeaderText="IdentificationNo" />
<asp:BoundField DataField ="FName" HeaderText="Name" />
<asp:BoundField DataField ="DOR" HeaderText ="RegistrationDate" />
<asp:BoundField DataField ="Role" HeaderText="Role" />
<asp:CommandField ShowEditButton="true" EditText="View" />
<asp:TemplateField>

<ItemTemplate>
<asp:LinkButton  ID="lnkApprove" runat ="server" Text="Approve Registration" CommandArgument ='<%# Eval("NGOId") %>' CommandName="Approve" />
</ItemTemplate>
</asp:TemplateField>

</Columns>
</asp:GridView>
</fieldset>





<fieldset id="Field3" runat ="server" style="border-style: groove; border-color: #996633; width:700px">
<legend>Registered Members</legend>
<table><tr><td>
<asp:GridView ID="GRVMembers" runat ="server" AutoGenerateColumns="false" 
                                    
        onselectedindexchanged="GRVMembers_SelectedIndexChanged" 
        onrowcommand="GRVMembers_RowCommand" onrowediting="GRVMembers_RowEditing" >
<Columns>
<asp:BoundField DataField ="MemberId" HeaderText="IdentificationNo" />
<asp:BoundField DataField ="FName" HeaderText="Name" />
<asp:BoundField DataField ="DOR" HeaderText ="RegistrationDate" />
<asp:BoundField DataField ="Role" HeaderText="Role" />
<asp:CommandField ShowEditButton="true" EditText="View" />
<asp:TemplateField>
<ItemTemplate>
<asp:LinkButton ID="lnkApprove" runat ="server" Text="Approve Registration" CommandArgument ='<%# Eval("MemberId") %>' CommandName="Approve" />
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
</td></tr></table>

</fieldset>
<fieldset id="Field4" runat="server" visible ="false" 
        style="border-style: groove; border-color: #996633; width:700px" >
<table>
<tr>
<td><asp:GridView ID="ShowDeatils" runat ="server" Font-Bold="True" 
        Font-Names="Times New Roman" Font-Size="X-Small" ></asp:GridView></td>
</tr>
</table>
</fieldset>

<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


</center>
</asp:Content>

