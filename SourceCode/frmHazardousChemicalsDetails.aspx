<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true"
    CodeFile="frmHazardousChemicalsDetails.aspx.cs" Inherits="frmHazardousChemicalsDetails"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" runat="Server">
    <center>
        <h3 style="text-decoration: underline">
            Department Of Pollution Control Board</h3>
        <fieldset id="Field3" runat="server" style="border-style: groove; border-color: #996633;
            width: 700px">
            <legend>The bitter-sweet taste of toxic substances</legend>
            <table>
                <tr>
                    <td align="left">
                        <p>
                            <b>What is a toxic substance? </b>
                        </p>
                        <p>
                            A toxic substance can be defined as one with an inherent ability to cause systemic
                            damage to living organisms – another word for it is 'poison'. Toxic substances occur
                            in the air, the soil, the water and in other living things, and they can enter the
                            body in various ways: through ingestion – by eating and drinking; through inhalation
                            – by breathing; by absorption – through contact with the skin; and by injection
                            – from a hypodermic syringe, for example, or from an insect, spider or snake bite.
                            Another important term is 'risk'. While the bleach on the top shelf of the laundry
                            is certainly toxic, there is no particular risk as long as it stays there. We need
                            to be informed about potential risks in order to make sensible decisions.
                        </p>
                        <p>
                            <b>Living with toxic substances</b>
                        </p>
                        <p>
                            We live in a world awash with toxic substances. We want the benefits they bring,
                            but we also want to safeguard ourselves and our environment from their deleterious
                            effects. There are several ways we can do this. For a start, we must assess the
                            hazard posed by toxic substances and ask whether they are likely to be used in ways
                            that create a risk. All toxic substances must be handled, stored and disposed of
                            as safely as possible. Exposure standards in the workplace must be set and maintained.
                        </p>
                        <p>
                            <b>Risk perception </b>
                        </p>
                        <p>
                            Many factors influence how people perceive risks and make decisions. More people
                            worry about travelling by plane than by car, even though statistics show that they
                            are 10 times more likely to be killed in a car travelling between two cities than
                            in a commercial airline flying the same journey. More accidents happen in kitchens
                            than anywhere else, but you don’t think twice about walking into your kitchen. Our
                            perception of risk is often based on how dreadful we think a risk is and how well
                            we understand the risk, rather than on probabilities. Using mathematics to analyse
                            risks and benefits and to analyse the probability of an event occurring can help
                            us make decisions. But we still have to decide how to measure the benefits and risks,
                            and how best to weigh up the options.
                        </p>
                    </td>
                </tr>
            </table>
        </fieldset>
        <h4 style="text-decoration: underline">
            List of Hazardous Chemicals</h4>
        <fieldset id="Field1" runat="server" style="border-style: groove; border-color: #996633;
            width: 700px">
            <legend>Click Here for Hazardous Chemicals</legend>
            <table>
                <tr>
                    <td>
                        <asp:LinkButton ID="lnkGr1" runat="server" Text="Grade I Toxic Chemicals" Font-Bold="True"
                            Font-Size="Small" ForeColor="Blue" OnClick="lnkGr1_Click"></asp:LinkButton>|
                        <asp:LinkButton ID="lnkGr2" runat="server" Text="Grade II Toxic Chemicals" Font-Bold="True"
                            Font-Size="Small" ForeColor="Blue" OnClick="lnkGr2_Click"></asp:LinkButton>|
                        <asp:LinkButton ID="lnkGr3" runat="server" Text="Grade II Highly Reactive" Font-Bold="True"
                            Font-Size="Small" ForeColor="Blue" OnClick="lnkGr3_Click"></asp:LinkButton>|
                        <asp:LinkButton ID="lnkGr4" runat="server" Text="Grade IV Exposive Toxic" Font-Bold="True"
                            Font-Size="Small" ForeColor="Blue" OnClick="lnkGr4_Click"></asp:LinkButton>
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset id="Field2" visible="false"  runat="server" style="border-style: groove; border-color: #996633;
            width: 700px">
            <table>
                <tr>
                    <td align="left">
                        <asp:GridView ID="GrvToxic" runat="server" AutoGenerateColumns="false" Width="634px"
                            Font-Bold="True" Font-Size="Small" ForeColor="#006666">
                            <Columns>
                                <asp:BoundField DataField="ToxicId" HeaderText="Toxic Number" />
                                <asp:BoundField DataField="NameOfSubstance" HeaderText="SubstaceName" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                                <asp:BoundField DataField="CAS" HeaderText="CAS Number" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </fieldset>
    </center>
</asp:Content>
