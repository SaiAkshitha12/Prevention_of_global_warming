﻿<%@ Page Language="C#" Theme="Theme1"  MasterPageFile="~/NGO/NGOMasterPage.master" AutoEventWireup="true" CodeFile="frmNGOOutBox.aspx.cs" Inherits="AgricultureOfficer_frmOfficersOutBox" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
<center>
<fieldset id="Field1" runat ="server" style="width:600px">
<legend>Check Your OutBox</legend>

 <asp:UpdatePanel ID="panel1" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="GridInboxdetails" EventName="RowCommand" />
                <asp:AsyncPostBackTrigger ControlID="btnDelete" EventName="Click" />               
            </Triggers>
            <ContentTemplate>       
        <br />
        <br />
        <table width="80%" border="1" style="border-color: #5A5D5A; border-width: 1px;">
            <tr>
                <td bgcolor="#E7B642">
                    <br />
                    <center >
                        Find Your Outbox Mails</center>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                   <table width="100%">
                   <tr>
                   <td>
                   <asp:Button ID="btnInbox" runat ="server" 
                           PostBackUrl="~/NGO/frmNGOInBox.aspx" 
                           CausesValidation="false" Text="Inbox" />
            <asp:Button ID="btnOutBox" runat ="server" CausesValidation="false" 
                           PostBackUrl ="~/NGO/frmNGOOutBox.aspx"  Text="OutBox" />
            <asp:Button ID="btnCompose" runat ="server" CausesValidation ="false" Text="Compose" 
                           PostBackUrl="~/NGO/frmNGOComposeMails.aspx" />
                   </td>
                   </tr>
                   <tr>
                   
                   <td>
                   <asp:GridView ID="GridInboxdetails" Width="100%" runat="server" CellPadding="4" 
                           ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" 
                           ShowHeader="false" 
                            EmptyDataText="No Emails " onrowcommand="GridInboxdetails_RowCommand">
                       <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                       <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                       <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                       <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                       <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                       <EditRowStyle BackColor="#999999" />
                       <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                       <Columns>
                       <asp:TemplateField ControlStyle-Width="5%" HeaderStyle-Width="5%">
                       <HeaderTemplate>
                       <asp:CheckBox ID="chkSelectAll" runat="server" Text="SelectAll" AutoPostBack="true" />
                       </HeaderTemplate>
                       <ItemTemplate>
                        <asp:CheckBox ID="chk1" runat="server" />
                       </ItemTemplate>

<ControlStyle Width="5%"></ControlStyle>
                           <HeaderStyle Width="5%" />
                       </asp:TemplateField>
                       <asp:TemplateField ControlStyle-Width="20%" HeaderText="SenderName" >
                       <ItemTemplate>
                       <asp:LinkButton ID="linkSendername"  ForeColor="black" runat="server" Text='<%#Eval("UserName") %>' CommandArgument='<%#Eval("EmailId") %>'></asp:LinkButton> 
                        <asp:Label ID="lblReadstatus" runat="server" Text='<%#Eval("EmailReadStatus") %>' Visible="false"></asp:Label>
                         <asp:Label ID="lblid" runat="server" Text='<%#Eval("EmailId") %>' Visible="false"></asp:Label>
                       </ItemTemplate>

<ControlStyle Width="20%"></ControlStyle>
                       </asp:TemplateField>
                           <asp:TemplateField ControlStyle-Width="50%" ItemStyle-Width="50%" HeaderText="Subject">
                       <ItemTemplate>
                       <asp:LinkButton  ID="linksubject"  ForeColor="black" runat="server" Text='<%#Eval("emailsubjecttext") %>' CommandArgument='<%#Eval("EmailId") %>'></asp:LinkButton> 
                       </ItemTemplate>

<ControlStyle Width="50%"></ControlStyle>
                               <ItemStyle Width="50%" />
                       </asp:TemplateField>
                        <asp:TemplateField ControlStyle-Width="25%" HeaderText="Date">
                       <ItemTemplate>
                       <asp:LinkButton  ID="linkDate"  ForeColor="black" runat="server" Text='<%#Eval("Date") %>' CommandArgument='<%#Eval("EmailId") %>'></asp:LinkButton>
                       </ItemTemplate>

<ControlStyle Width="25%"></ControlStyle>
                       </asp:TemplateField>
                       </Columns>
                       </asp:GridView>
                   </td>
                   </tr>
                   <tr>
                   <td align="left">
                   <table style="text-align:left">
                   <tr>
                   <td align="left">
                   <asp:Button ID="btnDelete" runat="server" Text="Delete" Enabled="false"  /> 
                   </td>
                   </tr>
                   </table>
                   </td>
                   </tr>
                   </table>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <center>
                        <asp:Label ID="lblMsg" runat="server"></asp:Label></center>
                </td>
            </tr>
            <tr>
                <td bgcolor="#E7B642">
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        </ContentTemplate>
        </asp:UpdatePanel>
    </center>
    </fieldset>
</asp:Content>

