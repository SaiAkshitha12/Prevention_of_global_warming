﻿<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmAddToxicSubstancesTypes.aspx.cs" Inherits="Administrator_frmAddToxicSubstancesTypes" Theme="Theme1"  Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" Runat="Server">
<center>
<h3>Inser Toxic Substanes Types</h3>
<br /><br /><br /><br />
<fieldset id="Field1" runat ="server" style="border-style: groove; border-color: #996633; width:700px">
<legend>Toxic Substances Types</legend>
<table>
<tr>
<td>Substance Type</td><td align="left"><asp:TextBox ID="txtSubstanceType" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVtype" runat ="server" ErrorMessage="*" ControlToValidate ="txtSubstanceType"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td>Description</td><td><asp:TextBox ID="txtDescription" runat ="server" TextMode="MultiLine" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVDescription" runat ="server" ControlToValidate="txtDescription" ErrorMessage="*"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td colspan="2"><asp:Button ID="btnSubmit" runat ="server" Text="Submit" 
        onclick="btnSubmit_Click" /><asp:Button ID="btnClear" runat ="server" 
        Text="Clear" CausesValidation="false" onclick="btnClear_Click" /></td>
</tr>
</table>
</fieldset>
<fieldset id="Field2" runat ="server" style="border-style: groove; border-color: #996633; width:700px" >
<legend>Introductin to Toxic Substances</legend>
<p><b>What is a toxic substance?</b>

A toxic substance is a substance that can be poisonous or cause health effects. People are generally concerned about chemicals like polychlorinated biphenyls (PCBs) and dioxin which can be found at some hazardous waste sites. Products that we use daily, such as household cleaners, prescription and over-the-counter drugs, gasoline, alcohol, pesticides, fuel oil and cosmetics, can also be toxic. Any chemical can be toxic or harmful under certain conditions.</p><p>

Health effects: toxic or hazardous?
Chemicals can be toxic because they can harm us when they enter or contact the body. Exposure to a toxic substance such as gasoline can affect your health. Since drinking gasoline can cause burns, vomiting, diarrhea and, in very large amounts, drowsiness or death, it is toxic. Some chemicals are hazardous because of their physical properties: they can explode, burn or react easily with other chemicals. Since gasoline can burn and its vapors can explode, gasoline is also hazardous. A chemical can be toxic, or hazardous, or both.</p><p>

How can toxic substances cause harm?
Since chemicals can be toxic, it is important to understand how they can affect health. To determine the risk of harmful health effects from a substance, you must first know how toxic the substance is; how much, and by what means, a person is exposed; and how sensitive that person is to the substance.

Toxicity
Some substances are more toxic than others. The toxicity of a substance is described by the types of effects it causes and its potency.

Types of Effects: Different chemicals cause different effects. For example, Chemical A may cause vomiting, but not cancer. Chemical B may have no noticeable effects during exposure, but may cause cancer years later. 
Potency: Potency (strength) is a measure of a chemical's toxicity. A more potent chemical is more toxic. For example, sodium cyanide is more potent than sodium chloride (table salt) since swallowing a smaller amount of cyanide can poison you. 
The potency and, therefore, the toxicity of a chemical can be affected by its breakdown within the human body. When a substance is absorbed into the body, its chemical structure may be changed or metabolized to a substance that is more toxic or less toxic. For example, carbon tetrachloride, once a commonly used solvent, is changed by the body into a more toxic chemical that causes liver damage. For some other chemicals, metabolism changes the chemical into a form that is more easily eliminated by the body.

Exposure: A chemical can cause health effects only when it contacts or enters the body. 
Routes of Exposure: Exposure to a substance can occur by inhalation, ingestion or direct contact. 
Inhalation (breathing) of gases, vapors, dusts or mists is a common route of exposure. Chemicals can enter and irritate the nose, air passages and lungs. They can become deposited in the airways or be absorbed by the lungs into the bloodstream. The blood can then carry these substances to the rest of the body.

Ingestion (swallowing) of food, drink or other substances is another route of exposure. Chemicals that get in or on food, cigarettes, utensils or hands can be swallowed. Children are at greater risk of ingesting substances found in dust or soil because they often put their fingers or other objects in their mouths. Lead in paint chips is a good example. Substances can be absorbed into the blood and then transported to the rest of the body.

Direct contact (touching) with the skin or eyes is also a route of exposure. Some substances are absorbed through the skin and enter the bloodstream. Broken, cut or cracked skin will allow substances to enter the body more easily.

The route of exposure can determine whether or not the toxic substance has an effect. Breathing or swallowing lead can result in health effects, but touching lead is not harmful because lead isn't absorbed through the skin.

