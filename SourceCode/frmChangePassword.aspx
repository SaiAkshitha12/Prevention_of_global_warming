<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="frmChangePassword.aspx.cs" Theme="Theme1"  Inherits="frmChangePassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
    <center>
<h3 style="text-decoration: underline">Change Password</h3>
<fieldset id="Field1" runat ="server" style="border-style: groove; border-color: #996633; width:700px">
<legend>User Can Change their Password Here (* Are Mandetory)</legend>
<table>
<tr>
<td>UserName</td><td><asp:TextBox ID="txtUserName" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVUserName" runat ="server" ControlToValidate="txtUserName" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td>Old Password</td><td><asp:TextBox ID="txtPassword" runat ="server" MaxLength="8" TextMode="Password" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat ="server" ControlToValidate="txtPassword" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td>New Password</td><td><asp:TextBox ID="txtNewPassword" runat ="server" 
        MaxLength="8" TextMode="Password" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat ="server" ControlToValidate="txtNewPassword" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td colspan="4"><asp:Button ID="btnSubmit" runat ="server" Text="Submit" 
        onclick="btnSubmit_Click" OnClientClick="return confirm('Do u Want Update Your Password!')" /><asp:Button ID="btnClear" runat ="server" Text="Clear" CausesValidation="false" /></td>
</tr>
<tr>
<td colspan="4"><asp:Label ID="lblMsg" runat ="server" Visible ="false" ></asp:Label></td>
</tr>
</table>
</fieldset>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</center>
</asp:Content>

