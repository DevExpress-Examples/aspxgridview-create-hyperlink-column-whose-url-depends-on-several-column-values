<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
* [Default2.aspx](./CS/Default2.aspx) (VB: [Default2.aspx](./VB/Default2.aspx))
* [Default2.aspx.cs](./CS/Default2.aspx.cs) (VB: [Default2.aspx.vb](./VB/Default2.aspx.vb))
<!-- default file list end -->
# ASPxGridView - How to create HyperLink Column whose URL depends on several column values


This example demonstrates how to create GridViewDataHyperLinkColumn whose URL depends on several column values. Instead of creating a custom <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebGridViewDataColumn_DataItemTemplatetopic">DataItemTemplate</a> (<a href="https://www.devexpress.com/Support/Center/p/E993">How to use a hyperlink whose argument depends on several cell values in the ASPxGridView</a>), you can use <a href="https://documentation.devexpress.com/#AspNet/CustomDocument16859">Unbound Column</a>.  <br>Create a column's URL using the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebGridViewDataColumn_UnboundExpressiontopic">GridViewDataColumn.UnboundExpression</a> property:<br>


```aspx
<dx:GridViewDataHyperLinkColumn FieldName="HyperLinkColumn" UnboundType="String"
    UnboundExpression="'Default2.aspx?id='+[CategoryID]+'&name='+[CategoryName]" VisibleIndex="4">
    <PropertiesHyperLinkEdit TextField="CategoryName" DisplayFormatString="Open <b>{0}<b/>"></PropertiesHyperLinkEdit>
</dx:GridViewDataHyperLinkColumn>
```


or use the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebHyperLinkProperties_NavigateUrlFormatStringtopic">HyperLinkProperties.NavigateUrlFormatString</a> property to add extra text to the complete URL:<br>


```aspx
<dx:GridViewDataHyperLinkColumn FieldName="HyperLinkColumn2" UnboundType="String"
    UnboundExpression="'?id='+[CategoryID]+'&name='+[CategoryName]" VisibleIndex="4">
    <PropertiesHyperLinkEdit TextField="CategoryName" DisplayFormatString="Open <b>{0}<b/>" NavigateUrlFormatString="Default2.aspx{0}"></PropertiesHyperLinkEdit>
</dx:GridViewDataHyperLinkColumn>
```


<p>Using this approach, you will be able to preserve the full GridViewDataHyperLinkColumn functionality. </p>

<br/>


