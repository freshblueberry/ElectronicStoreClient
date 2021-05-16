<%@ Page Async="true" Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="Register.aspx.vb" Inherits="ElectronicStoreClient.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Add Content Here-->
        <div class="breadcrumb-area bg-gray">
            <div class="container">
                <div class="breadcrumb-content text-center">
                    <ul>
                        <li>
                            <a href="default.aspx">Home</a>
                        </li>
                        <li class="active">register </li>
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
                                <a class="active" data-toggle="tab">
                                    <h4> Register </h4>
                                </a>
                            </div>
                                <div id="lg2" class="tab-pane">
                                    <div class="login-form-container">
                                        <div class="login-register-form">
                                            <div style="margin-bottom:16px;">
                                                <input type="text" id="txtEmail" placeholder="Email" runat="server"/>
                                            </div>
                                            <div  style="margin-bottom:16px;">
                                                <input type="password" id="txtPassword" placeholder="Password" runat="server"/>
                                            </div>
                                            <div  style="margin-bottom:16px;">
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
