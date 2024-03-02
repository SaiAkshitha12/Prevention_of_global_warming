<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="frmStateWisePopulationDetails.aspx.cs" Inherits="frmStateWisePopulationDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
<center>
<h3>INDIA:<asp:Label ID="lblStateName" runat ="server" ></asp:Label></h3>
<fieldset id="Field1" runat ="server" style="border-style: groove; border-color: #996633; width:700px">
<table align="left">
<tr><td align="left" ><asp:Image ID="ImgIndia" runat ="server" ImageUrl="~/Images/India.jpg" Width="90px" /></td></tr>
<tr>
<td style="font-size: large" align="left" ><b>Contents</b></td>
</tr>
</table>

</fieldset>
<fieldset id="Field2" runat ="server" style="border-style: groove; border-color: #996633; width:700px" >
<table align="left" >
<tr>
<td><asp:GridView ID="GrvState" runat="server" AutoGenerateColumns="false" >
<Columns>
<asp:BoundField DataField ="StateName" HeaderText="Name" />
<asp:BoundField DataField ="Abbr" HeaderText="Abbr" />
<asp:BoundField DataField ="Status" HeaderText="Staus" />
<asp:BoundField DataField ="Capital" HeaderText="Capital" />
<asp:BoundField DataField ="Area" HeaderText="A(Km2)" />
<asp:BoundField DataField ="CF1981" HeaderText="Cf1981-03-01" />
<asp:BoundField DataField ="CF1991" HeaderText="Cf1991-03-01" />
<asp:BoundField DataField ="CF2001" HeaderText="Cf2001-03-01" />

</Columns>

    <HeaderStyle BackColor="#FFCC66" />
    <EditRowStyle BackColor="#FFCC66" />

</asp:GridView></td>
</tr>
<tr><td style="font-size: small">(2001) Office of the Registrar General and Census Commissioner (web), Delimitation Commission of India (web).
</td></tr>
</table>
</fieldset>
<fieldset id="Field3" runat ="server" style="border-style: groove; border-color: #996633; width:700px">
<legend>Choose Your City</legend>
<table align="left">
<tr>
<td align="left" >
    <asp:GridView ID="GrvCity" runat ="server" AutoGenerateColumns ="false" 
        Font-Bold="True" ForeColor="#0066FF" ShowHeader="False" 
        onrowcommand="GrvCity_RowCommand"  >
  <Columns >
  <asp:TemplateField >
<ItemTemplate >
<asp:LinkButton ID="lnkCity" ForeColor="#0066FF" runat ="server" Text='<%#Eval("CityName") %>'  CommandArgument='<%#Eval("CityId") %>' ></asp:LinkButton>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView></td>
</tr>
</table>
</fieldset>
<fieldset id="Field4" runat ="server" style="border-style: groove; border-color: #996633; width:700px">
<table align="left" >
<tr>
<td align="left" ><asp:GridView ID="GrvCityDetails" runat="server" AutoGenerateColumns="false" >
<Columns>
<asp:BoundField DataField ="CityName" HeaderText="Name" />
<asp:BoundField DataField ="StateName" HeaderText="State" />
<asp:BoundField DataField ="CF1991" HeaderText="Cf1991-03-01" />
<asp:BoundField DataField ="CF2001" HeaderText="Cf2001-03-01" />

</Columns>

    <HeaderStyle BackColor="#FFCC66" />
    <EditRowStyle BackColor="#FFCC66" />

</asp:GridView></td>
</tr>
<tr><td style="font-size: small">(2001) Office of the Registrar General and Census Commissioner (web), Delimitation Commission of India (web).
</td></tr>
</table>
</fieldset>
</asp:Content>