Dose: The amount of a substance that enters or contacts a person is called a dose. An important consideration in evaluating a dose is body weight. If a child is exposed to the same amount of chemical as an adult, the child (who weighs less) can be affected more than the adult. For example, children are given smaller amounts of aspirin than adults because an adult dose is too large for a child's body weight. 
The greater the amount of a substance a person is exposed to, the more likely that health effects will occur. Large amounts of a relatively harmless substance can be toxic. For example, two aspirin tablets can help to relieve a headache, but taking an entire bottle of aspirin can cause stomach pain, nausea, vomiting, headache, convulsions or death.

Exposure medium: Exposure to chemicals occurs when we breathe, eat or touch soil, water, food or air that contains chemicals. The amount of a chemical in the medium is called its concentration. Common ways of reporting concentrations are parts per million, milligrams per liter or milligrams per cubic meter. These and other units of measure are defined in the Glossary of Environmental Health Terms available from the New York State Department of Health. 
A person's dose can be determined by multiplying the concentration of the chemical times the amount of the water, air, food or soil that a person takes in. For example, the average adult drinks about 2 liters (roughly quarts) of water and breathes about 20 cubic meters (roughly cubic yards) of air a day. If drinking water contains 1 milligram of lead per liter, then the person would take in a total of 2 milligrams of lead in a day.

Length of exposure: Short-term exposure is called acute exposure. Long-term exposure is called chronic exposure. Either may cause health effects that are immediate or health effects that may not occur for some time. 
Acute exposure is a short contact with a chemical. It may last a few seconds or a few hours. For example, it might take a few minutes to clean windows with ammonia, use nail polish remover or spray a can of paint. The fumes someone might inhale during these activities are examples of acute exposures.

Chronic exposure is continuous or repeated contact with a toxic substance over a long period of time (months or years). If a chemical is used every day on the job, the exposure would be chronic. Over time, some chemicals, such as PCBs and lead, can build up in the body and cause long-term health effects. Chronic exposures can also occur at home. Some chemicals in household furniture, carpeting or cleaners can be sources of chronic exposure.

Chemicals leaking from landfills (dumps) can enter the groundwater and contaminate nearby wells or seep into basements. Unless preventive measures are taken, people may be exposed for a long time to chemicals from their drinking water or indoor air.

Sensitivity
All people are not equally sensitive to chemicals, and are not affected by them in the same way. There are many reasons for this. 

People's bodies vary in their ability to break down or eliminate certain chemicals due to genetic differences. 
People may become allergic to a chemical after being exposed. Then they may react to very low levels of the chemical and have different or more serious health effects than nonallergic people exposed to the same amount. People who are allergic to bee venom, for example, have a more serious reaction to a bee sting than people who are not allergic. 
Factors such as age, illness, diet, alcohol use, pregnancy and medical or nonmedical drug use can also affect a person's sensitivity to a chemical. Young children are often more sensitive to chemicals for a number of reasons. Their bodies are still developing and they cannot get rid of some chemicals as well as adults. Also, children absorb greater amounts of some chemicals (such as lead) into their blood than adults. 
How do we learn how chemicals affect health?
We don't know all the effects of exposure to every chemical. We learn about the health effects of many chemicals from human exposures and animal studies.

Human Exposures: Information about human exposures that have occurred at work or by accident is very useful, even though it may be incomplete. For example, if a person has been exposed to more than one substance, it may be hard to find out exactly which substance caused a health effect. Also, some health effects (such as cancer) don't appear until many years after the first exposure, making the cause of the disease hard to determine. Even when the substance that caused the health effect is known, the exact dose that caused the effect may not be. 
Sometimes a human population that has been exposed to a toxic substance (usually at work or from an environmental source) is compared with a population that has not been exposed. If the exposed population shows an increase in a certain health effect, that health effect may be related to the chemical exposure. However, these studies often cannot determine the exact cause of a health effect.

Animal Studies: Many toxicity tests are done on animals. Animal tests are often good indicators of chemical toxicity in humans even though animals may not react exactly like people. Many things are considered when applying the results of animal toxicity tests to humans. For example, animals are smaller, they have shorter lifespans and their bodies sometimes handle chemicals differently from humans. Large doses are used in the animal studies to see if there will be any effect. When guidelines or standards for human exposure to chemicals are developed, these differences and others are taken into account. 
What can happen if you are exposed to a chemical?
A chemical exposure can produce a health effect directly at the site of contact (local) or elsewhere in the body (systemic), and that effect can be either immediate or delayed.

Area of the Body Affected : Chemicals can affect any system in the body, including respiratory (nose, air passages and lungs), digestive (mouth, throat, stomach, etc.), circulatory (heart, blood), nervous (brain, nerve cells) and reproductive (sperm, egg, etc.). Some chemicals, like acids, are nonspecific and cause damage on direct contact. Other chemicals, like gasoline, can be absorbed into the blood, and carried throughout the body. Some chemicals affect only certain target systems or target organs. 
Every organ system has different functions and physical characteristics. So the effect of chemicals on each system has to be evaluated slightly differently. As an example, consider three ways that chemicals can affect one system: the reproductive system.

