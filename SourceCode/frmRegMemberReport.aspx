<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmRegMemberReport.aspx.cs" Inherits="frmRegMemberReport" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
    <h3>Report for Display Registered Group Members</h3>
<center>
 <fieldset id="Field1" runat="server" style="border-style: groove; border-color: #996633;
            width: 640px">
            <table>
            <tr>
            <td align="left" ><asp:GridView ID="grvMemberReport" runat ="server" 
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="X-Small" >
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            
            </asp:GridView></td>
            </tr>
            </table>
            </fieldset> 
</center>
</asp:Content>

