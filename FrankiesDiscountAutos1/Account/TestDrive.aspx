<%@ Page Title="Test Drive" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="TestDrive.aspx.cs" Inherits="Account_TestDrive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <customControls:Header runat="server" heading="Test Drive"></customControls:Header>
    <div class="row">
        <div class="col-md-7">
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
                Font-Size="13pt" ForeColor="Black" Height="313px" NextPrevFormat="FullMonth" 
                TitleFormat="Month" Width="485px" OnSelectionChanged="Calendar1_SelectionChanged">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                    <TodayDayStyle BackColor="#CCCC99" />
            </asp:Calendar>
        </div>

        <div class="col-md-3">
            <asp:Label ID="daySelectedLabel" runat="server" Text="Label"></asp:Label>        
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>9:00am - 10:00am</asp:ListItem>
                <asp:ListItem>10:30am - 11:30am</asp:ListItem>
                <asp:ListItem>12:00pm - 1:00pm</asp:ListItem>
                <asp:ListItem>1:30pm - 2:30pm</asp:ListItem>
                <asp:ListItem>3:00pm - 4:00pm</asp:ListItem>
                <asp:ListItem>4:30pm - 5:30pm</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>

   

    <customControls:Footer runat="server" />
</asp:Content>

