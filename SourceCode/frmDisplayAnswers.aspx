<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true"
    CodeFile="frmDisplayAnswers.aspx.cs" Inherits="frmDisplayAnswers" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" runat="Server">
    <h3>
        Display Query Answers</h3>
    <center>
        <fieldset id="Field1" runat="server" style="border-style: groove; border-color: #996633;
            width: 640px">
           <table>
                <tr>
                    <td>
                        <asp:GridView ID="GRVSuggestions" runat="server" ShowHeader="false"  AutoGenerateColumns="false">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <table>
                                            <tr>
                                                <td colspan="2" align="left" style="background-color: #BA1715; color: #E3E3E1; font-weight: bold;
                                                    width: 598px;">
                                                    <asp:Label ID="lblQuery" runat="server" Text='<%#Eval("QueryText") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                            <td align="left" width="100px" >
                                            PostedDate
                                            </td>
                                           <td align="left" ><asp:Label ID="lblPostedDate" runat ="server" Text='<%#Eval("DateOfSend") %>' ></asp:Label></td>
                                            </tr>
                                            
                                            
                                            <tr>
                                            <td align="left" width="100px" >
                                            GuestName
                                            </td>
                                           <td align="left" ><asp:Label ID="lblGuestName" runat ="server" Text='<%#Eval("Name") %>' ></asp:Label></td>
                                            </tr>
                                            
                                            <tr>
                                            <td align="left" width="100px" >
                                           Solution
                                            </td>
                                           <td align="left" ><asp:Label ID="lblSolution" runat ="server" Text='<%#Eval("AnswerText") %>' ></asp:Label></td>
                                            </tr>
                                            
                                            <tr>
                                            <td align="left" width="100px" >
                                            ReplayedBy
                                            </td>
                                           <td align="left" ><asp:Label ID="lblFirstName" runat ="server" Text='<%#Eval("FName") %>' ></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" align="left" style="background-color: #BA1715; color: #E3E3E1; font-weight: bold;
                                                    width: 598px;">                                                
                                                </td>
                                            </tr>
                                        </table>
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
