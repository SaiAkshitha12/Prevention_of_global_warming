<%@ Page Language="C#" MasterPageFile="~/RegisteredMembers/MemberMasterPage.master" AutoEventWireup="true" CodeFile="frmShowNewsLetterDetails.aspx.cs" Inherits="NGO_frmShowNewsLetterDetails" Title="Untitled Page" %>

<%@ Register src="../UserControls/BindImage.ascx" tagname="BindImage" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
<center>
<h3><asp:Label ID="lblTitle" runat ="server" ></asp:Label></h3>
<fieldset id="Field1" runat ="server" style="border-style: groove; border-color: #996633; width:700px">
<legend>News Letter Details</legend>
<table align="left">
<tr>
<td align="left" >

    <uc1:BindImage ID="BindImage1" runat="server" />

</td>
</tr>
<tr>
<td align="left" >
<asp:Label ID="lblVenue" runat ="server" BorderColor="Black" 
        Font-Bold="True" Font-Size="Small" ForeColor="#0066FF" ></asp:Label>
</td>
</tr>
<tr>
<td align="left" >
<asp:Label ID="lblConclusion" runat ="server" BorderColor="Black"  
        Font-Bold="True" Font-Size="Small" ForeColor="#0066FF" ></asp:Label>
</td>
</tr>
<tr>
<td align="left" ><asp:Label ID="lblMonth" runat ="server" BorderColor="Black" 
        Font-Bold="True" Font-Size="Small" ForeColor="#0066FF" ></asp:Label> &nbsp; <asp:Label ID="lblYear" runat ="server" BorderColor="Black" 
        Font-Bold="True" Font-Size="Small" ForeColor="#0066FF" ></asp:Label></td>
</tr>
</table>
</fieldset>
</center>
</asp:Content>

