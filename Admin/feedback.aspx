<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="OnlineBookStore.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <form  runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="f_id" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" BorderStyle="Solid" AlternatingRowStyle-BorderStyle="Solid" AlternatingRowStyle-BorderColor="Black" BorderColor="Black" Width="100%" CssClass="table table-dark table-striped" AlternatingRowStyle-CssClass="border border-secondary" EditRowStyle-CssClass="border border-secondary" HeaderStyle-CssClass="border border-secondary" AlternatingRowStyle-Width="10px">
                <Columns>
                    <asp:BoundField DataField="f_id" HeaderText="Sr" SortExpression="book_id" ReadOnly="true" />
                    <asp:BoundField DataField="name" HeaderText=" Name" SortExpression="book_name" />
                    <asp:BoundField DataField="address" HeaderText="Adress" SortExpression="book_author" />
                 
                    <asp:BoundField DataField="pho" HeaderText="pno" SortExpression="book_price" />
                       
                    <asp:BoundField DataField="des" HeaderText="Describtion" SortExpression="img" />
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <br />
           
        </div>
    </form>

</asp:Content>
