<%@ Page Title="" Language="C#" MasterPageFile="~/Maindmin/User.Master" AutoEventWireup="true" CodeBehind="view-registration-details.aspx.cs" Inherits="jsdmss.Maindmin.view_registration_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    View Registration Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>        .bold-text {
            font-weight:bold;
        }
        .data-format {
            color:#0094ff;
            font-size:large;
        }
        .btn-black {
           border:1px solid #000;
           padding:5px;
           background:#808080;
           color:#fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h3 class="page-title">View Registration Details &nbsp;&nbsp;<a href="view-registration.aspx" class="btn-black">BACK</a></h3>
        </div>
        <div class="col-md-12">

            <h3>Basic Details</h3>
            <asp:GridView ID="grd_data" runat="server" AutoGenerateColumns="false" ShowHeader="false"
                CssClass="table table-bordered">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <table class="table table-condensed">
                                <tr>
                                    <td >
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image")%>' Height="150px" />                                    
                                    </td>
                                    <td> <asp:Image ID="Image2" runat="server" ImageUrl='<%#Eval("signature")%>' /></td>
                                </tr>
                                <tr>
                                    <td><strong>Apllicantion Number</strong></td>
                                    <td class="data-format"><%#Eval("ApplicantId")%></td>
                                </tr>
                                <tr>
                                    <td><strong>Name :</strong></td>
                                    <td class="data-format"><%#Eval("CandidateName")%></td>
                                </tr>
                                <tr>
                                    <td><strong>Father's Name :</strong></td>
                                    <td class="data-format"><%#Eval("FatherName")%></td>
                                </tr>
                                <tr>
                                    <td><strong>Mother's Name :</strong></td>
                                    <td class="data-format"><%#Eval("MotherName")%></td>
                                </tr>
                                <tr>
                                    <td><strong>Date Of Birth :</strong></td>
                                    <td class="data-format"><%#Eval("DateOfBirth")%></td>
                                </tr>
                                <tr>
                                    <td><strong>Age :</strong></td>
                                    <td class="data-format"><%#Eval("Age")%></td>
                                </tr>
                                <tr>
                                    <td><strong>Mobile :</strong></td>
                                    <td class="data-format"><%#Eval("Mobile")%></td>
                                </tr>
                                 <tr>
                                    <td><strong>Email :</strong></td>
                                    <td class="data-format"><%#Eval("Email")%></td>
                                </tr>
                                <tr>
                                    <td><strong>Applied For :</strong></td>
                                    <td class="data-format"><%#Eval("AppliedFor")%></td>
                                </tr>
                                <tr>
                                    <td><strong>Post :</strong></td>
                                    <td class="data-format"><%#Eval("Post_name")%>   </td>
                                </tr>
                                <tr>
                                    <td class="bold-text">State</td>
                                    <td class="data-format"><%#Eval("State")%></td>
                                </tr>
                                <tr>
                                    <td class="bold-text">District</td>
                                    <td class="data-format"><%#Eval("District")%></td>
                                </tr>
                                <tr>
                                    <td class="bold-text">Block</td>
                                    <td class="data-format"><%#Eval("Block")%></td>
                                </tr>
                                <tr>
                                    <td class="bold-text">Panchayat</td>
                                    <td class="data-format"><%#Eval("Panchayat")%></td>
                                </tr>

                                <tr>
                                    <td><strong>Category :</strong></td>
                                    <td class="data-format"><%#Eval("Category")%></td>
                                </tr>
                                <tr>
                                    <td><strong>Religion :</strong></td>
                                    <td class="data-format"><%#Eval("Religion")%></td>
                                </tr>
                                <tr>
                                    <td class="bold-text">Nationality</td>
                                    <td class="data-format"><%#Eval("Nationality")%></td>
                                </tr>
                                <tr>
                                    <td class="bold-text">Marital Status</td>
                                    <td class="data-format"><%#Eval("MaritalStatus")%></td>
                                </tr>
                                <tr>
                                    <td class="bold-text">Gender</td>
                                    <td class="data-format"><%#Eval("Gender")%></td>
                                </tr>
                                <tr>
                                    <td class="bold-text">Disability</td>
                                    <td class="data-format"><%#Eval("Disability")%></td>
                                </tr>
                                <tr>
                                    <td class="bold-text">Disability Type</td>
                                    <td class="data-format"><%#Eval("DisabilityType")%></td>
                                </tr>
                                <tr>
                                    <td class="bold-text">Permanent  Address</td>
                                    <td class="data-format"><%#Eval("permanant_address")%></td>
                                </tr>
                                <tr>
                                    <td class="bold-text">Correspondence Address</td>
                                    <td class="data-format"><%#Eval("correspond_address")%></td>
                                </tr>
                                <tr>
                                    <td class="bold-text">Having Android Mobile</td>
                                    <td class="data-format"><%#Eval("having_android_mobile")%></td>
                                </tr>
                                <tr>
                                    <td class="bold-text">Having Laptop</td>
                                    <td class="data-format"><%#Eval("having_laptop")%></td>
                                </tr>
                                <tr>
                                    <td class="bold-text">Computer Knowledge</td>
                                    <td class="data-format"><%#Eval("computer_knowledge")%></td>
                                </tr>
                                <tr>
                                    <td class="bold-text">Experiance</td>
                                    <td class="data-format"><%#Eval("Experience")%></td>
                                </tr>
                            </table>                        </ItemTemplate>
                    </asp:TemplateField>


                </Columns>
            </asp:GridView>
            <h3>Academic Details</h3>
              <asp:GridView ID="grd_data_academic" runat="server"
                CssClass="table table-bordered"></asp:GridView>
        </div>
    </div>
</asp:Content>
