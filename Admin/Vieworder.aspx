<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Vieworder.aspx.cs" Inherits="OnlineBookStore.Admin.Vieworder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    


</head>
<body >
    
     <form  runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="o_id" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" BorderStyle="Solid" AlternatingRowStyle-BorderStyle="Solid" AlternatingRowStyle-BorderColor="Black" BorderColor="Black" Width="100%" CssClass="table table-dark table-striped" AlternatingRowStyle-CssClass="border border-secondary" EditRowStyle-CssClass="border border-secondary" HeaderStyle-CssClass="border border-secondary" AlternatingRowStyle-Width="10px">
                <Columns>
                    <asp:BoundField DataField="o_id" HeaderText="Sr" SortExpression="o_id" ReadOnly="true" />
                    <asp:BoundField DataField="mobile" HeaderText="User Phone Number" SortExpression="mobile" />
                    <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                 <asp:BoundField DataField="name" HeaderText="User Name" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="Uer Email" SortExpression="email" />
                   
          
                    <asp:CommandField  ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <br />
           
        </div>
    </form>
</body>
</html>

</asp:Content>
