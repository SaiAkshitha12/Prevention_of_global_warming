<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="frmDisplayStateWisePopulation.aspx.cs" Inherits="frmDisplayStateWisePopulation" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
<center>
<h3>INDIA: Major Agglomerations</h3>
<fieldset id="Field1" runat ="server" style="border-style: groove; border-color: #996633; width:700px">
<table align="left">
<tr><td align="left" ><asp:Image ID="ImgIndia" runat ="server" ImageUrl="~/Images/India.jpg" Width="90px" /></td></tr>
<tr>
<td><b>Complete Name: Republic of India</b></td>
</tr>
<tr>
<td align="left" ><b>Native Name: Bharat</b></td>
</tr>
<tr>
<td align="left"><b>ISO-Code: IND</b></td>
</tr>
<tr>
<td align="left"><b>Capital: New Delhi
</b>
</td>
</tr>
</table>
</fieldset>
<fieldset id="Field2" runat ="server" style="border-style: groove; border-color: #996633; width:700px" >
<table align="left">
<tr>
<td align="left">
<asp:GridView ID="GrvState" runat ="server" AutoGenerateColumns="false" 
        Font-Bold="True" Font-Size="Medium"  ShowHeader="False" 
        onrowcommand="GrvState_RowCommand"  >
<Columns>
<asp:TemplateField >
<ItemTemplate>*
<asp:LinkButton ID="lnkState" runat ="server" ForeColor="#0066FF" Text='<%#Eval("StateName") %>'  CommandArgument='<%#Eval("StateId") %>' ></asp:LinkButton>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
</td>
</tr>
</table>
</fieldset>
</center>
</asp:Content>

