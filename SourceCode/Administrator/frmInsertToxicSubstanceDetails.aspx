<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmInsertToxicSubstanceDetails.aspx.cs" Inherits="Administrator_frmInsertToxicSubstanceDetails" Theme="Theme1"  Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
<center>
<h3>Insert Toxic Substances Details</h3>
<fieldset id="Field1" runat ="server" style="border-style: groove; border-color: #996633;width: 700px">
<legend>Toxic Substance Details</legend>
<table>
<tr>
<td>Substance Name</td><td><asp:TextBox ID="txtSubStanceName" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVSubStanceName" runat ="server" ErrorMessage="*" ControlToValidate="txtSubstanceName"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td>Quantity</td><td><asp:TextBox ID="txtQuantity" runat="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVQuanity" runat ="server" ControlToValidate="txtQuantity" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>
<tr><td>
CAS No</td><td><asp:TextBox ID="txtCASNo" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVCAS" runat ="server" ControlToValidate ="txtCASNo" ErrorMessage ="*"></asp:RequiredFieldValidator></td><td>Chemical Abstract Service No</td>
</tr>
<tr>
<td colspan="3">
<fieldset id="Field2" runat ="server" style="border-style: groove; border-color: #996633;width: 250px">
<legend>Select Substace Type From Here</legend>
<table>
<tr>
<td align="left" ><asp:RadioButtonList ID="RBListSubstaces" runat ="server" Font-Bold="True" 
        Font-Size="X-Small" ForeColor="#3366FF" ></asp:RadioButtonList></td>
</tr>
</table>
</fieldset>
</td>
</tr>
<tr>
<td colspan="3"><asp:Button ID="btnSubmit" runat ="server" Text="Submit" 
        onclick="btnSubmit_Click" /><asp:Button ID="btnClear" runat ="server" 
        Text="Clear" CausesValidation="false" onclick="btnClear_Click" /></td>
</tr>
</table>
<tr><td colspan ="4"><asp:Label ID="lblMsg" runat ="server" Visible ="false" Font-Bold="True" 
        Font-Size="X-Small" ForeColor="#3366FF" ></asp:Label></td></tr>
</fieldset>

</center>
</asp:Content>

