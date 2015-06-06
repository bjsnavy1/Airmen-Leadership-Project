<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Management.ascx.cs" Inherits="Airman_Leadership.Controls.Management" %>
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>

<link href="../CSS/StyleSheet1.css" rel="stylesheet" />

<h1 class="TitleStyle">Management Tools</h1>
<h4 class="labelStyle">Welcome to the Management Section of the Airman Leadership School.</h4>

<asp:Panel ID="pnlNav" runat="server" CssClass="pnlStyle">
    <asp:LinkButton ID="Print2" runat="server" OnClick="Print2_Click" CssClass="btnStyle">Export Attendee Records</asp:LinkButton>
    <asp:LinkButton ID="Print1" runat="server" OnClick="Print1_Click" CssClass="btnStyle">Export Student Records</asp:LinkButton>
    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="Attendees_Click" CssClass="btnStyle">Attendee Records</asp:LinkButton>
    <asp:LinkButton ID="LinkButton1" runat="server" Text="Student Records" OnClick="students_click" CssClass="btnStyle"></asp:LinkButton>
    
</asp:Panel>
<asp:Panel ID="Panel1" runat="server" CssClass="pnlStyle"></asp:Panel>
<asp:UpdatePanel ID="pnlStudents" runat="server" Visible="False">
    <ContentTemplate>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="StudentsID" DataSourceID="StudentDataSource" ForeColor="Black" GridLines="Horizontal" CssClass="ddlStyle">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="StudentsID" HeaderText="StudentsID" InsertVisible="False" ReadOnly="True" SortExpression="StudentsID" />
                <asp:BoundField DataField="Fname" HeaderText="First Name" SortExpression="Fname" />
                <asp:BoundField DataField="Lname" HeaderText="Last Name" SortExpression="Lname" />
                <asp:BoundField DataField="Rank" HeaderText="Rank" SortExpression="Rank" />
                <asp:BoundField DataField="Squadron" HeaderText="Squadron" SortExpression="Squadron" />
                <asp:BoundField DataField="EnrollDate" HeaderText="Enrollment Date" SortExpression="EnrollDate" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="StudentDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:AirmanSchoolConnectionString %>" SelectCommand="SELECT * FROM [Students]" DeleteCommand="DELETE FROM [Students] WHERE [StudentsID] = @StudentsID" InsertCommand="INSERT INTO [Students] ([Fname], [Lname], [Rank], [Squadron], [EnrollDate]) VALUES (@Fname, @Lname, @Rank, @Squadron, @EnrollDate)" UpdateCommand="UPDATE [Students] SET [Fname] = @Fname, [Lname] = @Lname, [Rank] = @Rank, [Squadron] = @Squadron, [EnrollDate] = @EnrollDate WHERE [StudentsID] = @StudentsID">
            <DeleteParameters>
                <asp:Parameter Name="StudentsID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Fname" Type="String" />
                <asp:Parameter Name="Lname" Type="String" />
                <asp:Parameter Name="Rank" Type="String" />
                <asp:Parameter Name="Squadron" Type="String" />
                <asp:Parameter Name="EnrollDate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Fname" Type="String" />
                <asp:Parameter Name="Lname" Type="String" />
                <asp:Parameter Name="Rank" Type="String" />
                <asp:Parameter Name="Squadron" Type="String" />
                <asp:Parameter Name="EnrollDate" Type="DateTime" />
                <asp:Parameter Name="StudentsID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
    </ContentTemplate>
</asp:UpdatePanel>
<asp:Panel ID="Panel2" runat="server" CssClass="pnlStyle"></asp:Panel>
<asp:UpdatePanel ID="pnlAttendees" runat="server" Visible="False">
    <ContentTemplate>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="ddlStyle" DataKeyNames="AttendeeID" DataSourceID="AttendeesDataSource" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Student" HeaderText="Student" SortExpression="Student" />
                <asp:BoundField DataField="Fname" HeaderText="First Name" SortExpression="Fname" />
                <asp:BoundField DataField="Lname" HeaderText="Last Name" SortExpression="Lname" />
                <asp:BoundField DataField="Rank" HeaderText="Rank" SortExpression="Rank" />
                <asp:BoundField DataField="Dvisitor" HeaderText="Dvisitor" SortExpression="Dvisitor" />
                <asp:BoundField DataField="Meal" HeaderText="Meal" SortExpression="Meal" />
                <asp:CheckBoxField DataField="Cash" HeaderText="Cash" SortExpression="Cash" />
                <asp:CheckBoxField DataField="Credit" HeaderText="Credit" SortExpression="Credit" />
                <asp:BoundField DataField="AppDate" HeaderText="App Date" SortExpression="AppDate" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="AttendeesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:AirmanSchoolConnectionString %>" SelectCommand="SELECT * FROM [Attendees]" DeleteCommand="DELETE FROM [Attendees] WHERE [AttendeeID] = @AttendeeID" InsertCommand="INSERT INTO [Attendees] ([Student], [Fname], [Lname], [Rank], [Dvisitor], [Cash], [Credit], [AppDate], [Meal]) VALUES (@Student, @Fname, @Lname, @Rank, @Dvisitor, @Cash, @Credit, @AppDate, @Meal)" UpdateCommand="UPDATE [Attendees] SET [Student] = @Student, [Fname] = @Fname, [Lname] = @Lname, [Rank] = @Rank, [Dvisitor] = @Dvisitor, [Cash] = @Cash, [Credit] = @Credit, [AppDate] = @AppDate, [Meal] = @Meal WHERE [AttendeeID] = @AttendeeID">
            <DeleteParameters>
                <asp:Parameter Name="AttendeeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Student" Type="String" />
                <asp:Parameter Name="Fname" Type="String" />
                <asp:Parameter Name="Lname" Type="String" />
                <asp:Parameter Name="Rank" Type="String" />
                <asp:Parameter Name="Dvisitor" Type="String" />
                <asp:Parameter Name="Cash" Type="Boolean" />
                <asp:Parameter Name="Credit" Type="Boolean" />
                <asp:Parameter Name="AppDate" Type="DateTime" />
                <asp:Parameter Name="Meal" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Student" Type="String" />
                <asp:Parameter Name="Fname" Type="String" />
                <asp:Parameter Name="Lname" Type="String" />
                <asp:Parameter Name="Rank" Type="String" />
                <asp:Parameter Name="Dvisitor" Type="String" />
                <asp:Parameter Name="Cash" Type="Boolean" />
                <asp:Parameter Name="Credit" Type="Boolean" />
                <asp:Parameter Name="AppDate" Type="DateTime" />
                <asp:Parameter Name="Meal" Type="String" />
                <asp:Parameter Name="AttendeeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </ContentTemplate>
</asp:UpdatePanel>
<asp:Panel ID="Panel3" runat="server" CssClass="pnlStyle"></asp:Panel>

