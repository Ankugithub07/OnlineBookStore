<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="OnlineBookStore.User.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style>
        .search {
            padding: 40px;
            text-align: center;
        }

        .card-text {
            font-size: 14px;
            line-height: 20px;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        SS
        .btn-primary:hover {
            background-color: #0069d9;
            border-color: #0062cc;
        }

        /*.card {
        background-color: black;
        color: #fff;
    }*/
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">

    <div id="search" class="search">
        <asp:TextBox ID="txtSearchMaster" runat="server"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="Search" PostBackUrl="~/results.aspx" />
    </div>
      <div class="container my-5">
            <div class="row">
                <asp:Repeater ID="cardDataRepeater" runat="server">
                <ItemTemplate>


                <div class="col-md-3">
                    <div class="card mb-3 box-shadow">
                        <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x275]" style="height: 275px; width: 100%; display: block;"
                            src="<%# Eval("Img") %>" data-holder-rendered="true" />
                        <div class="card-body">
                            <h7 class="card-text"><b><%# Eval("Name") %></b> </h7>
                            <p class="card-text"><%# Eval("Author") %> </p>

                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                   
                                   <a href="Order.aspx?id=<%# Eval("Id") %>"> <button type="button" class="btn btn-sm btn-outline-secondary">Buy Now</button></a>
                                </div>
                                <small class="text-muted"><%# Eval("Price") %></small>
                            </div>
                        </div>
                    </div>
                </div>
              
          

             
               
              

                     </ItemTemplate>
            </asp:Repeater>

             
           
            </div>
        </div>
        </form>


</asp:Content>
