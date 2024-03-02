<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="frmUploadQueries.aspx.cs" Inherits="frmUploadQueries" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
<h3>Upload New Queries</h3>
<center>
<fieldset id="Field1" runat ="server" 
        style="border-style: groove; border-color: #996633; width:640px" >
<table>
<tr><td align="left" valign="top" >Type Your Query</td><td align="left" >
    <asp:TextBox ID="txtQueryText" runat ="server" TextMode="MultiLine" 
        Width="504px" Height="173px" ></asp:TextBox><asp:RequiredFieldValidator ID="RFVQuery" runat ="server" ControlToValidate="txtQueryText" ErrorMessage ="*"></asp:RequiredFieldValidator></td></tr>
        
 <tr><td align="left" >Your Name</td><td align="left" ><asp:TextBox ID="txtName" Width="254px" runat="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RFVName" runat ="server" ErrorMessage ="*" ControlToValidate="txtName"></asp:RequiredFieldValidator></td></tr>
 
  <tr><td align="left" >DateOfSend</td><td align="left" ><asp:TextBox ID="txtDate" Width="254px" runat="server" ></asp:TextBox>
      <cc1:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
          Enabled="True" TargetControlID="txtDate">
      </cc1:CalendarExtender>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat ="server" ErrorMessage ="*" ControlToValidate="txtDate"></asp:RequiredFieldValidator></td></tr>
     <tr><td align="right" colspan="2" ><asp:Button ID="btnSubmit" runat ="server" 
             Text="Send Query" onclick="btnSubmit_Click" /></td> </tr> 
     <tr><td align="right" colspan="2" ><asp:Label ID="lblMsg" runat ="server" Visible="false"></asp:Label></td> </tr> 

</table>


</fieldset>
</center>
</asp:Content>

