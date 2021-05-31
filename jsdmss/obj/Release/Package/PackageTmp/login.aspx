<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="jsdmss.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .login-form {
            padding: 25px;
            border: 1px none rgba(239, 239, 239, 0.90);
            margin-bottom: 25px;
            background: #efefef;
            border-radius: 1%;
        }
            .login-form .form-control {
                height:auto;
                margin-bottom:10px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12" id="jds">
                <h2 class="title"><span>Account</span>Login</h2>
            </div>
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-3">
                    </div>
                    <div class="col-md-6 login-form" >
                        <div class="col-md-12">
                        <div class="alert alert-dark alert-dismissible fade show" role="alert" runat="server" id="panel_alert" visible="false">
                            <strong>
                                <asp:Label ID="lbl_message" runat="server" Text=""></asp:Label></strong>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="form-horizontal">
                            <div class="form-group">
                                <label class="control-label" for="email"><strong>Username / Mobile Number:</strong></label>

                                <asp:TextBox runat="server" type="text" class="form-control" ID="txt_username" placeholder="Enter Username/Mobile "></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label class="control-label " for="pwd"><strong>Password:</strong></label>

                                <asp:TextBox ID="txt_pwd" runat="server" type="password" class="form-control" placeholder="Enter password"></asp:TextBox>

                            </div>
                            <div class="form-group"  >
                                <div class="row">
                                    <div class="col-md-12">
                                        <asp:Button ID="btn_submit" class="btn btn-block btn-primary" runat="server" Text="LOGIN" OnClick="btn_submit_Click" Height="40px"  BackColor="Green" BorderStyle="None"/>
                                    </div>
                                    <div class="col-md-6" style="display: none">
                                        <a href="Default.aspx" class="btn btn-block btn-dark">BACK to Homepage</a>
                                    </div>


                                </div>


                            </div>
                        </div></div>
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
