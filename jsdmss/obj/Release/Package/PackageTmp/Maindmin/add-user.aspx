<%@ Page Title="" Language="C#" MasterPageFile="~/Maindmin/User.Master" AutoEventWireup="true" CodeBehind="add-user.aspx.cs" Inherits="jsdmss.Maindmin.add_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Add User
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-group {
            margin-bottom: 8px;
        }

        .form-control {
            width: 100% !important;
        }

        .main_divtop {
            width: 100%;
            height: auto;
            margin: 0px;
            padding: 40px 0px 0px 0px;
            float: left;
        }

        .btn {
            font-size: 20px;
            background-color: #0065a4;
            color: #fff;
            border: 1px solid #083754;
        }

            .btn:hover {
                background-color: #78a22f;
                color: #fff;
            }

        .coord-p {
            font-size: 18px;
            color: #000;
            padding: 0px;
            margin: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="main_divtop">
        <div class="row">
            <div class="col-md-12">
                <h3 class="page-title">Add User </h3>
            </div>
        </div>
      
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group form-inline">
                        <p class="coord-p">Select Post Type</p>
                        <asp:DropDownList ID="ddl_post_type" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_post_type_SelectedIndexChanged">
                            <asp:ListItem Value="1">PANCHAYAT COORDINATOR</asp:ListItem>
                            <asp:ListItem Value="2">BLOCK MANAGER OFFICER (BMO)</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="form-group form-inline">
                        <p class="coord-p">Select State</p>
                        <asp:DropDownList ID="ddl_state" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_state_SelectedIndexChanged">
                            <asp:ListItem Selected="True"> Select State </asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group form-inline">
                        <p class="coord-p">Select District</p>
                        <asp:DropDownList ID="ddl_district" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_district_SelectedIndexChanged">
                            <asp:ListItem Selected="True">Select District</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group form-inline">
                        <p class="coord-p">Select Block</p>
                        <asp:DropDownList ID="ddl_block" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_block_SelectedIndexChanged">
                            <asp:ListItem Selected="True">Select Block</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group form-inline">
                        <p class="coord-p">Select Panchayat</p>
                        <asp:DropDownList ID="ddl_panchayat" CssClass="form-control" runat="server">
                            <asp:ListItem Selected="True">Select Panchayat</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="form-group form-inline">
                        <p class="coord-p">Candidate’s Name</p>
                        <asp:TextBox ID="txt_candidate_name" CssClass="form-control" runat="server" placeholder="Candidate’s Name"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group form-inline">
                        <p class="coord-p">Mobile No.</p>
                        <asp:TextBox ID="txt_mobile_no" CssClass="form-control" runat="server" placeholder="Mobile No."></asp:TextBox>
                    </div>
                </div>
            
                <div class="col-md-4">
                    <div class="form-group form-inline">
                        <p class="coord-p">Email ID</p>
                        <asp:TextBox ID="txt_emailID" CssClass="form-control" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group form-inline">
                        <p class="coord-p">Address</p>
                        <asp:TextBox ID="txt_address" CssClass="form-control" runat="server" TextMode="MultiLine" placeholder="Address"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group form-inline">
                        <p class="coord-p">
                            User Id
                        </p>
                        <asp:TextBox ID="txt_user_id" CssClass="form-control" runat="server" placeholder="User Id" ValidationGroup="UID"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="/(?i)^(?=.*[a-z])[a-z0-9]{8,20}$/gm" ErrorMessage="Use alphabet [a-z] and numeric value [0-9] for user id" ControlToValidate="txt_user_id" ValidationGroup="UID" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group form-inline">
                        <p class="coord-p">Password</p>
                        <asp:TextBox ID="txt_password" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-md-6 col-sm-6">
                    <br />
                    <asp:Button ID="btn_submit" runat="server" Text="Submit" CssClass="btn btn-sm btn-dark" OnClick="btn_submit_Click" ValidationGroup="UID" />
                </div>

            </div>
            <div class="col-md-12">
                <asp:Label ID="lbl_message2" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>
        </div>
        
    </div>

</asp:Content>
