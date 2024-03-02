<%@ Page Language="C#" MasterPageFile="~/RegisteredMembers/MemberMasterPage.master" AutoEventWireup="true" CodeFile="frmSearchForNGOProfile.aspx.cs" Inherits="RegisteredMembers_frmSearchForNGOProfile" Title="Untitled Page" %>

<%@ Register src="../UserControls/BindImage.ascx" tagname="BindImage" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
    <center>
<h3>Personal Profile for Group Members</h3>
<fieldset id="Feild1" runat ="server" style="border-style: groove; border-color: #996633; width:700px">
<legend>Select Group Member From Here</legend>
<table align="left">
<tr>
<td align="left" >
    <asp:DataList ID="DListGM" runat ="server" Font-Bold="True" 
        Font-Size="Small" ForeColor="#3366FF" onitemcommand="DListGM_ItemCommand" >
<ItemTemplate>*
<asp:LinkButton ID="lnkGM" ForeColor="#3366FF" runat ="server" Text='<%#Eval("FName") %>' CommandArgument='<%#Eval("NGOId") %>'></asp:LinkButton>
</ItemTemplate>
</asp:DataList></td>
</tr>
</table>
</fieldset>
<fieldset id="Field4" runat ="server" style="border-style: groove; border-color: #996633;width: 700px" visible="false" >
        <legend>Member Photo</legend>
        <table align="left" >
        <tr  ><td align="left"  >
            <uc1:BindImage ID="BindImage1" runat="server" />
            </td></tr>
        </table>
            </fieldset>
 
 
 <fieldset id="Field2" runat="server" style="border-style: groove; border-color: #996633;
            width: 700px" visible="false" >
            <legend>Member Personal Information</legend>
            <table>
                
                <tr>
                    <td>
                        FirstName
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtFirstName" runat="server" ReadOnly="true" ></asp:TextBox>
                    </td>
                    
                    <td>
                    </td>
                    <td>
                        MiddleName
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtMiddleName" runat="server" ReadOnly="true" ></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        LastName
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtLastName" runat="server" ReadOnly="true" ></asp:TextBox>
                    </td>
                    
                    <td>
                    </td>
                    <td>
                        Address
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" ReadOnly="true" ></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        PhoneNo
                    </td>
                    <td align="left" >
                        <asp:TextBox ID="txtPhone" runat="server" ReadOnly="true" ></asp:TextBox>
                    </td>
                    
                    <td>
                    </td>
                    <td>
                        EmailId
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtEmailId" runat="server" ReadOnly="true" ></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        Qualification
                    </td>
                    <td align="left"><asp:TextBox ID="txtQualification" runat ="server" ReadOnly="true" ></asp:TextBox></td>
                    
                    <td>
                    </td>
                    <td>
                        Profession
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtWorking" runat="server" ReadOnly ="true" ></asp:TextBox>
                    </td>
                    
                </tr>
            </table>
        </fieldset>
        <fieldset id="Field3" runat ="server" style="border-style: groove; border-color: #996633;
            width: 700px">
            <legend>Member Timings</legend>
            <h5>All Members are Avaliable From 2 pm to 7.30 pm</h5><br />
            
            </fieldset>

</center>
</asp:Content>

