<%@ Page Title="" Language="C#" MasterPageFile="~/Maindmin/User.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="jsdmss.Maindmin.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .quicklinks a {
            margin: 15px 0px 10px 0px;
            width: 100%;
            padding: 15px 25px;
          
            display: block;
            text-align: center;
            font-size: x-large;
            color: #fff;
            text-transform: uppercase;
            border-radius: 0px;
        }

            .quicklinks a:hover {
                background:#000;
            }

        .quicklinks_tot {
            margin: 15px 0px 10px 0px;
            width: 100%;
            padding: 13px 12px;
            background: #78a22f;
            display: block;
            text-align: center;
            font-size: x-large;
            color: #fff;
            text-transform: uppercase;
            border-radius: 0px;
            float: left;
        }

            .quicklinks_tot:hover {
                background: #808080;
            }

        .total_p {
            margin: 0px;
            padding: 0px;
            width: 100%;
            height: auto;
            float: left;
            font-size: x-large;
            line-height: 24px;
            color: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-md-12">
            <h3 class="page-title">Dashboard</h3>
        </div>
        <div class="col-md-12 quicklinks">
            <div class="row">
                <div class="col-md-4 ">
                    <a href="view-registration.aspx" class="bg-primary text-white">View Registration</a>
                </div>
                <div class="col-md-4 ">
                    <a href="view-member.aspx" class="bg-secondary text-white">View Member</a>
                </div>
                 <div class="col-md-4 ">
                    <a href="add-user.aspx" class="bg-success text-white">Add User
                    </a>
                </div>
              
            </div>
            <div class="row">
                <div class="col-md-4">
                    <a href="activate-user.aspx" class="bg-warning text-dark">Activate User</a>
                </div>
                <div class="col-md-4">
                    <a href="view-user.aspx" class="bg-danger text-white">Deactivate User</a>
                </div>
                
               <div class="col-md-4">
                    <a href="print-member-details.aspx" class="bg-info text-white">Print Member Details</a>
                </div>
                
            </div>
            <%--<div class="row">
                    <div class="col-md-4">
                        <table class="table table-bordered">
                            <tr>
                                <th colspan="2">Overall Collection Report</th>
                            </tr>
                            <tr>
                                <td>Total Collection</td>
                                <td>
                                    <asp:Label ID="lbl_total_collection" runat="server" Text="0.00" Font-Bold="true" ForeColor="BlueViolet"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>Total Dues</td>
                                <td>
                                    <asp:Label ID="lbl_dues" runat="server" Text="0.00" Font-Bold="true" ForeColor="BlueViolet"></asp:Label></td>
                            </tr>
                        </table>
                    </div>
                    
                </div>--%>
        </div>
    </div>

</asp:Content>
