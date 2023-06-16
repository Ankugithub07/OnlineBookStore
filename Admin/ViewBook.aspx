<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="ViewBook.aspx.cs" Inherits="OnlineBookStore.Admin.ViewBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <form  runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" BorderStyle="Solid" AlternatingRowStyle-BorderStyle="Solid" AlternatingRowStyle-BorderColor="Black" BorderColor="Black" Width="100%" CssClass="table table-dark table-striped" AlternatingRowStyle-CssClass="border border-secondary" EditRowStyle-CssClass="border border-secondary" HeaderStyle-CssClass="border border-secondary" AlternatingRowStyle-Width="10px">
                <Columns>
                    <asp:BoundField DataField="book_id" HeaderText="Sr" SortExpression="book_id" ReadOnly="true" />
                    <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                    <asp:BoundField DataField="book_author" HeaderText="Book Author" SortExpression="book_author" />
                 
                    <asp:BoundField DataField="book_price" HeaderText="pno" SortExpression="book_price" />
                       
                    <asp:BoundField DataField="img" HeaderText="Img" SortExpression="img" />
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <br />
           
        </div>
    </form>


</asp:Content>
