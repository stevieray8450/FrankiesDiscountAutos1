<%@ Page Title="Edit Cars" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CarsEdit.aspx.cs" Inherits="FrankiesDiscountAutos1.Account.CarsEdit" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <customControls:Header runat="server" heading="Edit Cars"></customControls:Header>

    <div class="row">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CarID" DataSourceID="SqlDataSource1" AllowSorting="True"
         CssClass="table-responsive table-hover" CellPadding="1" Width="747px" Height="399px" BackColor="White" BorderColor="#CCCCCC"
            BorderStyle="None" BorderWidth="4px" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
                    <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                    <asp:BoundField DataField="CarYear" HeaderText="CarYear" SortExpression="CarYear" />
                    <asp:BoundField DataField="Mileage" HeaderText="Mileage" SortExpression="Mileage" />
                    <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
                    <asp:HyperLinkField DataNavigateUrlFields="CarID" DataNavigateUrlFormatString="CarsUpdate.aspx?CarID={0}" Text="Update" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bonifs1_DBConnectionString1 %>" SelectCommand="SELECT * FROM [Cars]"></asp:SqlDataSource>

    </div>
    <br /><br /><br />

   <customControls:Footer runat="server"></customControls:Footer>

</asp:Content>

