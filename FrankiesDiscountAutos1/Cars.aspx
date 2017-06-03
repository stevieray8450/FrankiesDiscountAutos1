<%@ Page Title="Our Cars" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="FrankiesDiscountAutos1.Cars" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <customControls:Header runat="server" heading="Our Cars"></customControls:Header>

    <div class="row">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CarID" DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display."
            AllowSorting="True" 
            CssClass="table table-striped table-responsive" 
            CellPadding="1" Width="747px" Height="399px" 
            BackColor="White" BorderColor="#CCCCCC"
            BorderStyle="None" BorderWidth="4px" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="CarID" HeaderText="ID" SortExpression="CarID" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="CarYear" HeaderText="CarYear" SortExpression="CarYear" />
            <asp:BoundField DataField="Mileage" HeaderText="Mileage" SortExpression="Mileage" />
            <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="Black" />

        </asp:GridView>
    </div>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bonifs1_DBConnectionString1 %>" 
        DeleteCommand="DELETE FROM [Cars] WHERE [CarID] = @CarID" 
        InsertCommand="INSERT INTO [Cars] ([Type], [Make], [Model], [CarYear], [Mileage], [Comments], [Price]) VALUES (@Type, @Make, @Model, @CarYear, @Mileage, @Comments, @Price)" 
        ProviderName="<%$ ConnectionStrings:bonifs1_DBConnectionString1.ProviderName %>" 
        SelectCommand="SELECT [CarID], [Type], [Make], [Model], [CarYear], [Mileage], [Comments], [Price] FROM [Cars]" 
        UpdateCommand="UPDATE [Cars] SET [Type] = @Type, [Make] = @Make, [Model] = @Model, [CarYear] = @CarYear, [Mileage] = @Mileage, [Comments] = @Comments, [Price] = @Price WHERE [CarID] = @CarID">
        <DeleteParameters>
            <asp:Parameter Name="CarID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Make" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="CarYear" Type="String" />
            <asp:Parameter Name="Mileage" Type="Int64" />
            <asp:Parameter Name="Comments" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal"/>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Make" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="CarYear" Type="String" />
            <asp:Parameter Name="Mileage" Type="Int64" />
            <asp:Parameter Name="Comments" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="CarID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

   <customControls:Footer runat="server"></customControls:Footer>

</asp:Content>

