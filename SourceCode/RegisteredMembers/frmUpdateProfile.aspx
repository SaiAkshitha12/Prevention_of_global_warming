<%@ Page Language="C#" MasterPageFile="~/RegisteredMembers/MemberMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmUpdateProfile.aspx.cs" Inherits="RegisteredMembers_frmUpdateProfile" Title="Untitled Page" %>

<%@ Register src="../UserControls/BrowseImage.ascx" tagname="BrowseImage" tagprefix="uc1" %>

<%@ Register src="../UserControls/BindImage.ascx" tagname="BindImage" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
    <center>
        <h3 style="text-decoration: underline; text-align: center">
            Group Member Profile</h3>
               <br />
        <fieldset id="Field4" runat ="server" style="border-style: groove; border-color: #996633;width: 700px">
        <legend>Member Photo</legend>
        <table align="left" >
        <tr  ><td align="left"  >
            <uc2:BindImage ID="BindImage1" runat="server" />
            </td></tr>
        </table>
            </fieldset>
        <fieldset id="Field1" runat="server" style="border-style: groove; border-color: #996633;
            width: 700px">
            <legend>Group Member Personal Information</legend>
            <table>
                <tr>
                    <td>
                        Member Id
                    </td>
                    <td>
                        <asp:Label ID="lblMemberId" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        FirstName
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVFirstName" runat="server" ControlToValidate="txtFirstName"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                    <td>
                        MiddleName
                    </td>
                    <td>
                        <asp:TextBox ID="txtMiddleName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVMiddleName" runat="server" ControlToValidate="txtMiddleName"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        LastName
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVLastName" runat="server" ControlToValidate="txtLastName"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                    <td>
                        Address
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVAddress" runat="server" ControlToValidate="txtAddress"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        PhoneNo
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVPhone" runat="server" ControlToValidate="txtPhone"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                    <td>
                        EmailId
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVEmailId" ErrorMessage="*" runat="server" ControlToValidate="txtEmailId"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
            </table>
        </fieldset>
        <h4>
            Change Photograph</h4>
        <fieldset id="field2" runat="server" style="border-style: groove; border-color: #996633;
            width: 700px">
            <legend>Change Phtograph</legend>
            <table>
                <tr>
                    <td>
                        <uc1:BrowseImage ID="BrowseImage1" runat="server" />
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset id="field3" runat="server" style="border-style: groove; border-color: #996633;
            width: 700px">
            <legend>Update Profile</legend>
            <table>
                <tr>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click"
                            Style="height: 26px" OnClientClick="return confirm('Do u Want Update Your Profile!')" /><asp:Button ID="btnReset" runat="server" Text="Back" 
                            CausesValidation="false" onclick="btnReset_Click" />
                    </td>
                </tr>
            </table>
        </fieldset>
    </center>
</asp:Content>

