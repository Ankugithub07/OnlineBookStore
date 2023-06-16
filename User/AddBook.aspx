<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="OnlineBookStore.User.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                          <section class="vh-100" style="background-image:url(https://media.istockphoto.com/id/1356030067/photo/blur-background-of-book-shelf-store-decorated-with-wood-and-warm-light.jpg?s=612x612&w=0&k=20&c=iC0lVh-8LrbBdxCXYDMwIoDjDEnwqFK93kbtQlR2umM=); background-size:cover;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-10 col-xl-8">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-3">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Add Book </p>

                <form class="mx-1 mx-md-4" runat="server">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" name="name" id="name" runat="server" class="form-control" required />
                      <label class="form-label" for="form3Example1c">Book Name</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="baname" name="baname" runat="server" class="form-control" required />
                      <label class="form-label" for="form3Example3c">Book Author Name</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="baprice" name="baprice" runat="server" class="form-control" required />
                      <label class="form-label" for="form3Example4c">Book price</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="pidd" name="pidd" runat="server" class="form-control" required />
                      <label class="form-label" for="form3Example4cd">Book Image Link</label>
                    </div>
                  </div>

                 

                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                      <asp:Button ID="Button1" CssClass="btn btn-primary btn-lg" OnClick="bt1_Click" runat="server" Text="Add Book" />
                
                  </div>

                </form>

              </div>
              <div class="col-md-7 col-lg-3 col-xl-4 d-flex align-items-center order-1 order-lg-2">

                <img src="https://images.unsplash.com/photo-1569728723358-d1a317aa7fba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Ym9vayUyMHN0b3JlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
                  class="img-fluid" alt="Sample image">

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

   
</asp:Content>
