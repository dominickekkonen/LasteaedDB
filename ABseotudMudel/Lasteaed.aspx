<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
</head>
<body style="height: 416px">
    <form id="form1" runat="server">   
        Lasteaed list<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="lasteaedID" DataSourceID="SqlDataSource2" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="165px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="lasteaedID" HeaderText="lasteaedID" InsertVisible="False" ReadOnly="True" SortExpression="lasteaedID" />
                <asp:BoundField DataField="lasteaedNimi" HeaderText="lasteaedNimi" SortExpression="lasteaedNimi" />
                <asp:BoundField DataField="lasteaedAadress" HeaderText="lasteaedAadress" SortExpression="lasteaedAadress" />
                <asp:BoundField DataField="lasteaedTel" HeaderText="lasteaedTel" SortExpression="lasteaedTel" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:lasteaedMudelDBConnectionString %>" DeleteCommand="DELETE FROM [Lasteaed] WHERE [lasteaedID] = @lasteaedID" InsertCommand="INSERT INTO [Lasteaed] ([lasteaedNimi], [lasteaedAadress], [lasteaedTel]) VALUES (@lasteaedNimi, @lasteaedAadress, @lasteaedTel)" SelectCommand="SELECT * FROM [Lasteaed]" UpdateCommand="UPDATE [Lasteaed] SET [lasteaedNimi] = @lasteaedNimi, [lasteaedAadress] = @lasteaedAadress, [lasteaedTel] = @lasteaedTel WHERE [lasteaedID] = @lasteaedID">
            <DeleteParameters>
                <asp:Parameter Name="lasteaedID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="lasteaedNimi" Type="String" />
                <asp:Parameter Name="lasteaedAadress" Type="String" />
                <asp:Parameter Name="lasteaedTel" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="lasteaedNimi" Type="String" />
                <asp:Parameter Name="lasteaedAadress" Type="String" />
                <asp:Parameter Name="lasteaedTel" Type="String" />
                <asp:Parameter Name="lasteaedID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="lasteaedID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="165px" Width="390px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="lasteaedID" HeaderText="lasteaedID" InsertVisible="False" ReadOnly="True" SortExpression="lasteaedID" />
                <asp:BoundField DataField="lasteaedNimi" HeaderText="lasteaedNimi" SortExpression="lasteaedNimi" />
                <asp:BoundField DataField="lasteaedAadress" HeaderText="lasteaedAadress" SortExpression="lasteaedAadress" />
                <asp:BoundField DataField="lasteaedTel" HeaderText="lasteaedTel" SortExpression="lasteaedTel" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </form>
</body>
</html>
