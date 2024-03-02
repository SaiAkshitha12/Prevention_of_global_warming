<%@ Page Language="C#" Theme="Theme1" MasterPageFile="~/NGO/NGOMasterPage.master" AutoEventWireup="true" CodeFile="frmNGOComposeMails.aspx.cs" Inherits="AgricultureOfficer_frmOfficerComposeMails" Title="Untitled Page" %>

<%@ Register src="../UserControls/BrowseFile.ascx" tagname="BrowseFile" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
    <center>
<h3 style="text-decoration: underline; text-align: center">Sending Mails</h3>
<br />
<fieldset id="Field1" runat ="server" style="width:600px">
<legend>Compose Mail</legend>
<table width="80%" border="1" style="border-color: #5A5D5A; border-width: 1px;">
            <tr>
                <td bgcolor="#E7B642">
                    <br />
                    <center >
                        Compose a Mail Here </center>
                </td>
            </tr>
            <tr>
            <td><asp:Button ID="btnInbox" runat ="server" 
                    PostBackUrl="~/NGO/frmNGOInBox.aspx" 
                    CausesValidation="false" Text="Inbox" />
            <asp:Button ID="btnOutBox" runat ="server" CausesValidation="false" 
                    PostBackUrl="~/NGO/frmNGOOutBox.aspx" Text="OutBox" />
            </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                    <table>
                    <%--<tr>
                    <td>
                    Select Emails :
                    </td>
                    <td colspan="2">
                        Aggriculture Officers&nbsp; :
                        <asp:DropDownList ID="ddlOfficerMailIds" runat ="server" ></asp:DropDownList>
                    
                    </td>
                    </tr>--%>
                    <tr>
                            <td style="text-align: left" valign="top">
                                To  :</td>
                            <td style="text-align: left">
                                <asp:DropDownList ID="ddlStudentMailId" runat="server" Width="350px"></asp:DropDownList>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ControlToValidate="ddlStudentMailId" ID="RequiredFieldValidator3" 
                                    runat="server" ErrorMessage="*" InitialValue="--Select EmailId--"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                            </td>
                        </tr>
                    
                    <tr>
                            <td style="text-align: left" valign="top">
                                Subject  :</td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtsubject" runat="server" Width="350px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ControlToValidate="txtsubject" ID="RequiredFieldValidator2"
                                    runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left" valign="top">
                                Body&nbsp; :</td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtbody" runat="server" Height="120px" TextMode="MultiLine" 
                                    Width="350px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ControlToValidate="txtbody" ID="RequiredFieldValidator1"
                                    runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                &nbsp;
                            </td>
                            <td style="text-align: left">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                        <td>
                        Attachment File :
                        </td>
                            <td style="text-align: left" colspan="2" >
                                 
                               
                                
                               
                                <uc1:BrowseFile ID="BrowseFile1" runat="server" />
                                 
                               
                                
                               
                            </td>
                            <td>
                            
                            </td>
                            
                        </tr>
                        <tr>
                            <td style="text-align: right" class="style7" colspan="2">
                              
                            </td>
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" colspan="2">
                                fields marked with ( * ) are mandetory
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right" colspan="2">
                                <asp:Button ID="btnSubmit" runat="server" Text="Send" OnClick="btnSubmit_Click"
                                    Style="font-weight: 700" />&nbsp;&nbsp;
                                </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
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
</fieldset>
</center>
</asp:Content>

