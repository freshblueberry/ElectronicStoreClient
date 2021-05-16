<%@ Page Async="true" Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="Login-Register.aspx.vb" Inherits="ElectronicStoreClient.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Add Content Here-->
    <div class="breadcrumb-area bg-gray">
            <div class="container">
                <div class="breadcrumb-content text-center">
                    <ul>
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li class="active">login - register </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="login-register-area pt-115 pb-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-12 ml-auto mr-auto">
                        <div class="login-register-wrapper">
                            <div class="login-register-tab-list nav">
                                <a class="active" data-toggle="tab" href="#lg1">
                                    <h4> login </h4>
                                </a>
                                <a data-toggle="tab" href="#lg2">
                                    <h4> register </h4>
                                </a>
                            </div>
                            <div class="tab-content">
                                <div id="lg1" class="tab-pane active">
                                    <div class="login-form-container">
                                        <div class="login-register-form">  <!--LOGIN FOM-->

        <div id="loginDiv" runat="server" class="alignCenter">
            <label>Email:</label>
            <input type="text" id="tbEmail" runat="server" />
            <label>Password:</label>
            <input type="password" id="tbPassword" runat="server" />
            <asp:Button ID="btnApiLogin" runat="server" Text="Login" />     
        </div>
        <a href="Register.aspx">Register for API Access</a>
            <asp:Label ID="lblLoginResult" runat="server" Font-Bold="true" Text="" Visible="false" CssClass="alignCenter"></asp:Label>
            <asp:Button ID="btnApiLogout" runat="server" Text="Logout" Visible="false"/>

                                        </div>
                                    </div>
                                </div>
                                <div id="lg2" class="tab-pane">
                                    <div class="login-form-container">
                                        <div class="login-register-form">
                                            <div style="margin:8px;">
                                                <input type="text" id="txtEmail" placeholder="Email" runat="server"/>
                                            </div>
                                            <div  style="margin:8px;">
                                                <input type="password" id="txtPassword" placeholder="Password" runat="server"/>
                                            </div>
                                            <div  style="margin:8px;">
                                                <input type="password" id="txtConfirmPassword" placeholder="Confirm Password" runat="server"/>
                                            </div>

                                            <div class="button-box">
                                                <asp:Button ID="btnRegister" runat="server" Text="Register" />
                                            </div>

                                            <asp:Label ID="lblRegisterResult" runat="server" Font-Bold="true" Text="" Visible="false" CssClass="alignCenter"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
