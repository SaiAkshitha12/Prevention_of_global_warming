<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmInsertPopulationDetails.aspx.cs" Inherits="Administrator_frmInsertPopulationDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
<center>
<h3>Insert Statewise Population</h3>
<fieldset id="Field1" runat ="server" style="border-style: groove; border-color: #996633; width:700px">
<legend>Enter Statewise Population Details(* Are Mandetory)</legend><br />
<table>
<tr>
<td>StateName</td><td><asp:TextBox ID="txtStateName" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVStatename" runat ="server" ControlToValidate ="txtStateName" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>Abbreviation</td><td><asp:TextBox ID="txtAbbr" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat ="server" ControlToValidate ="txtAbbr" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>Status</td><td><asp:DropDownList ID="ddlStaus" runat ="server" >
    <asp:ListItem>State</asp:ListItem>
    <asp:ListItem>Union Terrority</asp:ListItem>
    </asp:DropDownList></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat ="server" ControlToValidate ="ddlStaus" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>Capital</td><td><asp:TextBox ID="txtCapital" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat ="server" ControlToValidate ="txtCapital" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>Area</td><td><asp:TextBox ID="txtArea" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat ="server" ControlToValidate ="txtArea" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>


<tr>
<td>CF 1981</td><td><asp:TextBox ID="txtCF1981" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat ="server" ControlToValidate ="txtCF1981" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>


<tr>
<td>CF 1991</td><td><asp:TextBox ID="txtCF1991" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat ="server" ControlToValidate ="txtCF1991" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>CF 2001</td><td><asp:TextBox ID="txtCF2001" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat ="server" ControlToValidate ="txtCF2001" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td colspan="3">
<asp:Button ID="btnSubmit" runat ="server" Text="Submit" 
        onclick="btnSubmit_Click" /><asp:Button ID="bntnClear" runat ="server" 
        Text="Clear" CausesValidation ="false" onclick="bntnClear_Click" />
</td>
</tr>

<tr>
<td colspan="3"><asp:Label ID="lblMsg" runat ="server" Visible="false" ></asp:Label></td>
</tr>

<tr>
<td colspan="3"><asp:LinkButton ID="lnkCity" runat ="server" 
        CausesValidation="false" Font-Bold="True" Font-Size="Small" ForeColor="#FF3300" 
        PostBackUrl="~/Administrator/frmInsertCityPopulationDetails.aspx" >Click For Insert City Details</asp:LinkButton> </asp:Label></td>
</tr>

</table>
</fieldset>
</center>
</asp:Content>

