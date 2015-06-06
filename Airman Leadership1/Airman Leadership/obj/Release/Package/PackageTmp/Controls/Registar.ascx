<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Registar.ascx.cs" Inherits="Airman_Leadership.Controls.Registar" %>

<style>
   
    
</style>



<link href="../CSS/StyleSheet1.css" rel="stylesheet" type="text/css" />



<form id="form">
    <img src="../Images/header.png" />
    
        <h4 class="TitleStyle">New Student</h4>

        <asp:Label ID="lblFname" runat="server" Text="Label" CssClass="labelStyle">Firstname</asp:Label>
        <asp:TextBox ID="txtFname" runat="server" CssClass="dlStyle"></asp:TextBox>
        <asp:Label ID="lblLname" runat="server" Text="Lastname" CssClass="labelStyle"></asp:Label>
        <asp:TextBox ID="txtLname" runat="server" CssClass="dlStyle"></asp:TextBox>
        <asp:Label ID="lblRank" runat="server" Text="Rank" CssClass="labelStyle"></asp:Label>
        <asp:DropDownList ID="dlRank" runat="server" CssClass="ddlStyle" AutoPostBack="True">
            <asp:ListItem>SrA</asp:ListItem>
            <asp:ListItem>SSgt</asp:ListItem>
    </asp:DropDownList>
        <asp:Label ID="lblSquad" runat="server" Text="Squadron" CssClass="labelStyle"></asp:Label>
        <asp:DropDownList ID="dlSquad" runat="server" CssClass="ddlStyle" AutoPostBack="True">
            <asp:ListItem>2 CTCS</asp:ListItem>
            <asp:ListItem>29 TSS</asp:ListItem>
            <asp:ListItem>109TH</asp:ListItem>
            <asp:ListItem>151ST</asp:ListItem>
            <asp:ListItem>309 AMXG</asp:ListItem>
            <asp:ListItem>309 CMXG</asp:ListItem>
            <asp:ListItem>309 EMXG</asp:ListItem>
            <asp:ListItem>309 MMXG</asp:ListItem>
            <asp:ListItem>309 MXSG</asp:ListItem>
            <asp:ListItem>309 MXSS</asp:ListItem>
            <asp:ListItem>309 MXW</asp:ListItem>
            <asp:ListItem>309 SMXG</asp:ListItem>
            <asp:ListItem>367 TRSS</asp:ListItem>
            <asp:ListItem>372ND</asp:ListItem>
            <asp:ListItem>388 AMXS</asp:ListItem>
            <asp:ListItem>388 CMS</asp:ListItem>
            <asp:ListItem>388 EMS</asp:ListItem>
            <asp:ListItem>388 FW</asp:ListItem>
            <asp:ListItem>388 LM</asp:ListItem>
            <asp:ListItem>388 MOS</asp:ListItem>
            <asp:ListItem>388 MXG</asp:ListItem>
            <asp:ListItem>388 OG</asp:ListItem>
            <asp:ListItem>388 OSS</asp:ListItem>
            <asp:ListItem>388 RANS</asp:ListItem>
            <asp:ListItem>389 MMXS</asp:ListItem>
            <asp:ListItem>4 FS</asp:ListItem>
            <asp:ListItem>419TH</asp:ListItem>
            <asp:ListItem>421 FS</asp:ListItem>
            <asp:ListItem>649 MUNS</asp:ListItem>
            <asp:ListItem>67 APS</asp:ListItem>
            <asp:ListItem>729 ACS</asp:ListItem>
            <asp:ListItem>75 ABW</asp:ListItem>
            <asp:ListItem>75 AMDS</asp:ListItem>
            <asp:ListItem>75 CEG</asp:ListItem>
            <asp:ListItem>75 CPTS</asp:ListItem>
            <asp:ListItem>75 DS</asp:ListItem>
            <asp:ListItem>75 FSS</asp:ListItem>
            <asp:ListItem>75 LRS</asp:ListItem>
            <asp:ListItem>75 MDG</asp:ListItem>
            <asp:ListItem>75 MDOS</asp:ListItem>
            <asp:ListItem>75 MDSS</asp:ListItem>
            <asp:ListItem>75 MSG</asp:ListItem>
            <asp:ListItem>75 MSS</asp:ListItem>
            <asp:ListItem>75 OSS</asp:ListItem>
            <asp:ListItem>75 SFS</asp:ListItem>
            <asp:ListItem>775 CES</asp:ListItem>
            <asp:ListItem>84 RADES</asp:ListItem>
            <asp:ListItem>86 FWS</asp:ListItem>
            <asp:ListItem>GUARD/RESERVE</asp:ListItem>
    </asp:DropDownList>
        

        <asp:Button ID="btnSubmit" runat="server" CssClass="btnStyle" Text="Submit" Width="100px" OnClick="btnSubmit_Click" />
        <asp:Button ID="btnClear" runat="server" CssClass="btnStyle" Text="Clear" Width="100px" OnClick="btnClear_Click" />
        

    
</form>