<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="OnlineBookStore.User.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
</head>
<body>
    <section class="vh-150 bg-image"
  style="background-image: url('https://theculturetrip.com/wp-content/uploads/2018/03/2058455.jpg'); background-size:cover">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-50">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Create an account</h2>
                <h3><asp:Label ID="Label1" runat="server" Text=""></asp:Label></h3>

              <form runat="server">

                <div class="form-outline mb-4">
                  <input type="text"  name="name" id="fullname" runat="server" class="form-control" required />
                  <label class="form-label" for="form3Example1cg">Your Name</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="email"  name="email" id="email" runat="server" class="form-control" required />
                  <label class="form-label" for="form3Example3cg">Your Email</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="password" name="password" id="password" runat="server" class="form-control" required />
                  <label class="form-label" for="form3Example4cg">Password</label>
                </div>

                  <div class="form-outline mb-4">
                  <input type="password"  name="confrimpassword" id="confirmpassword" runat="server" class="form-control" required/>
                  <label class="form-label" for="form3Example4cg">Confirm Password</label>
                </div>
                
                <div class="form-outline mb-4">
                  <input type="tel" name="mobile" id="mobile" runat="server" pattern="^\d{10}$" class="form-control" required/>
                  <label class="form-label" for="form3Example4cdg">Your Mobile Number</label>
                </div>

                <div class="d-flex justify-content-center">
                  
                       <asp:Button ID="Button1" CssClass="btn btn-primary btn-lg" OnClick="bt1_Click" runat="server" Text="Register" />
                   <%-- class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Register</button>--%>
                </div>
                 

                

              </form>

            </div>
                
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>
