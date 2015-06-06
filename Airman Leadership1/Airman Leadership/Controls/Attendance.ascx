<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Attendance.ascx.cs" Inherits="Airman_Leadership.Controls.Attendance" %>


<link href="../CSS/StyleSheet1.css" rel="stylesheet" type="text/css" />

 
    




    <form id="form">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <img src="../Images/Grad.jpg" alt="Grad Logo" width="300" height="200" /><br />
        <img src="../Images/header1.png" alt="Grad header Logo" width="745" />
             <h4 class="TitleStyle">New Attendee</h4>
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

                    <asp:Label ID="Label1" runat="server" Text="Graduate" CssClass="labelStyle"></asp:Label>
                    <asp:DropDownList ID="dlStudent" runat="server" CssClass="ddlStyle" DataSourceID="SqlDataSourceStudent" DataTextField="Column1" DataValueField="Column1"></asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSourceStudent" runat="server" ConnectionString="<%$ ConnectionStrings:AirmanSchoolConnectionString %>" SelectCommand="SELECT [Fname] + ' ' + [Lname] FROM [Students]"></asp:SqlDataSource>
                    <asp:Label ID="lblFname" runat="server" Text="First name" CssClass="labelStyle"></asp:Label>
                    <asp:TextBox ID="txtFname" runat="server" CssClass="dlStyle" Height="16px" OnTextChanged="txtFname_TextChanged"></asp:TextBox>
                    <asp:Label ID="lblLname" runat="server" Text="Last name" CssClass="labelStyle"></asp:Label>
                    <asp:TextBox ID="txtLname" runat="server" CssClass="dlStyle" OnTextChanged="txtLname_TextChanged"></asp:TextBox>
                    <asp:Label ID="lblRank" runat="server" Text="Rank" CssClass="labelStyle"></asp:Label>
                    <asp:DropDownList ID="dlRank" runat="server" CssClass="ddlStyle" Width="149px">
                        <asp:ListItem>Please Select</asp:ListItem>
                        <asp:ListItem>Civilian - Mr.</asp:ListItem>
                        <asp:ListItem>Civilian - Mrs.</asp:ListItem>
                        <asp:ListItem>Civilian - Ms.</asp:ListItem>
                        <asp:ListItem>AF -AB</asp:ListItem>
                        <asp:ListItem>AF-AMN</asp:ListItem>
                        <asp:ListItem>AF-A1C</asp:ListItem>
                        <asp:ListItem>AF-SrA</asp:ListItem>
                        <asp:ListItem>AF-SSgt</asp:ListItem>
                        <asp:ListItem>AF-TSgt</asp:ListItem>
                        <asp:ListItem>AF-SMSgt</asp:ListItem>
                        <asp:ListItem>AF-CMSgt</asp:ListItem>
                        <asp:ListItem>AF-2nd LT</asp:ListItem>
                        <asp:ListItem>AF-1st LT</asp:ListItem>
                        <asp:ListItem>AF-CAPT</asp:ListItem>
                        <asp:ListItem>AF-Major</asp:ListItem>
                        <asp:ListItem>AF-LT Col</asp:ListItem>
                        <asp:ListItem>AF-Col</asp:ListItem>
                        <asp:ListItem>AF-Brig Gen</asp:ListItem>
                        <asp:ListItem>AF-Major Gen</asp:ListItem>
                        <asp:ListItem>AF-LT GEN</asp:ListItem>
                        <asp:ListItem>AF-Gen</asp:ListItem>
                        <asp:ListItem>Army-PV1</asp:ListItem>
                        <asp:ListItem>Army-PV2</asp:ListItem>
                        <asp:ListItem>Army-PFC</asp:ListItem>
                        <asp:ListItem>Army-SPC1</asp:ListItem>
                        <asp:ListItem>Army-CPL</asp:ListItem>
                        <asp:ListItem>Army-Sgt</asp:ListItem>
                        <asp:ListItem>Army-SSG</asp:ListItem>
                        <asp:ListItem>Army-SFC</asp:ListItem>
                        <asp:ListItem>Army-MSG</asp:ListItem>
                        <asp:ListItem>Army-1SG</asp:ListItem>
                        <asp:ListItem>Army-SGM</asp:ListItem>
                        <asp:ListItem>Army-2nd LT</asp:ListItem>
                        <asp:ListItem>Army-1st LT</asp:ListItem>
                        <asp:ListItem>Army-Capt</asp:ListItem>
                        <asp:ListItem>Army-Major</asp:ListItem>
                        <asp:ListItem>Army-Lt Col</asp:ListItem>
                        <asp:ListItem>Army-Col</asp:ListItem>
                        <asp:ListItem>Army-Brig Gen</asp:ListItem>
                        <asp:ListItem>Army-Major Gen</asp:ListItem>
                        <asp:ListItem>Army-Lt Gen</asp:ListItem>
                        <asp:ListItem>Army-Gen</asp:ListItem>
                        <asp:ListItem>Marines-Pvt</asp:ListItem>
                        <asp:ListItem>Marines-PFC</asp:ListItem>
                        <asp:ListItem>Marines-LCpl</asp:ListItem>
                        <asp:ListItem>Marines-Cpl</asp:ListItem>
                        <asp:ListItem>Marines-Sgt</asp:ListItem>
                        <asp:ListItem>Marines - SSgt</asp:ListItem>
                        <asp:ListItem>Marines-GySgt</asp:ListItem>
                        <asp:ListItem>Marines-MSgt</asp:ListItem>
                        <asp:ListItem>Marines-1stSgt</asp:ListItem>
                        <asp:ListItem>Marines-MGySgt</asp:ListItem>
                        <asp:ListItem>Marines-SgtMajor</asp:ListItem>
                        <asp:ListItem>Marines-SgtMajMarCor</asp:ListItem>
                        <asp:ListItem>Marines-2nd Lt</asp:ListItem>
                        <asp:ListItem>Marines-1st Lt</asp:ListItem>
                        <asp:ListItem>Marines-Capt</asp:ListItem>
                        <asp:ListItem>Marines-Major</asp:ListItem>
                        <asp:ListItem>Marines-Lt Col</asp:ListItem>
                        <asp:ListItem>Marines-Col</asp:ListItem>
                        <asp:ListItem>Marines-Brig Gen</asp:ListItem>
                        <asp:ListItem>Marines-Major Gen</asp:ListItem>
                        <asp:ListItem>Marines-Lt Gen</asp:ListItem>
                        <asp:ListItem>Marines-Gen</asp:ListItem>
                        <asp:ListItem>WO</asp:ListItem>
                        <asp:ListItem>CWO2</asp:ListItem>
                        <asp:ListItem>CWO3</asp:ListItem>
                        <asp:ListItem>CWO4</asp:ListItem>
                        <asp:ListItem>CWO5</asp:ListItem>
                        <asp:ListItem>Navy-SR</asp:ListItem>
                        <asp:ListItem>Navy-SA</asp:ListItem>
                        <asp:ListItem>Navy-SN</asp:ListItem>
                        <asp:ListItem>Navy-PO3</asp:ListItem>
                        <asp:ListItem>Navy-PO2</asp:ListItem>
                        <asp:ListItem>Navy-PO1</asp:ListItem>
                        <asp:ListItem>Navy-CPO</asp:ListItem>
                        <asp:ListItem>Navy-SCPO</asp:ListItem>
                        <asp:ListItem>Navy-MCPO</asp:ListItem>
                        <asp:ListItem>Navy-CMDCM</asp:ListItem>
                        <asp:ListItem>Navy-ENS</asp:ListItem>
                        <asp:ListItem>Navy-LTJG</asp:ListItem>
                        <asp:ListItem>Navy-LT</asp:ListItem>
                        <asp:ListItem>Navy-LCDR</asp:ListItem>
                        <asp:ListItem>Navy-CDR</asp:ListItem>
                        <asp:ListItem>Navy-Capt</asp:ListItem>
                        <asp:ListItem>Navy-RDML</asp:ListItem>
                        <asp:ListItem>Navy-RADM</asp:ListItem>
                        <asp:ListItem>Navy-VADM</asp:ListItem>
                        <asp:ListItem>Navy-ADM</asp:ListItem>
                        <asp:ListItem>Navy-FADM</asp:ListItem>
                     </asp:DropDownList>            
                    <asp:Label ID="lblvisitor" runat="server" Text="Distinguished Visitor" CssClass="labelStyle"></asp:Label>
                    <asp:DropDownList ID="dlvisitor" runat="server" CssClass="ddlStyle" AutoPostBack="True" Width="104px">
                        <asp:ListItem>N/A</asp:ListItem>
                        <asp:ListItem>WG CC</asp:ListItem>
                        <asp:ListItem>WG CCC</asp:ListItem>
                        <asp:ListItem>GP CC</asp:ListItem>
                        <asp:ListItem>GP CCC</asp:ListItem>
                     </asp:DropDownList>
                    <asp:Label ID="lblMeal" runat="server" Text="Select Your Meal" CssClass="labelStyle"></asp:Label>
                    <asp:DropDownList ID="dlMeal" runat="server" CssClass="ddlStyle">
                        <asp:ListItem>Please Select</asp:ListItem>
                        <asp:ListItem>No Meal</asp:ListItem>
                        <asp:ListItem>Standard Meal</asp:ListItem>
                        <asp:ListItem>Vegetarian</asp:ListItem>
                     </asp:DropDownList>
                    <asp:Label ID="lblPayment" runat="server" Text="Select Your Payment Method" CssClass="labelStyle"></asp:Label>
                    <asp:DropDownList ID="dlPayment" runat="server" CssClass="ddlStyle" AutoPostBack="True" OnSelectedIndexChanged="dlPayment_SelectedIndexChanged">
                        <asp:ListItem>Cash</asp:ListItem>
                        <asp:ListItem>Credit Card or Paypal</asp:ListItem>
                     </asp:DropDownList>
                
           </ContentTemplate>
        </asp:UpdatePanel> 
                <asp:Button ID="btnSubmit" runat="server" CssClass="btnStyle" Text="Submit" Width="100px" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnClear" runat="server" CssClass="btnStyle" Text="Clear" Width="100px" OnClick="btnClear_Click" />
                <br /><br />
            

    
    </form>
    
    <asp:Panel ID="pnlAdd" runat="server" CssClass="labelStyle" Visible="false">
        <h3>Thank You! We have added you to the graduation Attendee Database. Please continue with checkout!</h3>
    </asp:Panel>
    <asp:Panel ID="pnlAdd2" runat="server" CssClass="labelStyle" Visible="false">
        <h3>Thank You! We have added you to the graduation Attendee Database.</h3>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" CssClass="pnlStyle"></asp:Panel>

    <asp:Panel ID="pnlCash" runat="server" Visible="True" CssClass="">
    
        <h4 class="CashStyle">All Payments are due prior to the day of Graduation!</h4>
        
    </asp:Panel>

    <asp:Panel ID="pnlPayPal" runat="server" CssClass="CartStyle" Visible="false">
        <form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
            <input type="hidden" name="cmd" value="_s-xclick">
            <input type="hidden" name="hosted_button_id" value="TMB39TRN8H2VE">
            <table>
            <tr><td><input type="hidden" name="on0" value="Graduation Price">Graduation Price</td></tr><tr><td><select name="os0">
	            <option value="Non Club Member">Non Club Member $16.00 USD</option>
	            <option value="Club Member">Club Member $14.00 USD</option>
            </select> </td></tr>
            </table>
            <input type="hidden" name="currency_code" value="USD">
            <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_cart_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!" id="inpCart" aria-disabled="False">
            <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
        </form>
    </asp:Panel>
    
   
