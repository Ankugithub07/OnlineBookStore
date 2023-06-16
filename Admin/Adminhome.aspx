<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Adminhome.aspx.cs" Inherits="OnlineBookStore.Admin.Adminhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Dashboard</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active"></li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-4 col-md-7">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body text-black">Total User    <i class="fas fa-user-friends"></i> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="Viewuser.aspx">View Details</a>
                                        <div class="small text-white"><i class="bi bi-people-fill"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-md-7">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body text-black">Total Book     <i class="fas fa-book"></i>  <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="ViewBook.aspx">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-md-7">
                                <div class="card bg-info text-white mb-4">
                                    <div class="card-body text-black">Total Order   <i class="fas fa-shopping-basket"></i>  <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="Vieworder.aspx">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                             <div class="col-xl-4 col-md-7">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body text-black">Total Feedback <i class="fas fa-comment-alt"></i> <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> </div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="../Admin/feedback.aspx">feedback Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </main>


</asp:Content>
