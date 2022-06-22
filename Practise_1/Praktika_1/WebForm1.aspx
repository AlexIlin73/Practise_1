<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Praktika_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Список задач ToDoList</h1>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Новая задача:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TaskTextBox" runat="server" Height="26px" Width="1000px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="AddButton" runat="server" Text="Добавить задачу" Width="151px" OnClick="AddButton_Click" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>

            </table>
        </div>

        <table class="auto-style6">
            <tr>
                <td class="auto-style8">Таблица задач:</td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDatabaseConnectionString1 %>" SelectCommand="SELECT * FROM [MyTable]" DeleteCommand="delete from MyTable where Номер = @Номер" UpdateCommand="update MyTable set [Задача] = @Задача, Выполнено = @Выполнено where Номер = @Номер"></asp:SqlDataSource>
                </td>
                <td class="auto-style9"></td>
            </tr>
        </table>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Номер" DataSourceID="SqlDataSource1" GridLines="None">
            <Columns>
                <asp:BoundField DataField="Номер" HeaderText="Номер" InsertVisible="False" ReadOnly="True" SortExpression="Номер" />
                <asp:BoundField DataField="Задача" HeaderText="Задача" SortExpression="Задача" />
                <asp:CheckBoxField DataField="Выполнено" HeaderText="Выполнено" SortExpression="Выполнено" />
                <asp:CommandField EditText="Изменить" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Сохранить изменения" ButtonType="Button" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>

    </form>
</body>
</html>
