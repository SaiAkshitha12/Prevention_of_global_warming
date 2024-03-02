<%@ Page Language="C#" MasterPageFile="~/NGO/NGOMasterPage.master" AutoEventWireup="true"
    CodeFile="frmBrowseNewsStories.aspx.cs" Inherits="NGO_frmBrowseNewsStories" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" runat="Server">
    <center>
        <h3>
            News Letters From Administrator</h3>
        <fieldset id="Field1" runat="server" style="border-style: groove; border-color: #996633;
            width: 700px">
            <legend>Browse News Stories</legend>
            <table>
                <tr>
                    <td align="left" >
                        <asp:GridView ID="GRVNewsLetter" runat="server" AutoGenerateColumns="false" Font-Bold="True"
                            Font-Size="Small" ForeColor="#0066FF" ShowHeader="False" 
                            onrowcommand="GRVNewsLetter_RowCommand">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkTitle" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Green" Text='<%#Eval("Title") %>' CommandName="NewsLetterId" CommandArgument='<%#Eval("NewsLetterId") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblDate" runat="server" Text='<%#Eval("PostedDate") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblTopic" runat="server" Text='<%#Eval("Topic")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </fieldset>
    </center>
</asp:Content>
