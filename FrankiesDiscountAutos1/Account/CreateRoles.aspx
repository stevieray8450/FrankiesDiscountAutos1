<%@ Page Title="Create User Roles" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="~/Account/CreateRoles.aspx" Inherits="FrankiesDiscountAutos1._Default" %>

<script runat="server">
      string[] rolesArray;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Bind roles to GridView.
                rolesArray = Roles.GetAllRoles();
                RolesGrid.DataSource = rolesArray;
                RolesGrid.DataBind();
            }   
        }

        public void submit_OnClick(object sender, EventArgs args)
        {
            string createRole = userRole.Text;

            try
            {
                if (Roles.RoleExists(createRole))
                {
                    Msg.Text = "Role '" + Server.HtmlEncode(createRole) + "' already exists. Please specify a different role name.";
                    return;
                }

                Roles.CreateRole(createRole);

                Msg.Text = "Role '" + Server.HtmlEncode(createRole) + "' created.";

                // Re-bind roles to GridView.

                rolesArray = Roles.GetAllRoles();
                RolesGrid.DataSource = rolesArray;
                RolesGrid.DataBind();
            }
            catch (Exception e)
            {
                Msg.Text = "Role '" + Server.HtmlEncode(createRole) + "' <u>not</u> created.";
                Response.Write(e.ToString());
            }

        }
</script>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <customControls:Header runat="server" heading="Create User Roles"></customControls:Header>

    <div class="row">
        <h2>Create user roles</h2>
        <p><asp:Panel ID="Panel1" runat="server">
            <asp:Label ID="Label1" runat="server" Text="User name"></asp:Label>
            <asp:TextBox ID="userName" runat="server" Width="200px" Height="22px"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="User role"></asp:Label>

            &nbsp;&nbsp;
            <%--<asp:DropDownList ID="RolesDropDown" runat="server" Height="20px" Width="206px">
                <asp:ListItem>Member</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
            </asp:DropDownList>--%>

            <asp:TextBox ID="userRole" runat="server" Width="198px"></asp:TextBox>
            <asp:Label id="Msg" ForeColor="maroon" runat="server" /><br />

            <br />
            <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_OnClick" />
            <asp:Button ID="clear" runat="server" Text="Clear" />
        </asp:Panel>
        </p>

    </div>

    <div class="row">
        <asp:GridView runat="server" CellPadding="2" id="RolesGrid" Gridlines="Both" CellSpacing="2" AutoGenerateColumns="false" >
            <HeaderStyle BackColor="navy" ForeColor="white" />
            <Columns>
              <asp:TemplateField HeaderText="Roles" >
                <ItemTemplate>
                  <%# Container.DataItem.ToString() %>
                </ItemTemplate>
              </asp:TemplateField>
            </Columns>
           </asp:GridView>
    </div>

       <customControls:Footer runat="server"></customControls:Footer>

    </asp:Content>

