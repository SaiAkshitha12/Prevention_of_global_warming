<%@ Page Language="C#" MasterPageFile="~/NGO/NGOMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmPublishSchedules.aspx.cs" Inherits="NGO_frmPublishSchedules" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
    <center>
        <h3>
            Training Schedule Details</h3>
        <fieldset id="Field1" runat="server" style="border-style: groove; border-color: #996633;
            width: 700px">
            <legend>Schedule Topics</legend>
            <table>
                <tr>
                    <td>
                        <asp:GridView ID="GRVSchedules" runat="server" AutoGenerateColumns="false" 
                            onrowcommand="GRVSchedules_RowCommand">
                            <Columns>
                                <asp:TemplateField HeaderText="Select Schedule Names">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkScheduleName" Text='<%# Eval("Topic") %>' Font-Bold="true"
                                            CommandArgument='<%# Eval("ScheduleId") %>' CommandName="ScheduleId" runat="server"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </fieldset>
        <br />
        <br />
        <br />
        <fieldset id="Field2" runat="server" visible="false"  style="border-style: groove; border-color: #996633;
            width: 700px">
            <legend>Schedule Details</legend>
            <table>
                <tr>
                    <td align="right">
                        Topic:
                    </td>
                    <td align="left">
                        <asp:Label ID="lblScheduleTopic" runat="server" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        ScheduleDate:
                    </td>
                    <td align="left">
                        <asp:Label ID="lblArrangedDate" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Duration:
                    </td>
                    <td align="left">
                        <asp:Label ID="lblDuration" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" valign="top">
                        Description:
                    </td>
                    <td align="left">
                        <asp:Label ID="lblDescription" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        AnnouncedDate:
                    </td>
                    <td align="left">
                        <asp:Label ID="lblAnnounced" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Conducted By:
                    </td>
                    <td align="left">
                        <asp:Label ID="lblConductedBoard" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Name:
                    </td>
                    <td align="left">
                        <asp:Label ID="lblName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Address:
                    </td>
                    <td align="left">
                        <asp:Label ID="lblAddress" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="height: 24px">
                        Designation:
                    </td>
                    <td align="left" style="height: 24px">
                        <asp:Label ID="lblDesignation" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr><td align="right">Attachment:</td><td align="left" ><asp:LinkButton ID="lnkAttachment" 
                                            runat ="server" onclick="lnkAttachment_Click" Font-Bold="True" 
                                            Font-Size="Small" ForeColor="Blue" >Click For DownLoad!</asp:LinkButton></td></tr>
                <tr>
                    <td colspan="2" align="right">
                        Schedules cannot Postpone at any cost!
                    </td>
                </tr>
                <tr><td colspan="2"><asp:Label ID="lblMsg" runat ="server" Visible="false"></asp:Label></td></tr>
            </table>
        </fieldset>
    </center>
</asp:Content>

