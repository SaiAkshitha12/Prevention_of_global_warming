<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmSendNewsLetters.aspx.cs" Inherits="Administrator_frmSendNewsLetters" Title="Untitled Page" %>

<%@ Register src="../UserControls/BrowseImage.ascx" tagname="BrowseImage" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
<center>
<h3>Uploading News Letters</h3>
<fieldset id="field1" runat ="server" style="border-style: groove; border-color: #996633; width:700px">
<legend>NewsLetter Details</legend>
<table>
<tr>
<td valign="top">Title</td><td><asp:TextBox ID="txtTitle" Width="600px" Height="50px" TextMode="MultiLine" Font-Names="Verdana"  style="float:right;border:1px solid #000; background-color:#f1f1f1;" runat="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVTitle" runat ="server" ControlToValidate="txtTitle" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td valign="top">Topic</td><td><asp:TextBox ID="txtTopic" Width="600px" Height="50px" TextMode="MultiLine" runat="server" Font-Names="Verdana"  style="float:right;border:1px solid #000; background-color:#f1f1f1;" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat ="server" ControlToValidate="txtTopic" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td valign="top">Venue</td><td><asp:TextBox ID="txtVenue" Width="600px" Height="50px" TextMode="MultiLine" runat="server" Font-Names="Verdana"  style="float:right;border:1px solid #000; background-color:#f1f1f1;" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat ="server" ControlToValidate="txtVenue" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>


<tr>
<td valign="top">Conclusion</td><td><asp:TextBox ID="txtConclusion" Width="600px" Height="50px" TextMode="MultiLine" runat="server" Font-Names="Verdana"  style="float:right;border:1px solid #000; background-color:#f1f1f1;" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat ="server" ControlToValidate="txtConclusion" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>
</table>
</fieldset>
<fieldset id="Field2" runat ="server" style="border-style: groove; border-color: #996633; width:700px">
<legend>Upload News Image</legend>
<table>
<tr><td>
    <uc1:BrowseImage ID="BrowseImage1" runat="server" />
    </td></tr>
</table>
</fieldset>
<fieldset id="Field3" runat="server" style="border-style: groove; border-color: #996633; width:700px">
<legend>Choose User Details for Sending NewsLetter</legend>
<table>
<tr><td align="left">
    <asp:CheckBoxList ID="ChkUsers" runat ="server" Font-Bold="True" 
        Font-Size="X-Small" ForeColor="#0066FF" BorderColor="#996633" 
        BorderStyle="Groove" RepeatColumns="2" ></asp:CheckBoxList></td></tr>
</table>
</fieldset>
<fieldset id="Field4" runat ="server" style="border-style: groove; border-color: #996633; width:700px">
<legend>Submit Data</legend>
<table>
<tr>
<td><asp:Button ID="btnSubmit" runat ="server" Width="70px" BorderColor="#3D6356" 
        BorderStyle="Solid" Font-Bold="True" Text="Submit" onclick="btnSubmit_Click" />
    <asp:Button ID="btnClear" runat ="server" CausesValidation ="false" 
        Width="70px" BorderColor="#3D6356" BorderStyle="Solid" Font-Bold="True" 
        Text="Clear" onclick="btnClear_Click" /></td>
</tr>
<tr>
<td><asp:Label ID="lblMsg" runat ="server" Font-Bold="True" 
        Font-Size="X-Small" ForeColor="#0066FF" Visible="False" ></asp:Label></td>
</tr>

</table>
</fieldset>
</center>

</asp:Content>

