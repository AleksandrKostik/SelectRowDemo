<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SO56354683.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="false" KeyFieldName="ID"
            OnCustomCallback="ASPxGridView1_CustomCallback" ClientInstanceName="grid">
            <Columns>
                <dx:GridViewCommandColumn ShowSelectCheckbox="true"></dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="ID"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="SomeData"></dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="AnotherData"></dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <dx:ASPxHyperLink ID="TestLink" runat="server" Text="Select/deselect the first row by a callback">
            <ClientSideEvents Click="function (s, e) { grid.PerformCallback(); }" />
        </dx:ASPxHyperLink>
        <br />
        <dx:ASPxHyperLink ID="TestLink2" runat="server" Text="Select/deselect the second row on client side">
            <ClientSideEvents Click="function (s, e) { grid.SelectRows(1, !grid.IsRowSelectedOnPage(1)); /* by row index */ }" />
        </dx:ASPxHyperLink>
    </form>
</body>
</html>
