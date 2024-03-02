<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" Theme="Theme1"
    AutoEventWireup="true" CodeFile="frmAnnounceSchedules.aspx.cs" Inherits="Administrator_frmAnnounceSchedules"
    Title="Untitled Page" %>

<%@ Register Src="../UserControls/BrowseDocFile.ascx" TagName="BrowseDocFile" TagPrefix="uc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" runat="Server">
    <center>
        <h3 style="text-decoration: underline">
            Upload New Training Schedules</h3>
        <fieldset id="Field1" runat="server" style="border-style: groove; border-color: #996633;
            width: 700px">
            <legend>Enter Schedule Details</legend>
            <table>
                <tr>
                    <td>
                        Topic
                    </td>
                    <td>
                        <asp:TextBox ID="txtTopic" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVTopic" runat="server" ControlToValidate="txtTopic"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                    <td>
                        ArrangedDate
                    </td>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                        <cc1:CalendarExtender ID="txtDate_CalendarExtender" runat="server" Enabled="True"
                            TargetControlID="txtDate">
                        </cc1:CalendarExtender>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVDate" runat="server" ControlToValidate="txtDate"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Duration
                    </td>
                    <td>
                        <asp:TextBox ID="txtDuration" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVDuration" runat="server" ControlToValidate="txtDuration"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                    <td>
                        DateOfAnnounce
                    </td>
                    <td>
                        <asp:TextBox ID="txtAnnouce" runat="server"></asp:TextBox>
                        <cc1:CalendarExtender ID="txtAnnouce_CalendarExtender" runat="server" Enabled="True"
                            TargetControlID="txtAnnouce">
                        </cc1:CalendarExtender>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVAnnouce" runat="server" ControlToValidate="txtAnnouce"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset id="Field2" runat="server" style="border-style: groove; border-color: #996633;
            width: 700px">
            <legend>Description</legend>
            <table>
                <tr>
                    <td>
                        Description
                    </td>
                    <td>
                        <asp:TextBox ID="txtDescription" TextMode="MultiLine" runat="server" Width="519px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVDescription" runat="server" ErrorMessage="*" ControlToValidate="txtDescription"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset id="Field3" runat="server" style="border-style: groove; border-color: #996633;
            width: 700px">
            <legend>UpLoad Training Content</legend>
            <table>
                <tr>
                    <td>
                        <uc1:BrowseDocFile ID="BrowseDocFile1" runat="server" />
                    </td>
                </tr>
            </table>
        </fieldset>
        
        
        
        <fieldset id="Fieldset1" runat="server" style="border-style: groove; border-color: #996633;
            width: 700px">
            <legend>Enter Pollution Board Committe Details</legend>
            <table>
                <tr>
                    <td>
                        BoardName
                    </td>
                    <td>
                        <asp:TextBox ID="txtBoardName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBoardName"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                    <td>
                        Name
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Address
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                    <td>
                        Designation
                    </td>
                    <td>
                        <asp:TextBox ID="txtDesignation" runat="server"></asp:TextBox>
                       
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDesignation"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </fieldset>
        
        
        <fieldset id="Field4" runat="server" style="border-style: groove; border-color: #996633;
            width: 700px">
            <legend>Submit Data</legend>
            <table>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /><asp:Button
                            ID="btnReset" runat="server" Text="Reset" CausesValidation="false" OnClick="btnReset_Click" />
                    </td>
                </tr>
            </table>
        </fieldset>
        <br />
        <br />
        <br />
        <br />
        <br />
    </center>
</asp:Content>
