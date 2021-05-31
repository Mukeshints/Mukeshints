<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="donation_now.aspx.cs" Inherits="jsdmss.donation_now" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Donation Now
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .menubar nav > ul > li > a.about22 {
            background: #FF0000;
            color: white;
        }

        .slider-sec {
            display: none;
        }

        .about_scep {
           
            font-weight: 800;
            font-size: 16px;
            color: #000;
            height: auto;
            width: 100%;
            padding: 0px 0px 15px 0px;
            margin: 0px 0px 0px 0px;
            float: left;
           
        }

        .aboutp {
            height: auto;
            width: 100%;
            padding: 0px 0px 15px 0px;
            margin: 0px 0px 0px 0px;
            float: left;
            font-size: 15px;
            font-weight: 500;
            line-height: 25px;
            color: #242121;
            text-align: justify;
        }

        .about_sec {
            height: auto;
            width: 100%;
            padding: 45px 0px 0px 0px;
            margin: 0px 0px 0px 0px;
            float: left;
        }

        .table, th {
            border: 1px solid #8c8989;
            text-align: center;
            color: #ffffff;
            padding: 5px 10px;
            font-size: 15px;
            font-weight: 600;
            background-color: #1da3d6;
        }


        .table, td {
            border: 1px solid #8c8989;
            text-align: center;
            color: #000000;
            padding: 5px 10px;
            font-size: 21px;
        }

        .yojna-tablesec {
            height: auto;
            width: 100%;
            margin: 0px 0px 0px 0px;
            padding: 0px 0px 0px 0px;
            float: left;
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
                                <h2 class="aboutus-pagetext-h2">Donation Now</h2>
                                <ul class="aboutus-pagetext-ul">
                                    <li><a href="Default.aspx" title="">Home /</a></li>
                                    <li><a href="javascript:" title="">Donation Now</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="about_sec">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-12 col-xs-12">
                        <div class="product-page-head">
                            <%--<h2 class="product-page-head-h2">Donation <span style="color: #ff0000;">Now</span> </h2>--%>
                            <p class="about_scep">इच्छुक व्यक्ति/दाता संस्था योजना संचालन में दान दे सकते हैं।</p>
                            <div class="yojna-tablesec">
                                <div class="table-responsive">
                                    <table>
                                        <tr>
                                            <img src="RMJSY/images/bank_of_baroda.png" alt="" class="img-responsive" style="width: 581px;" />
                                        </tr>
                                        <tr>
                                            <td>Bank Name :-</td>
                                            <td>Bank of Baroda</td>

                                        </tr>
                                        <tr>
                                            <td>Branch Name :-</td>
                                            <td>Katihar</td>

                                        </tr>
                                        <tr>
                                            <td>Account Name:-</td>
                                            <td>Jaisheela Devi Memorial Seva Sansthan</td>

                                        </tr>
                                        <tr>
                                            <td> Account No. :-</td>
                                            <td>29120200000628</td>
                                        </tr>
                                        <tr>
                                            <td>IFSC Code :- </td>
                                            <td>BARB0KATIHA</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
</asp:Content>