First, chemical exposure can affect a man's or woman's reproductive system by making the production of normal sperm or eggs more difficult.

Second, the chemical may act directly on an unborn baby (fetus). Since chemicals can be transferred from the mother's blood to the unborn baby's blood, the fetus can be affected when the mother is exposed to certain chemicals. A pregnant woman who drinks alcohol can have a baby with fetal alcohol syndrome. The health effects can range from birth defects to learning disabilities.

And finally, some chemicals can have indirect effects on the development of the fetus. For example, smoking during pregnancy can reduce the amount of oxygen to the fetus. The lack of oxygen can affect the baby's growth.

Not all chemical exposures affect reproduction, but it is best to minimize exposure to all toxic substances during pregnancy.

When Health Effects Will Occur Immediate health effects happen right away. They can occur directly at the site of contact or elsewhere in the body. For example, inhaled ammonia can irritate the linings of the nose, throat and lungs. Alcohol can cause dizziness. Immediate health effects are sometimes reversible and may disappear soon after the exposure stops. However, some immediate health effects do not go away; acute exposure to a corrosive substance, such as battery acid, may cause permanent damage to skin or eyes. 
Delayed health effects may take months or years to appear and can result from either acute or chronic exposure to a toxic substance. The delay between the exposure and the appearance of health effects is called the latency period. Delayed health effects can be reversible or permanent. Permanent effects don't go away when the exposure stops. For example, breathing asbestos over a period of time may cause lung disease. Once the lung disease begins, it will continue even if the exposure stops or decreases.

Cancer is an example of a delayed health effect. Cancer is the uncontrolled growth and spread of abnormal cells in the body. There are many kinds of cancer. Cancer can be caused by a number of things, including exposure to toxic substances, ultraviolet sunlight and ionizing radiation. Exposure to some chemicals, such as benzene and asbestos, can produce cancer in humans. Some chemicals produce cancer in animals, but whether they will in humans is unknown. Because cancer may not appear until 5 to 40 years after exposure, determining the cause of cancer is difficult.

What you know can help you!

Protect Yourself
Even though chemicals we use or are exposed to every day can be toxic, you can protect yourself and your family from chemical exposures. No matter how toxic a substance may be, if you are not exposed to the substance, it cannot affect your health. The important rule to remember is: minimize your exposure.

Before you use a product, read the label carefully and follow the instructions. Pay attention to warnings on the label. 
Use proper ventilation. Ventilation means getting fresh air into your home or workplace. When using strong chemicals, open your doors and windows whenever the weather permits. When you use a toxic chemical indoors, you may wish to blow air out the window with a fan. Have another window or door open to let fresh air into the room. If you use chemicals in your hobbies, use them outdoors or in a well- ventilated area away from your living space. 
Wear appropriate protective gloves when handling chemicals. If you use substances that are harmful to breathe (like fiberglass which can lodge in the lungs), use an appropriate mask. 
Store chemicals safely and out of the reach of children. Label all containers and do not store liquids in commonly used household containers such as soda bottles or food cans. 
If clothes become soiled while handling chemicals, change the clothes as soon as possible to reduce exposure. Wash soiled clothes separately; then run the machine through a rinse cycle to clean it before washing more clothes. 
If you must use a toxic substance, buy only the amount needed so there will be less material left for storage or disposal. 
Try to avoid using a toxic substance. If that is not possible, choose products that have less toxic ingredients. For example, water-based paints are generally less toxic than oil-based paints. 
Indoor air can contain chemicals from outside air, soil or water. Radon, a naturally occurring radioactive gas, can affect your health. It enters homes through holes or cracks in basement floors or walls. Learn how to test for radon by contacting the State Health Department's toll-free number (1-800-458-1158). If the radon levels in your home are elevated, take corrective steps as soon as possible. 
Drinking water can contain harmful chemicals. Lead can leach from (dissolve out of) lead pipes or lead solder. Reduce the amount of lead in your water by using cold water and by running the water for a minute or two before using it for drinking or cooking. Filters can take out some chemicals from drinking water. Filters should only be used when necessary; be sure that the one you use takes out the chemical you are concerned about, and maintain the filters regularly. 
If you are concerned about chemicals in water, indoor air, household products, landfills or factories, the following agencies may be able to provide information and assistance: 
your local county or city health department, or a district office of the New York State Department of Health; 
your regional office of the New York State Department of Environmental Conservation; 
the New York State Department of Health's Center for Environmental Health. To contact the center toll-free, call 1-800-458-1158 and leave your name, telephone number and a brief message. Department of Health staff will respond promptly to your call. 
</p>
</fieldset>
</center>
</asp:Content>

