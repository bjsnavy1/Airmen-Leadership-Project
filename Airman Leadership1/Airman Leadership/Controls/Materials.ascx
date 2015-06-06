<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Materials.ascx.cs" Inherits="Airman_Leadership.Controls.Materials" %>

<link href="../CSS/StyleSheet1.css" rel="stylesheet" />


<asp:Panel runat="server" CssClass="pnlStyle"></asp:Panel>
<asp:Panel ID="pnlCode" runat="server">
<asp:Label ID="Label1" runat="server" Text="Please enter your Passcode:" CssClass="labelStyle"></asp:Label>
<asp:TextBox ID="txtpasscode" runat="server" CssClass="dlStyle"></asp:TextBox>
<asp:Button ID="btnSubmit" runat="server" Text="submit" CssClass="btnSubmit" OnClick="btnSubmit_Click" />
<asp:Label ID="lblWarning" runat="server" CssClass="warning"></asp:Label>
</asp:Panel>
<asp:Panel ID="pnlMaterials" runat="server" Visible="false">
<h2>Welcome to your online classroom</h2>
<h4>See below for the link to your classroom materials. Remember that this file is password protected and will require you to submit the correct password in order to view the materials. 
    You are not allowed to share this password with anyone else. Please contact your instructor if you have any questions or concerns regarding the classroom material.</h4>
<p>Personal Computers <a href="https://www.dropbox.com/sh/mb5oc80t7q6wp4b/AADP3QO7x5LJfudcDreeUILDa" target="_blank">Click Here</a> for materials.</p>
<p>Government Computers <a href="https://org.eis.afmc.af.mil/sites/75ABW/75MSG/75FSS/ALS/Student%20Resource
s/Forms/AllItems.aspx" target="_blank">Click Here</a> for materials.</p>
</asp:Panel>