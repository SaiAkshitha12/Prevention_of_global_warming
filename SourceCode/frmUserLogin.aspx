<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" Theme="Theme1" EnableEventValidation="false"  AutoEventWireup="true" CodeFile="frmUserLogin.aspx.cs" Inherits="Administrator_frmUserLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">

<center>

<br /><br /><br /><br /><br /><br />
<h4 style="text-decoration: underline">Login Here</h4>
<fieldset id="Field1" runat ="server" 
        style="border-style: groove; border-color: #996633; width:240px" >
        <table><tr><td><asp:RadioButtonList ID="RBListRole" runat ="server" 
                RepeatDirection="Horizontal" >
            <asp:ListItem Selected="True">Admin</asp:ListItem>
            <asp:ListItem>GMember</asp:ListItem>
            <asp:ListItem>Counselor</asp:ListItem>
            </asp:RadioButtonList></td></tr></table>
<table>
<tr><td>UserName</td><td><asp:TextBox ID="txtUserName" runat="server" 
          ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVUserName" runat ="server" ControlToValidate="txtUserName" ErrorMessage ="*"></asp:RequiredFieldValidator></td></tr>
<tr><td>Password</td><td>
    <asp:TextBox ID="txtPassword" runat ="server" TextMode="Password"
        MaxLength="8" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVPassword" runat ="server" ControlToValidate ="txtPassword" ErrorMessage ="*"></asp:RequiredFieldValidator></td></tr>
<tr><td colspan ="3" align="right" >
    <asp:Button ID="btnSubmit" runat ="server" 
        Text ="Login" onclick="btnSubmit_Click" OnClientClick="CallJS('Demo()')"  />
    <asp:Button ID="btnReset" 
        runat ="server" Text ="Reset" CausesValidation ="false" onclick="btnReset_Click" 
          /></td></tr>
        <tr align="right" >
        <td colspan="2" align="right" ><asp:LinkButton ID="lnkOfficerReg" runat ="server" CausesValidation="false" PostBackUrl="~/frmNGOMasterInsert.aspx" >NGO Registration</asp:LinkButton></td>
        </tr>
        
        <tr align="right" >
        <td colspan="2" align="right" ><asp:LinkButton ID="lnkStudentReg" runat ="server" CausesValidation="false" PostBackUrl="~/frmGroupMemberRegistration.aspx" >Member Registration</asp:LinkButton></td>
        </tr>
        
        
</table>
</fieldset>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</center> 
</asp:Content>

