<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="OnlineBookStore.User.feedback" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  

     
  <section class="vh-100" style="background-image:url(https://img.freepik.com/premium-photo/abstract-blur-library-blurred-book-shelves-hall-generative-ai_791316-6098.jpg);background-size:cover;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-7 col-xl-9">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-2">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">FeedBack Form</p>

                <form class="mx-1 mx-md-4" runat="server">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" name="name" id="name" runat="server" class="form-control" required />
                      <label class="form-label" for="form3Example1c">Your Name</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="address" name="address" runat="server" class="form-control" required />
                      <label class="form-label" for="form3Example3c">Your Email</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="mobile" name="mobile" runat="server" pattern="^\d{10}$" class="form-control" required />
                      <label class="form-label" for="form3Example4c">Your Mobile No</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="pidd" name="pidd" runat="server" class="form-control" required />
                      <label class="form-label" for="form3Example4cd">Describe Feedack</label>
                    </div>
                  </div>

                 

                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                      <asp:Button ID="Button1" CssClass="btn btn-primary btn-lg" OnClick="Button1_Click1" runat="server" Text="Send Feedback" />
                
                  </div>

                </form>

              </div>
              <div class="col-md-7 col-lg-3 col-xl-4 d-flex align-items-center order-1 order-lg-2">

                <img src="https://media.licdn.com/dms/image/C4E12AQH-9f0aXzNIUQ/article-cover_image-shrink_720_1280/0/1627240280682?e=2147483647&v=beta&t=SaJeIPLOYmhN9JWn_Tvx3i1y-qDRb5aJyp19VbMzNdc"
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
