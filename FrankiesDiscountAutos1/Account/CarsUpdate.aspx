<%@ Page Title="Update Car Listings" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="~/Account/CarsUpdate.aspx.cs" Inherits="FrankiesDiscountAutos1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<%--    <script runat="server">

        protected void DetailView_ItemCommand(object sender, 
        DetailsViewCommandEventArgs e)
        {
            if (e.CommandName == "Cancel")
            {
                Response.Redirect("~/CarsEdit.aspx");
            }
        }
    </script>--%>

   <customControls:Header runat="server" heading="Update Car Listings"></customControls:Header>

          <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="CarID" 
            DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="16px" Width="257px" AutoGenerateEditButton="True" DefaultMode="Edit"
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CssClass="table table-striped table-responsive">
      <%--         OnItemCommand="DetailView_ItemCommand"--%>
            <EditRowStyle Font-Bold="True" ForeColor="Black" />
            <Fields>
                <asp:BoundField DataField="CarID" HeaderText="Car ID" InsertVisible="False" ReadOnly="True" SortExpression="CarID" />

                 <asp:TemplateField HeaderText="Type">
                    <ControlStyle Height="30px" Width="650px" />
                    <EditItemTemplate>
                        <asp:TextBox ID="Type" runat="server"
                            Text="<%# Bind('Type') %>" />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorType" runat="server"
                            ControlToValidate="Type" ErrorMessage="Please enter a valid car type"
                            CssClass="validationError" Display="Dynamic" />
                    </EditItemTemplate>
                </asp:TemplateField>

              <asp:TemplateField HeaderText="Make">
                    <ControlStyle Height="30px" Width="650px" />
                    <EditItemTemplate>
                        <asp:TextBox ID="Make" runat="server"
                            Text="<%# Bind('Make') %>" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMake" runat="server"
                            ControlToValidate="Make" ErrorMessage="Please enter a valid car make/manufacturer"
                            CssClass="validationError" Display="Dynamic" />
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Model">
                    <ControlStyle Height="30px" Width="650px" />
                    <EditItemTemplate>
                        <asp:TextBox ID="Model" runat="server"
                            Text="<%# Bind('Model') %>" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorModel" runat="server"
                            ControlToValidate="Model" ErrorMessage="Please enter a valid car model"
                            CssClass="validationError" Display="Dynamic" />
                    </EditItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Car Year">
                    <ControlStyle Height="30px" Width="650px" />
                    <EditItemTemplate>
                        <asp:TextBox ID="CarYear" runat="server"
                            Text="<%# Bind('CarYear') %>" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCarYear" runat="server"
                            ControlToValidate="CarYear" ErrorMessage="Please enter a valid car year"
                            CssClass="validationError" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidatorCarYear" runat="server" 
                            ControlToValidate="CarYear" ErrorMessage="Please enter a valid car year (1930 - 2020)"
                            CssClass="validationError" Display="Dynamic" MaximumValue="2020" MinimumValue="1930" Type="Integer">
                        </asp:RangeValidator>
                    </EditItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="Mileage">
                    <ControlStyle Height="30px" Width="650px"></ControlStyle>
                    <EditItemTemplate>
                        <asp:TextBox ID="Mileage" runat="server"
                            Text="<%# Bind('Mileage') %>" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMileage" runat="server"
                            ControlToValidate="Mileage" ErrorMessage="Please enter mileage" 
                            CssClass="validationError" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidatorMileage" runat="server"
                            ControlToValidate="Mileage" ErrorMessage="Please enter a valid mileage amount (0 - 400,000)"
                            CssClass="validationError" Display="Dynamic" MaximumValue="400000" MinimumValue="0" Type="Integer">
                        </asp:RangeValidator>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Comments">
                    <ControlStyle Height="30px" Width="650px" />
                    <EditItemTemplate>
                        <asp:TextBox ID="Comments" runat="server"
                            Text="<%# Bind('Comments') %>"/>              
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Price">
                    <ControlStyle Height="30px" Width="650px" />
                    <EditItemTemplate>
                        <asp:TextBox ID="Price" runat="server"
                            Text="<%# Bind('Price') %>" />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrice" runat="server"
                            ControlToValidate="Type" ErrorMessage="Please enter a valid car price" 
                            Type="Decimal" CssClass="validationError" Display="Dynamic" />
                      </EditItemTemplate>
                </asp:TemplateField>
            </Fields>

            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerSettings Mode="NextPreviousFirstLast" />
            <PagerStyle BackColor="#CCCCCC" BorderStyle="Groove" ForeColor="Black" HorizontalAlign="Right" />
        </asp:DetailsView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bonifs1_DBConnectionString1 %>" 
            SelectCommand="SELECT * FROM [Cars] WHERE [CarID] = @CarID"
            UpdateCommand="UPDATE [Cars] SET [Type] = @Type, [Make] = @Make, [Model] = @Model, [CarYear] = @CarYear, [Mileage] = @Mileage, [Comments] = @Comments, 
            [Price] = @Price WHERE CarId = @CarID">
            <SelectParameters>
                <asp:QueryStringParameter Name="CarID" QueryStringField="CarID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="Make" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="CarYear" Type="String" />
                <asp:Parameter Name="Mileage" Type="Int32" />
                <asp:Parameter Name="Comments" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource> 

        <br /><br /><br /><br />
        <hr /> 
       <customControls:Footer runat="server"></customControls:Footer>

</asp:Content>