<%@ Page Title="" Language="C#" MasterPageFile="~/RMJSY/RMJSY_MASTE.Master" AutoEventWireup="true" CodeBehind="print-application.aspx.cs" Inherits="jsdmss.RMJSY.print_application" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Print Your Application Form
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .from_h1 {
            font-size: 25px;
            color: #0597bc;
            font-weight: 800;
            text-align: center;
            margin: 10px 0px 0px 0px;
        }

        .slider-sec {
            display: none;
        }

        .from_h3 {
            font-size: 18px;
            height: auto;
            text-align: center;
            margin: 0px 0px 0px 0px;
            padding: 0px 0px 10px 0px;
            line-height: 28px;
        }

        .table th.style1 {
            background: #ddd;
        }

        @media print {
            body * {
                visibility: hidden;
            }

            .div2 * {
                visibility: visible;
            }

            .div2 {
                position: absolute;
                top: 40px;
                left: 30px;
            }
        }

        .btn-info {
            border: none;
            color: #fff;
            padding: 10px 20px;
            font-size: large;
            text-transform: capitalize;
            -webkit-transition: all 0.3s ease-in-out;
            -moz-transition: all 0.3s ease-in-out;
            -o-transition: all 0.3s ease-in-out;
            -ms-transition: all 0.3s ease-in-out;
            transition: all 0.3s ease-in-out;
        }
        @media only screen and (max-width:800px) {
            .btn-info {
                margin:10px 0px 0px 0px;
            }
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="aboutus-page">
            <div class="aboutus-page-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="aboutus-pagetext">
                                <h2 class="aboutus-pagetext-h2">Print Your Application Form</h2>
                                <ul class="aboutus-pagetext-ul">
                                    <li><a href="Default_RMJSY.aspx" title="">Home /</a></li>
                                    <li><a href="javascript:" title="">Print Your Application Form</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin-top: 15px">

                <div class="product-page-head">
                    <h2 class="product-page-head-h2">Print Your <span style="color: #ff0000;">Application</span> </h2>
                </div>
            </div>
            <div class="col-md-12" style="margin-top: 10px; border: 1px dashed #808080; padding: 10px 25px">
                <div class="form-group row">
                    <div class="col-md-6 col-sm-6">
                        <label>Enter Your Mobile Numer :&nbsp;</label>
                        <div class="form-inline">
                            <asp:TextBox ID="txt_mobile" runat="server" CssClass="form-control" Style="margin: 0px; width: 200px; height: 45px"></asp:TextBox>&nbsp;
                        <asp:Button ID="btnfind" runat="server" Text="FIND" CssClass="btn btn-info" OnClick="btnfind_Click" BackColor="#3366cc" />
                        </div>
                    </div>
                </div>
            </div>
            <div id="notification">
                <div id="pan" class="notificationpan">
                    <div style="float: left; width: 235px; height: auto;">
                        <asp:Label ID="lbl_message" runat="server" class="notif-txt"></asp:Label>
                    </div>
                    <asp:ImageButton ID="ImageButton1" ImageUrl="~/images/close.png" runat="server" OnClientClick="$(function () { $('.notificationpan').show().slideUp(1000);});"
                        class="closenotificationpan" Style="background: none" />
                </div>
            </div>
        </div>
        <div class="row" runat="server" id="panel1" visible="false">
            <div class="col-md-12" id="printabledivt" style="margin-top: 10px;">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <tr>
                            <td colspan="3">
                                <h1 class="from_h1">Rashtriya Manav Jiwan Seva Yojna (RMJSY)</h1>
                                <h3 class="from_h3" style="font-weight: 600;">(A Unit of Jaisheela Devi Memorial seva Sansthan)</h3>
                                <h3 class="from_h3">Head Office: Jhaua, Majgama, P.O- Sahja, Block- Pranpur, P.S- Paranpur, Dist- Katihar, Bihar-854107</h3>

                            </td>
                        </tr>
                        <tr>
                            <td><strong>Registration No.- </strong>
                                <asp:Label ID="lbl_registration_no" runat="server" Text="" Font-Bold="true" ForeColor="Blue"></asp:Label></td>
                            <td><strong>Submitted On- </strong>
                                <asp:Label ID="lbl_date" runat="server" Text="" Font-Bold="true" ForeColor="Blue"></asp:Label></td>
                            <td><strong>Apply For- </strong>
                                <asp:Label ID="lblapplyfor" runat="server" Text="" Font-Bold="true" ForeColor="Blue"></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="1">Name of the Post : 
                            <asp:Label ID="lblpostname" runat="server" Text="" ForeColor="#006699"></asp:Label>

                            </td>
                            <td colspan="2">
                                <asp:Label ID="lblpostdetails" runat="server" Text="" ForeColor="#006699"></asp:Label></td>
                        </tr>
                        <tr>
                            <th colspan="3" class="style1">Basic Details</th>
                        </tr>
                        <tr>
                            <td>Name : 
                            <asp:Label ID="lblname" runat="server" Text="" ForeColor="#006699"></asp:Label>
                            </td>
                            <td>Mobile :<asp:Label ID="lblmobile" runat="server" Text="" ForeColor="#006699"></asp:Label></td>
                            <td rowspan="3">
                                <figure style="text-align: center;">
                                    <asp:Image ID="Image1" runat="server" Width="111px" Height="134px" />
                                    <figcaption>
                                        <asp:Image ID="Image2" runat="server" Height="50px" />
                                    </figcaption>
                                </figure>
                            </td>
                        </tr>
                        <tr>
                            <td>Father's Name : 
                            <asp:Label ID="lblfathername" runat="server" Text="" ForeColor="#006699"></asp:Label>
                            </td>
                            <td>Email :<asp:Label ID="lblemail" runat="server" Text="" ForeColor="#006699"></asp:Label></td>

                        </tr>
                        <tr>
                            <td>Mother's Name :<asp:Label ID="lblmothername" runat="server" Text="" ForeColor="#006699"></asp:Label></td>
                            <td>Gender : 
                            <asp:Label ID="lblgender" runat="server" Text="" ForeColor="#006699"></asp:Label>
                            </td>

                        </tr>

                        <tr>
                            <th colspan="3" class="style1">Personal Details</th>
                        </tr>
                        <tr>
                            <td>Date Of Birth :<asp:Label ID="lbldob" runat="server" Text="" ForeColor="#006699"></asp:Label></td>
                            <td>Religion : 
                            <asp:Label ID="lblreligion" runat="server" Text="" ForeColor="#006699"></asp:Label>
                            </td>
                            <td>Category : 
                            <asp:Label ID="lblcategory" runat="server" ForeColor="#006699"></asp:Label>
                            </td>

                        </tr>

                        <tr>
                            <td>Age :<asp:Label ID="lblage" runat="server" Text="" ForeColor="#006699"></asp:Label></td>
                            <td>Nationality : 
                            <asp:Label ID="lblnationality" runat="server" Text="" ForeColor="#006699"></asp:Label>
                            </td>
                            <td>Marital Status : 
                            <asp:Label ID="lblmaritalstatus" runat="server" Text="" ForeColor="#006699"></asp:Label>
                            </td>

                        </tr>
                        <tr>
                            <td>Aadhar :
                            <asp:Label ID="lbladhar" runat="server" Text="" ForeColor="#006699"></asp:Label>
                            </td>
                            <td colspan="2">Disability :<asp:Label ID="lbldisability" runat="server" Text="" ForeColor="#006699"></asp:Label>&nbsp;,
                       
                            <asp:Label ID="lbldisabilitytype" runat="server" Text="" ForeColor="#006699"></asp:Label>
                            </td>

                        </tr>
                        <tr>
                            <th colspan="3" class="style1">Other Details</th>
                        </tr>
                        <tr>
                            <td colspan="3">Permanent Address :<asp:Label ID="lblpermanentaddress" runat="server" Text="" ForeColor="#006699"></asp:Label></td>



                        </tr>
                        <tr>
                            <td colspan="3">Correspondence Address : 
                            <asp:Label ID="lblcorrespondenceaddress" runat="server" Text="" ForeColor="#006699"></asp:Label>
                            </td>


                        </tr>

                        <tr>
                            <td>Computer Knowledge :<asp:Label ID="lblcomputerknowledge" runat="server" Text="" ForeColor="#006699"></asp:Label></td>
                            <td>Having Laptop :<asp:Label ID="lbllaptop" runat="server" Text="" ForeColor="#006699"></asp:Label></td>
                            <td>Having Android Mobile : 
                            <asp:Label ID="lblandroidmobile" runat="server" Text="" ForeColor="#006699"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">Experience :<asp:Label ID="lblexperiance" runat="server" Text="" ForeColor="#006699"></asp:Label></td>

                        </tr>
                        <tr>
                            <th colspan="3" class="style1">Academic Details</th>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:GridView ID="grd_data_academic" runat="server"
                                    CssClass="table table-bordered">
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <script type="text/javascript">

                function PrintElem(elem) {
                    Popup($(elem).html());
                }

                function Popup(data) {
                    var mywindow = window.open('', 'new div', 'height=700,width=1100');
                    mywindow.document.write('<html><head><title>my div</title>');
                    /*optional stylesheet*/ //mywindow.document.write('<link rel="stylesheet" href="main.css" type="text/css" />');
                    mywindow.document.write('</head><body >');
                    mywindow.document.write(data);
                    mywindow.document.write('</body></html>');

                    mywindow.print();
                    mywindow.close();

                    return true;
                }

            </script>
            <div class="col-md-12">
                <div class="categoryy-wraper w3-padding-16">
                    <div class="row">
                        <div class="col-md-6 w3-center">
                            <a href="Career_apply_online.aspx" class="btn btn-black"><i class="fa fa-long-arrow-left" aria-hidden="true"></i>Back to Registration</a>
                        </div>
                        <div class="col-md-6 w3-center">
                            <a onclick="PrintElem('#printabledivt')" class="btn btn-block btn-info"><i class="fa fa-print" aria-hidden="true"></i>&nbsp;Print Your Application For Further Reference</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

