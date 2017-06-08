<%@ Page Title="Insert New Car" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CarsInsert.aspx.cs" Inherits="FrankiesDiscountAutos1.CarPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <customControls:Header runat="server" heading="Insert a New Car"/>

    <div class="row">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="CarID" DataSourceID="SqlDataSource1" 
            DefaultMode="Insert" CssClass="table-hover table-responsive" ForeColor="Black" GridLines="Horizontal" Height="268px" Width="667px" 
            AutoGenerateInsertButton="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" > 
            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="Black" />
            <Fields>
                <asp:BoundField DataField="CarID" HeaderText="CarID" InsertVisible="False" ReadOnly="True" SortExpression="CarID" />

                <asp:TemplateField HeaderText="Type">
                    <ControlStyle Height="30px" Width="650px" />
                    <EditItemTemplate>
                        <asp:TextBox ID="Type" runat="server"
                            Text="<%# Bind('Type') %>" />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorType" runat="server"
                            ControlToValidate="Type" ErrorMessage="Please enter a valid car type"
                             Display="Dynamic" />
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Make">
                    <ControlStyle Height="30px" Width="650px" />
                    <EditItemTemplate>
                        <asp:TextBox ID="Make" runat="server"
                            Text="<%# Bind('Make') %>" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMake" runat="server"
                            ControlToValidate="Make" ErrorMessage="Please enter a valid car make/manufacturer"
                            Display="Dynamic" />
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Model">
                    <ControlStyle Height="30px" Width="650px" />
                    <EditItemTemplate>
                        <asp:TextBox ID="Model" runat="server"
                            Text="<%# Bind('Model') %>" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorModel" runat="server"
                            ControlToValidate="Model" ErrorMessage="Please enter a valid car model"
                            Display="Dynamic" />
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Car Year">
                    <ControlStyle Height="30px" Width="650px" />
                    <EditItemTemplate>
                        <asp:TextBox ID="CarYear" runat="server"
                            Text="<%# Bind('CarYear') %>" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCarYear" runat="server"
                            ControlToValidate="CarYear" ErrorMessage="Please enter a valid car year"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidatorCarYear" runat="server" 
                            ControlToValidate="CarYear" ErrorMessage="Please enter a valid car year (1930 - 2020)"
                            Display="Dynamic" MaximumValue="2020" MinimumValue="1930" Type="Integer">
                        </asp:RangeValidator>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Mileage">
                    <ControlStyle Height="30px" Width="650px"></ControlStyle>
                    <EditItemTemplate>
                        <asp:TextBox ID="Mileage" runat="server"
                            Text="<%# Bind('Mileage') %>" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMileage" runat="server"
                            ControlToValidate="Mileage" ErrorMessage="Please enter mileage">
                        </asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="RangeValidatorMileage" runat="server"
                            ControlToValidate="Mileage" ErrorMessage="Please enter a valid mileage amount (0 - 400,000)"
                            Display="Dynamic" MaximumValue="400000" MinimumValue="0" Type="Integer">
                        </asp:RangeValidator>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" ControlStyle-Width="650px" ControlStyle-Height="200px" >
                    <ControlStyle Height="200px" Width="650px"></ControlStyle>
                </asp:BoundField>

                <asp:TemplateField HeaderText="Price">
                    <ControlStyle Height="30px" Width="650px" />
                    <EditItemTemplate>
                        <asp:TextBox ID="Price" runat="server"
                            Text="<%# Bind('Price') %>" />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrice" runat="server"
                            ControlToValidate="Type" ErrorMessage="Please enter a valid car price"
                             Display="Dynamic" />
                      </EditItemTemplate>
                </asp:TemplateField>

            </Fields>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        </asp:DetailsView>
        <br /><br /><br />
    </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bonifs1_DBConnectionString1 %>" 
            SelectCommand="SELECT * FROM [Cars]"
            InsertCommand="INSERT INTO [Cars] ([Type], [Make], [Model], [CarYear], [Mileage], [Comments], [Price])
            VALUES (@Type, @Make, @Model, @CarYear, @Mileage, @Comments, @Price)">
        </asp:SqlDataSource>

    <div class="row">
      <customControls:Footer runat="server" />
    </div>


</asp:Content>