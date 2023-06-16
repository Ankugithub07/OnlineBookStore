<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="OnlineBookStore.User.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Home Page</title>
    <style>
        /* CSS for card view */
        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            transition: 0.3s;
            width: 30%;
            margin: 1em;
            display: inline-block;
            vertical-align: top;
            padding: 1em;
        }

        


        h1 {
            text-align: center;
            font-family: Calibri;
            font-size: larger;
            color: #ff0000;
        }

        .card:hover {
            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
        }

        .container {
            padding: 2px 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <h1>Welcome to My BookTown</h1>
    <p>&nbsp;&nbsp;</p>
    <div>
        <div class="container text-center">
            <div class="row">
                <div class="col">
                    <div class="card" style="width: 20rem;">
                        <img src="../img/reception1.jpg" style="width: 100%">
                        <div class="card-body">
                            <h5 class="card-title">User Guide</h5>
                            <p class="card-text">MyBook Shop is a place in which they provides information about Books, and facilities to buy a book.</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 20rem;">
                        <img src="../img/navi2.jpg" style="width: 100%">
                        <div class="card-body">
                            <h5 class="card-title">Store Navigation</h5>
                            <p class="card-text">A Store Navigation is a place that attracts users due to its facilities, products and customer service. </p>
                        </div>
                    </div>
                </div
            </div>
        </div>

    </div>
    <p>&nbsp;&nbsp;&nbsp;</p>


</asp:Content>
