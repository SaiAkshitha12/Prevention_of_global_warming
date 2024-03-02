<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmInsertCityPopulationDetails.aspx.cs" Inherits="Administrator_frmInsertCityPopulationDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
<center>
<h3>Upload City Population Details</h3><br /><br /><br /><br />

<fieldset id="Field1" runat ="server" style="border-style: groove; border-color: #996633; width:700px">
<legend>City Population</legend>
<table>
<tr>
<td>CityName</td><td><asp:TextBox ID="txtCityName" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVCityName" runat ="server" ErrorMessage="*" ControlToValidate="txtCityName"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>CF1991</td><td><asp:TextBox ID="txtCF1991" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat ="server" ErrorMessage="*" ControlToValidate="txtCF1991"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>CF2001</td><td><asp:TextBox ID="txtCF2001" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat ="server" ErrorMessage="*" ControlToValidate="txtCF2001"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>Select State</td><td align="left" ><asp:DropDownList ID="ddlStateName" runat ="server" ></asp:DropDownList></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat ="server" ErrorMessage="*" ControlToValidate="ddlStateName"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td colspan="3">
<asp:Button ID="btnSubmit" runat ="server" Text="Submit" onclick="btnSubmit_Click" 
         />
    <asp:Button ID="bntnClear" runat ="server" 
        Text="Clear" CausesValidation ="false" onclick="bntnClear_Click" />
</td>
</tr>

<tr>
<td colspan="3"><asp:Label ID="lblMsg" runat ="server" Visible="false" ></asp:Label></td>
</tr>

</table>
</fieldset>
<br /><br /><br /><br />
<br /><br /><br /><br />
<br /><br /><br /><br />
<br /><br /><br /><br />
</center>
</asp:Content>

