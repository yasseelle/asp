<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Modifier_lister_document.aspx.cs" Inherits="JABBARI_ILYASS_CC4_V1.Modifier_lister_document" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style6">
    Modifer ou lister les documents<br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="codeDoc" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="codeDoc" HeaderText="codeDoc" ReadOnly="True" SortExpression="codeDoc" />
            <asp:BoundField DataField="descriptionDoc" HeaderText="descriptionDoc" SortExpression="descriptionDoc" />
            <asp:BoundField DataField="dossierDoc" HeaderText="dossierDoc" SortExpression="dossierDoc" />
            <asp:BoundField DataField="dateEnvoi" HeaderText="dateEnvoi" SortExpression="dateEnvoi" />
            <asp:BoundField DataField="etatDoc" HeaderText="etatDoc" SortExpression="etatDoc" />
            <asp:BoundField DataField="codeTheme" HeaderText="codeTheme" SortExpression="codeTheme" />
            <asp:BoundField DataField="logins" HeaderText="logins" SortExpression="logins" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:appuie_pédagogiqueConnectionString %>" DeleteCommand="DELETE FROM [Documents] WHERE [codeDoc] = @original_codeDoc AND (([descriptionDoc] = @original_descriptionDoc) OR ([descriptionDoc] IS NULL AND @original_descriptionDoc IS NULL)) AND (([dossierDoc] = @original_dossierDoc) OR ([dossierDoc] IS NULL AND @original_dossierDoc IS NULL)) AND (([dateEnvoi] = @original_dateEnvoi) OR ([dateEnvoi] IS NULL AND @original_dateEnvoi IS NULL)) AND (([etatDoc] = @original_etatDoc) OR ([etatDoc] IS NULL AND @original_etatDoc IS NULL)) AND (([codeTheme] = @original_codeTheme) OR ([codeTheme] IS NULL AND @original_codeTheme IS NULL)) AND (([logins] = @original_logins) OR ([logins] IS NULL AND @original_logins IS NULL))" InsertCommand="INSERT INTO [Documents] ([codeDoc], [descriptionDoc], [dossierDoc], [dateEnvoi], [etatDoc], [codeTheme], [logins]) VALUES (@codeDoc, @descriptionDoc, @dossierDoc, @dateEnvoi, @etatDoc, @codeTheme, @logins)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Documents] WHERE ([logins] = @logins)" UpdateCommand="UPDATE [Documents] SET [descriptionDoc] = @descriptionDoc, [dossierDoc] = @dossierDoc, [dateEnvoi] = @dateEnvoi, [etatDoc] = @etatDoc, [codeTheme] = @codeTheme, [logins] = @logins WHERE [codeDoc] = @original_codeDoc AND (([descriptionDoc] = @original_descriptionDoc) OR ([descriptionDoc] IS NULL AND @original_descriptionDoc IS NULL)) AND (([dossierDoc] = @original_dossierDoc) OR ([dossierDoc] IS NULL AND @original_dossierDoc IS NULL)) AND (([dateEnvoi] = @original_dateEnvoi) OR ([dateEnvoi] IS NULL AND @original_dateEnvoi IS NULL)) AND (([etatDoc] = @original_etatDoc) OR ([etatDoc] IS NULL AND @original_etatDoc IS NULL)) AND (([codeTheme] = @original_codeTheme) OR ([codeTheme] IS NULL AND @original_codeTheme IS NULL)) AND (([logins] = @original_logins) OR ([logins] IS NULL AND @original_logins IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_codeDoc" Type="Int32" />
            <asp:Parameter Name="original_descriptionDoc" Type="String" />
            <asp:Parameter Name="original_dossierDoc" Type="String" />
            <asp:Parameter DbType="Date" Name="original_dateEnvoi" />
            <asp:Parameter Name="original_etatDoc" Type="String" />
            <asp:Parameter Name="original_codeTheme" Type="Int32" />
            <asp:Parameter Name="original_logins" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="codeDoc" Type="Int32" />
            <asp:Parameter Name="descriptionDoc" Type="String" />
            <asp:Parameter Name="dossierDoc" Type="String" />
            <asp:Parameter DbType="Date" Name="dateEnvoi" />
            <asp:Parameter Name="etatDoc" Type="String" />
            <asp:Parameter Name="codeTheme" Type="Int32" />
            <asp:Parameter Name="logins" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="logins" SessionField="user" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="descriptionDoc" Type="String" />
            <asp:Parameter Name="dossierDoc" Type="String" />
            <asp:Parameter DbType="Date" Name="dateEnvoi" />
            <asp:Parameter Name="etatDoc" Type="String" />
            <asp:Parameter Name="codeTheme" Type="Int32" />
            <asp:Parameter Name="logins" Type="String" />
            <asp:Parameter Name="original_codeDoc" Type="Int32" />
            <asp:Parameter Name="original_descriptionDoc" Type="String" />
            <asp:Parameter Name="original_dossierDoc" Type="String" />
            <asp:Parameter DbType="Date" Name="original_dateEnvoi" />
            <asp:Parameter Name="original_etatDoc" Type="String" />
            <asp:Parameter Name="original_codeTheme" Type="Int32" />
            <asp:Parameter Name="original_logins" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>
