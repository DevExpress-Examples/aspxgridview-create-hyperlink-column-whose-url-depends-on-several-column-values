<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Solution.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to create a column with URLs that depend on several column values.</title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxGridView ID="gridView" runat="server" AutoGenerateColumns="False" DataSourceID="ads"
            KeyFieldName="CategoryID" ClientInstanceName="gridView">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataHyperLinkColumn FieldName="HyperLinkColumn" UnboundType="String"
                    UnboundExpression="'Default2.aspx?id='+[CategoryID]+'&name='+[CategoryName]" VisibleIndex="4">
                    <PropertiesHyperLinkEdit TextField="CategoryName" DisplayFormatString="Open <b>{0}<b/>"></PropertiesHyperLinkEdit>
                </dx:GridViewDataHyperLinkColumn>
                <dx:GridViewDataHyperLinkColumn FieldName="HyperLinkColumn2" UnboundType="String"
                    UnboundExpression="'?id='+[CategoryID]+'&name='+[CategoryName]" VisibleIndex="4">
                    <PropertiesHyperLinkEdit TextField="CategoryName" DisplayFormatString="Open <b>{0}<b/>" NavigateUrlFormatString="Default2.aspx{0}"></PropertiesHyperLinkEdit>
                </dx:GridViewDataHyperLinkColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT * FROM [Categories]"></asp:AccessDataSource>
    </form>
</body>
</html>
