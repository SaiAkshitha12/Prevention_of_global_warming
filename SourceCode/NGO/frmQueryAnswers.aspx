<%@ Page Language="C#" MasterPageFile="~/NGO/NGOMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmQueryAnswers.aspx.cs" Inherits="NGO_frmQueryAnswers" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
    <h3>Provide Answers for Quereis</h3>
<center>
<fieldset id="Fieldset2" runat ="server"  
        style="border-style: groove; border-color: #996633; width:640px" >
<table>
<tr><td align="left" ><asp:GridView ID="grvQuereis" runat ="server" 
        AutoGenerateColumns="false" onrowcommand="grvQuereis_RowCommand" >
<Columns >

<asp:TemplateField HeaderText="Provide Answer for these Questions Click Question?">
<ItemTemplate>
<asp:LinkButton ID="lnkQuestion" runat ="server" Text='<%#Eval("QueryText") %>' CommandArgument='<%#Eval("QueryId") %>'></asp:LinkButton>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView></td></tr>
</table>
</fieldset> 


<fieldset id="Field1" runat ="server" visible="false" 
        style="border-style: groove; border-color: #996633; width:640px" >
<table>
<tr><td align="left" valign="top" >Type Your Answer</td><td align="left" >
    <asp:TextBox ID="txtAnswerText" runat ="server" TextMode="MultiLine" 
        Width="504px" Height="173px" ></asp:TextBox><asp:RequiredFieldValidator ID="RFVQuery" runat ="server" ControlToValidate="txtAnswerText" ErrorMessage ="*"></asp:RequiredFieldValidator></td></tr>
        
 
     <tr><td align="right" colspan="2" ><asp:Button ID="btnSubmit" runat ="server" 
             Text="Submit Your Answer" onclick="btnSubmit_Click" /></td> </tr> 
     <tr><td align="right" colspan="2" ><asp:Label ID="lblMsg" runat ="server" Visible="false"></asp:Label></td> </tr> 

</table>


</fieldset>
</center>
</asp:Content>

