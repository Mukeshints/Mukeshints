<%@ Page Title="" Language="C#" MasterPageFile="~/Maindmin/User.Master" AutoEventWireup="true" CodeBehind="Add_panchayat_coordinator.aspx.cs" Inherits="jsdmss.Maindmin.Add_panchayat_coordinator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Add Panchayat Coordinator
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
    <%--<div class="row">
        <div id="notification">
            <div id="pan" class="notificationpan">
                <div style="float: left; width: 235px; height: auto;">
                    <asp:Label ID="lblmessage" runat="server" class="notif-txt"></asp:Label>
                </div>
                <asp:ImageButton ID="ImageButton1" ImageUrl="images/close.png" runat="server" OnClientClick="$(function () { $('.notificationpan').show().slideUp(1000);});"
                    class="closenotificationpan" Style="background: none" />
            </div>
        </div>
    </div>--%>
    <div class="main_divtop">
        <div class="row">
            <div class="col-md-12">
                <h3 class="page-title">Add Panchayat Coordinator </h3>
            </div>
        </div>
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group form-inline">
                        <p class="coord-p">Select Post Type</p>
                        <asp:DropDownList ID="ddl_post_type" CssClass="form-control" runat="server">
                            <asp:ListItem>PANCHAYAT COORDINATOR</asp:ListItem>
                            <asp:ListItem>BLOCK MANAGER OFFICER (BMO)</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group form-inline">
                        <p class="coord-p">Select State</p>
                        <asp:DropDownList ID="ddl_state" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_state_SelectedIndexChanged">
                            <asp:ListItem Selected="True"> Select State </asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group form-inline">
                        <p class="coord-p">Select District</p>
                        <asp:DropDownList ID="ddl_district" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_district_SelectedIndexChanged">
                            <asp:ListItem Selected="True">Select District</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group form-inline">
                        <p class="coord-p">Select Block</p>
                        <asp:DropDownList ID="ddl_block" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_block_SelectedIndexChanged">
                            <asp:ListItem Selected="True">Select Block</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group form-inline">
                        <p class="coord-p">Select Panchayat</p>
                        <asp:DropDownList ID="ddl_panchayat" CssClass="form-control" runat="server">
                            <asp:ListItem Selected="True">Select Panchayat</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="form-group form-inline">
                        <p class="coord-p">Candidate’s Name</p>
                        <asp:TextBox ID="txt_candidate_name" CssClass="form-control" runat="server" placeholder="Candidate’s Name"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group form-inline">
                        <p class="coord-p">Mobile No.</p>
                        <asp:TextBox ID="txt_mobile_no" CssClass="form-control" runat="server" placeholder="Mobile No."></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group form-inline">
                        <p class="coord-p">Email ID</p>
                        <asp:TextBox ID="txt_emailID" CssClass="form-control" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group form-inline">
                        <p class="coord-p">Address</p>
                        <asp:TextBox ID="txt_address" CssClass="form-control" runat="server" TextMode="MultiLine" placeholder="Address"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group form-inline">
                        <p class="coord-p">User Id</p>
                        <asp:TextBox ID="txt_user_id" CssClass="form-control" runat="server" placeholder="User Id"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group form-inline">
                        <p class="coord-p">Password</p>
                        <asp:TextBox ID="txt_password" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-md-6 col-sm-6">
                    <br />
                    <asp:Button ID="btn_submit" runat="server" Text="Submit" CssClass="btn btn-sm btn-dark" OnClick="btn_submit_Click" />
                </div>

            </div>
            <div class="col-md-12">
                <asp:Label ID="lbl_message2" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>
    <div class="main_divtop">
        <asp:Panel ID="pnl_grid" runat="server">
            <div class="col-lg-12 colmd-12 col-sm-12 col-xs-12">
                <div class="content-wraper">
                    <h2 class="title">Panchayat Coordinator List</h2>
                    <div class="grid-wraper">
                        <div class="table-responsive" style="overflow: auto">
                            <table class="table table-striped table-advance table-hover">
                                <tr>
                                    <td>
                                        <asp:GridView ID="grd_panchyat_cood_list" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="grd_panchyat_cood_list_PageIndexChanging" AllowPaging="True" Font-Bold="False" class="table table-striped table-advance table-hover" Style="margin-top: 0; width: 100%; overflow: scroll">
                                            <RowStyle />
                                            <Columns>
                                                <asp:TemplateField HeaderText="Sr No.">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblSRNO" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="State">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl_State" runat="server" Text='<%#Bind("State") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Didtrict">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl_Didtrict" runat="server" Text='<%#Bind("Didtrict") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Block">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl_Block" runat="server" Text='<%#Bind("Block") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Panchayat">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl_Panchayat" runat="server" Text='<%#Bind("Panchayat") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Name">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl_name" runat="server" Text='<%#Bind("Name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Mobile No.">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl_Mobile_no" runat="server" Text='<%#Bind("Mobile_no") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Email Id">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl_EmailId" runat="server" Text='<%#Bind("EmailId") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Address">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl_Address" runat="server" Text='<%#Bind("Address") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="User Id">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl_User_id" runat="server" Text='<%#Bind("User_id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Password">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl_Password" runat="server" Text='<%#Bind("Password") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="id" Visible="False">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbl_id" runat="server" Text='<%#Bind("Id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="link_delete" runat="server" OnClick="link_delete_Click" OnClientClick='return confirm("Are you sure want to delete ?")' CausesValidation="False">Delete</asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <SelectedRowStyle BackColor="#EFEFEF" Font-Bold="True" ForeColor="#CC0000" />
                                            <HeaderStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="#333333" Height="40px" />
                                            <AlternatingRowStyle BackColor="White" />
                                        </asp:GridView>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
