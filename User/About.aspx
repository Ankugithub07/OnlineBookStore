<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="OnlineBookStore.User.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .card {
            display: flex;
            height: 500px;
            width: 1000px;
            margin: auto;
            border: 1px solid black;
            margin-top: 100px;
            margin-block-end: 40px;
            margin-left: 150px;
            box-shadow: 20px 20px 20px black;
            background-color: white;
            text-align: center;
        }

        .header {
            background-color: #eee;
            padding: 10px;
        }

        .footer {
            background-color: #eee;
            padding: 10px;
        }


        .card {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 500px;
            width: 1000px;
            margin: auto;
            margin-top: 100px;
            margin-bottom: 40px;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            background-color: #fff;
            text-align: center;
        }


        html, body {
            height: 100%;
        }

        .wrapper {
            min-height: 100%;
            margin-bottom: -50px;
            display: flex;
            flex-direction: column;
        }

        .content {
            flex: 1;
        }

        .footer {
            height: 50px;
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="card">
        <div class="card-body">
            <p class="card-text">
                Welcome to our online book shop! We are passionate about books and dedicated to providing book lovers with a wide selection of books in various genres, from bestsellers and new releases to classics and obscure titles.

Our mission is to make it easy for customers to find the books they love and to provide a seamless shopping experience. Our website is designed to be user-friendly, with a simple search function and organized categories to help customers navigate our extensive collection of books.

At our book shop, we believe that reading is essential for personal growth and lifelong learning. As such, we are committed to promoting literacy and education. We offer affordable prices and frequent promotions to make our books accessible to all.

Our team is made up of passionate readers who are always ready to help customers find their next great read. We are dedicated to providing excellent customer service, and we are always here to answer any questions or concerns you may have.

Thank you for choosing our online book shop. We hope you enjoy browsing our collection and finding your next favorite book. Happy reading!
            </p>

            <p>Connect with us:</p>
            <ul>
                <li><a href="https://www.facebook.com/yourbookstore"><i class="fab fa-facebook"></i></a></li>
                <li><a href="https://twitter.com/yourbookstore"><i class="fab fa-twitter"></i></a></li>
                <li><a href="https://www.instagram.com/yourbookstore"><i class="fab fa-instagram"></i></a></li>
                <li><a href="https://www.pinterest.com/yourbookstore"><i class="fab fa-pinterest"></i></a></li>
                <li><a href="https://www.linkedin.com/company/yourbookstore"><i class="fab fa-linkedin"></i></a></li>
            </ul>
        </div>

    </div>

</asp:Content>
