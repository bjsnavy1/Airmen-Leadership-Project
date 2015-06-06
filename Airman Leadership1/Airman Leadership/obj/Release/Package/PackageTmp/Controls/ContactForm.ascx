<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactForm.ascx.cs" Inherits="Airman_Leadership.Controls.ContactForm" %>


<link href="../CSS/StyleSheet1.css" rel="stylesheet" />

<form id="form">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:Panel ID="Panel1" runat="server" CssClass="pnlStyle1"></asp:Panel>
    <h4 class="TitleStyle">Contact Us</h4>
   
    <asp:Label ID="lblName" runat="server" Text="Name" CssClass="labelStyle"></asp:Label>
    <asp:TextBox ID="txtName" runat="server" CssClass="dlStyle" Height="16px" MaxLength="30"></asp:TextBox>
    <asp:Label ID="lblPhone" runat="server" Text="Phone Number" CssClass="labelStyle"></asp:Label>
    <asp:TextBox ID="txtPhone" runat="server" CssClass="dlStyle" Height="16px" MaxLength="30"></asp:TextBox>
    <asp:Label ID="lblEmail" runat="server" Text="E-mail Address" CssClass="labelStyle"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" CssClass="dlStyle" Height="16px" MaxLength="30"></asp:TextBox>
    <asp:Label ID="lblComments" runat="server" Text="Comments" CssClass="labelStyle"></asp:Label>
    <asp:TextBox ID="txtComments" runat="server" CssClass="dlStyle" Height="100px" Width="400" MaxLength="30" TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit Contact Request" CssClass="btnStyle" OnClick="btnSubmit_Click1"/>
    <asp:Button ID="btnClear" runat="server" Text="Clear Form" CssClass="btnStyle" OnClick="btnClear_Click"/>
    <asp:Label ID="lblSent" runat="server" Text="Request Sent" CssClass="labelStyle" Visible="false"></asp:Label>
    
    <asp:Panel ID="Panel2" runat="server" CssClass="pnlStyle1"></asp:Panel>
</form>