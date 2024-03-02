<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master"   AutoEventWireup="true" CodeFile="frmPostNewsArticles.aspx.cs" Inherits="Administrator_frmPostNewsArticles" Title="Untitled Page" %>

<%@ Register src="../UserControls/BrowseImage.ascx" tagname="BrowseImage" tagprefix="uc1" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
    <center>
<h3>Post Latest News</h3>
<fieldset id="field1" runat ="server" style="border-style: groove; border-color: #996633; width:700px">
<legend>Insert News Types(* are Mandetory)</legend>
<table>
<tr>
<td>NewsType</td><td><asp:TextBox ID="txtNewsType" runat ="server" 
        Font-Names="Verdana"  style="float:right;border:1px solid #000; background-color:#f1f1f1;" 
                                            ValidationGroup="g1" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVNewsTypes" runat ="server" ControlToValidate ="txtNewsType" ErrorMessage="*"></asp:RequiredFieldValidator></td>
<td></td>
<td>Description</td><td>
    <asp:TextBox ID="txtDescription" runat ="server" 
        TextMode="MultiLine" Font-Names="Verdana"  
                                            style="float:right;border:1px solid #000; background-color:#f1f1f1;" 
                                            ValidationGroup="g1" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVDesc" runat ="server" ControlToValidate="txtDescription" ErrorMessage="*"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td colspan ="7"><asp:Button ID="btnInsert" runat ="server" Text="Submit" 
        Width="70px" BorderColor="#3D6356" BorderStyle="Solid" Font-Bold="True" 
        onclick="btnInsert_Click" ValidationGroup="g1"  /><asp:Button ID="btnBack" runat ="server" 
        Text="Click for News Details" CausesValidation ="false"  
        BorderColor="#3D6356" BorderStyle="Solid" Font-Bold="True" 
        onclick="btnBack_Click"  /></td>
</tr>
</table>
</fieldset>
<br />
<fieldset id="field2" runat ="server" visible="false"   style="border-style: groove; border-color: #996633; width:700px">
<legend>Post News Details</legend>
<table>

<tr>
<td valign="top">Topic</td><td><asp:TextBox ID="txtTopic" runat ="server" Width="400px" TextMode="MultiLine" Height="50px" Font-Names="Verdana"  style="float:right;border:1px solid #000; background-color:#f1f1f1;" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTopic" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td valign="top">News Content</td><td><asp:TextBox ID="txtNewsContent" runat ="server" Width="400px" TextMode="MultiLine" Height="50px" Font-Names="Verdana"  style="float:right;border:1px solid #000; background-color:#f1f1f1;" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVNewsContent" runat="server" ControlToValidate="txtNewsContent" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td valign="top">News Links</td><td><asp:TextBox ID="txtNewsLinks" runat ="server" Width="400px" TextMode="MultiLine" Height="50px" Font-Names="Verdana"  style="float:right;border:1px solid #000; background-color:#f1f1f1;" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNewsLinks" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>Posted Date</td><td align="left"><asp:TextBox ID="txtDate" runat ="server" Font-Names="Verdana"  style="border:1px solid #000; background-color:#f1f1f1;" ></asp:TextBox>
    <cc1:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
        Enabled="True" TargetControlID="txtDate">
    </cc1:CalendarExtender>
    </td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDate" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td valign="top">Related Links</td><td><asp:TextBox ID="txtRelatedLinks" runat ="server" Font-Names="Verdana"  style="float:right;border:1px solid #000; background-color:#f1f1f1;" Width="400px" TextMode="MultiLine" Height="50px" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRelatedLinks" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>News Type</td><td align="left"><asp:DropDownList ID="ddlNewsType" Width="181px" Font-Names="Verdana" runat ="server" style="border:1px solid #000; background-color:#f1f1f1;"  ></asp:DropDownList></td><td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlNewsType" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>
</table>
<fieldset id="Field3" runat ="server" style="border-style: groove; border-color: #996633; width:350px">
<legend>Upload Image</legend>
<table>
<tr><td>
    <uc1:BrowseImage ID="BrowseImage1" runat="server" />
    </td></tr>
</table>
</fieldset>
<table>
<tr>
<td><asp:Button ID="btnSubmit" runat ="server" Text="Submit" Width="70px" 
        BorderColor="#3D6356" BorderStyle="Solid" Font-Bold="True" 
        onclick="btnSubmit_Click" CausesValidation="False"  />
    <asp:Button ID="btnClear" runat="server" Text="Reset" Width="70px" 
        BorderColor="#3D6356" BorderStyle="Solid" Font-Bold="True" 
        onclick="btnClear_Click"  /></td>
</tr>
</table>
</fieldset>
</center>


</asp:Content>

