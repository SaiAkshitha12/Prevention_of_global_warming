<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmGroupMemberRegistration.aspx.cs" Inherits="frmGroupMemberRegistration" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<%@ Register src="UserControls/BrowseImage.ascx" tagname="BrowseImage" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
    <center>
<h3 style="text-decoration: underline">Group Members Registration Form</h3>

<fieldset id="Field1" runat ="server" style="border-style: groove; border-color: #996633; width:700px">
<legend>* Are Mandetory</legend>
<table>
<tr>
<td>FirstName</td><td><asp:TextBox ID="txtFirstName" runat ="server" Width="181px" 
        Font-Names="Verdana" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVFirstName" runat ="server" ControlToValidate ="txtFirstName" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
<td></td>
<td>MiddleName</td><td><asp:TextBox ID="txtMiddleName" runat ="server" Width="181px"  ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVMiddleName" runat ="server" ControlToValidate ="txtMiddleName" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>LastName</td><td><asp:TextBox ID="txtLastName" runat ="server" Width="181px"   ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVLastName" runat ="server" ControlToValidate ="txtLastName" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
<td></td>
<td>DateOfBirth</td>
<td><asp:TextBox ID="txtDOB" runat ="server" Width="181px" ></asp:TextBox>
    <cc1:CalendarExtender ID="txtDOB_CalendarExtender" runat="server" 
        Enabled="True" TargetControlID="txtDOB">
    </cc1:CalendarExtender>
    </td><td><asp:RequiredFieldValidator ID="RFVDOB" runat ="server" ControlToValidate ="txtDOB" ErrorMessage ="*"></asp:RequiredFieldValidator> </td>
</tr>

<tr>
<td>Emaild</td><td><asp:TextBox ID="txtEmailId" runat ="server" Width="181px" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVEmailId" runat ="server" ControlToValidate ="txtEmailId" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
<td></td>
<td>Qualification</td><td><asp:DropDownList ID="ddlQualification" Width="181px" runat ="server" >
    <asp:ListItem>Qualification</asp:ListItem>
    <asp:ListItem>M.Tech</asp:ListItem>
    <asp:ListItem>B.Tech</asp:ListItem>
    <asp:ListItem>MCA</asp:ListItem>
    <asp:ListItem>BCA</asp:ListItem>
    <asp:ListItem>BSc</asp:ListItem>
    <asp:ListItem>MCom</asp:ListItem>
    <asp:ListItem>MSc</asp:ListItem>
    <asp:ListItem>MBBS</asp:ListItem>
    <asp:ListItem>Others</asp:ListItem>
    <asp:ListItem></asp:ListItem>
    </asp:DropDownList></td><td><asp:RequiredFieldValidator ID="RFVQualification" ErrorMessage ="*" runat ="server" ControlToValidate ="ddlQualification" ></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>Address</td><td><asp:TextBox ID="txtAddress" runat ="server" TextMode="MultiLine"  ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVAddress" runat ="server" ControlToValidate ="txtAddress" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
<td></td>
<td>PhoneNo</td><td><asp:TextBox ID="txtPhoneNo" runat ="server" Width="181px" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVPhoneNo" ErrorMessage ="*" runat ="server" ControlToValidate ="txtPhoneNo" ></asp:RequiredFieldValidator></td>
</tr>
</table>
</fieldset>

<fieldset id="Field2" runat ="server" style="width:700px;border-style: groove; border-color: #996633;">
<legend >Members Please UpLoad Your Photo</legend>
<table>
<tr>
<td><uc1:BrowseImage ID="BrowseImage1" runat="server" /></td>
</tr>
    </table>
</fieldset>

<fieldset id="Field3" runat ="server" style="width:700px;border-style: groove; border-color: #996633;">
<legend>Login Information</legend>
<table>
<tr>
<td>UserName</td><td><asp:TextBox ID="txtUserName" runat ="server" Width="181px"></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RfvUserName" runat ="server" ControlToValidate ="txtUserName" ErrorMessage="*"></asp:RequiredFieldValidator></td>
<td></td>
<td>Password</td><td><asp:TextBox ID="txtPassword" TextMode="Password" runat ="server" Width="181px" MaxLength="8"></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVpassword" runat ="server" ControlToValidate ="txtPassword" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>HintQuestion</td><td><asp:DropDownList ID="ddlHintQuestion" Width="181px" runat ="server" >
    <asp:ListItem>Choose Your Question</asp:ListItem>
    <asp:ListItem>What is your Favourate Food?</asp:ListItem>
    <asp:ListItem>Your School Name?</asp:ListItem>
    <asp:ListItem>Mothers Name Plz?</asp:ListItem>
    <asp:ListItem>Your Mobile Number?</asp:ListItem>
    </asp:DropDownList></td><td><asp:RequiredFieldValidator ID="RFVHintQuestion" ErrorMessage ="*" runat ="server" ControlToValidate ="ddlHintQuestion" ></asp:RequiredFieldValidator></td>
<td></td>
<td>Answer</td><td><asp:TextBox ID="txtAnswer" runat ="server" Width="181px" MaxLength="12"></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVAnswer" runat ="server" ControlToValidate ="txtAnswer" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>
</table>
</fieldset>
<fieldset id="Field4" runat ="server" style="width:700px;border-style: groove; border-color: #996633;">
<legend>Submit Data</legend>
<table>
<tr>
<td><asp:Button ID="btnSubmit" runat ="server" Text="Submit" 
        onclick="btnSubmit_Click1" OnClientClick="return confirm('Are You Sure all the details are Correct!')" /><asp:Button ID="btnClear" runat ="server" 
        Text ="Clear" CausesValidation="false" onclick="btnClear_Click" /></td>
</tr>
</table>
</fieldset>
</center>
</asp:Content>

