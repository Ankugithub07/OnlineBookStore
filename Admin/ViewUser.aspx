<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="ViewUser.aspx.cs" Inherits="OnlineBookStore.Admin.ViewUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Mobile" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" BorderStyle="Solid" AlternatingRowStyle-BorderStyle="Solid" AlternatingRowStyle-BorderColor="Black" BorderColor="Black" Width="100%" CssClass="table table-dark table-striped" AlternatingRowStyle-CssClass="border border-secondary" EditRowStyle-CssClass="border border-secondary" HeaderStyle-CssClass="border border-secondary" AlternatingRowStyle-Width="10px">
                <Columns>
                      <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" ReadOnly="true"/>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                   
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                 
          
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <br />
           
        </div>
    </form>
</asp:Content>
