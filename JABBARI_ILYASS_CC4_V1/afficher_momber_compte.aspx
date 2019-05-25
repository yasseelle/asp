<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="afficher_momber_compte.aspx.cs" Inherits="JABBARI_ILYASS_CC4_V1.afficher_momber_compte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style6">
        afficher les compts des mombres<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="logins" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="logins" HeaderText="logins" ReadOnly="True" SortExpression="logins" />
                <asp:BoundField DataField="nom" HeaderText="nom" SortExpression="nom" />
                <asp:BoundField DataField="prenom" HeaderText="prenom" SortExpression="prenom" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="motDePasse" HeaderText="motDePasse" SortExpression="motDePasse" />
                <asp:BoundField DataField="roles" HeaderText="roles" SortExpression="roles" />
                <asp:CheckBoxField DataField="CheckBox" HeaderText="select" SortExpression="CheckBox" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button7" runat="server" Text="activer" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button8" runat="server" Text="desactiver" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:appuie_pédagogiqueConnectionString %>" DeleteCommand="DELETE FROM [Utilisateurs] WHERE [logins] = @original_logins AND (([nom] = @original_nom) OR ([nom] IS NULL AND @original_nom IS NULL)) AND (([prenom] = @original_prenom) OR ([prenom] IS NULL AND @original_prenom IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([motDePasse] = @original_motDePasse) OR ([motDePasse] IS NULL AND @original_motDePasse IS NULL)) AND (([roles] = @original_roles) OR ([roles] IS NULL AND @original_roles IS NULL))" InsertCommand="INSERT INTO [Utilisateurs] ([logins], [nom], [prenom], [email], [motDePasse], [roles]) VALUES (@logins, @nom, @prenom, @email, @motDePasse, @roles)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Utilisateurs]" UpdateCommand="UPDATE [Utilisateurs] SET [nom] = @nom, [prenom] = @prenom, [email] = @email, [motDePasse] = @motDePasse, [roles] = @roles WHERE [logins] = @original_logins AND (([nom] = @original_nom) OR ([nom] IS NULL AND @original_nom IS NULL)) AND (([prenom] = @original_prenom) OR ([prenom] IS NULL AND @original_prenom IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([motDePasse] = @original_motDePasse) OR ([motDePasse] IS NULL AND @original_motDePasse IS NULL)) AND (([roles] = @original_roles) OR ([roles] IS NULL AND @original_roles IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_logins" Type="String" />
                <asp:Parameter Name="original_nom" Type="String" />
                <asp:Parameter Name="original_prenom" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_motDePasse" Type="String" />
                <asp:Parameter Name="original_roles" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="logins" Type="String" />
                <asp:Parameter Name="nom" Type="String" />
                <asp:Parameter Name="prenom" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="motDePasse" Type="String" />
                <asp:Parameter Name="roles" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nom" Type="String" />
                <asp:Parameter Name="prenom" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="motDePasse" Type="String" />
                <asp:Parameter Name="roles" Type="String" />
                <asp:Parameter Name="original_logins" Type="String" />
                <asp:Parameter Name="original_nom" Type="String" />
                <asp:Parameter Name="original_prenom" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_motDePasse" Type="String" />
                <asp:Parameter Name="original_roles" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
