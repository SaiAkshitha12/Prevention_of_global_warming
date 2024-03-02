<%@ Page Language="C#" Theme="Theme1"  MasterPageFile="~/NGO/NGOMasterPage.master" AutoEventWireup="true" CodeFile="frmNGOShowInboxDetails.aspx.cs" Inherits="AgricultureOfficer_frmOfficersShowInboxDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
 <center>
<fieldset id="Field1" runat ="server" style="width:600px">
<legend>Read Your Mails</legend>

        <br />
        <br />
        <table width="80%" border="1" style="border-color: #5A5D5A; border-width: 1px;">
            <tr>
                <td bgcolor="#E7B642">
                    <br />
                    <center >
                       Show Details </center>
                </td>
            </tr>
            <tr>
            <td>
            <br />
            </td>
            </tr>
            <tr>
            
            <td align="left">
            <h4>
             <a href="frmNGOInBox.aspx" >Back</a>
             </h4>
            </td>
            </tr>
            <tr>
                <td>
                    <br />
                    
                   
                    
                   <table width="100%">
                   <tr>
                   <td>
                   <asp:GridView ID="GridInboxdetails" Width="100%" runat="server" CellPadding="4" 
                           ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" 
                           onrowcommand="GridInboxdetails_RowCommand" >
                       <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                       <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                       <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                       <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                       <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                       <EditRowStyle BackColor="#999999" />
                       <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                       <Columns>
                       <asp:TemplateField>
                       <ItemTemplate>
                       <table style="text-align:left">
                       <tr>
                       <td>
                       Subject :
                       </td>
                       <td>
                       <asp:TextBox ID="txtSubject" Text='<%#Eval("emailsubjecttext") %>' runat="server" Width="350px"></asp:TextBox>
                       </td>
                       </tr>
                        <tr>
                       <td>
                      Body :
                       </td>
                       <td>
                       <asp:TextBox ID="txtBody" runat="server" Height="100px" Text='<%#Eval("emailbodymsg") %>' TextMode="MultiLine" Width="350px"></asp:TextBox>
                       </td>
                       </tr>
                       <tr>
                       <td>
                       Attach File : 
                       </td>
                       <td>
                       <asp:LinkButton ID="linkAttach" Text='<%#Eval("EmailAttachFileName") %>' CommandArgument='<%#Eval("Emailid") %>' runat="server">
                       </asp:LinkButton>
                       </td>
                       </tr>
                       </table>
                       </ItemTemplate>
                       </asp:TemplateField>
                       </Columns>
                       </asp:GridView>
                   </td>
                   </tr>
                   <tr>
                   <td align="left">
                   <table style="text-align:left">
                 
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
    </center>
    </fieldset>
</asp:Content>

