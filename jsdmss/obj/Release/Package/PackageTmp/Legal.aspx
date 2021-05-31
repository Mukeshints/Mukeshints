<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Legal.aspx.cs" Inherits="jsdmss.Legal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Legal
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .menubar nav > ul > li > a.legal {
            background: #FF0000;
            color: white;
        }

        .slider-sec {
            display: none;
        }   
        .about_sec {
            height: auto;
            width: 100%;
            padding: 45px 0px 0px 0px;
            margin: 0px 0px 0px 0px;
            float: left;
        }  
        .pdf-sec {
            margin: 0px 0px 0px 0px;
            padding: 0px 0px 0px 0px;
            width: 100%;
            height: auto;
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
                                <h2 class="aboutus-pagetext-h2">Legal Document</h2>
                                <ul class="aboutus-pagetext-ul">
                                    <li><a href="Default.aspx" title="">Home /</a></li>
                                    <li><a href="javascript:" title="">Legal Document</a></li>
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
                    <div class="col-lg-12  col-md-12 col-sm-12 col-xs-12">
                        <div class="product-page-head">
                            <h2 class="product-page-head-h2">Legal  <span style="color: #ff0000;">Document</span> </h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6  col-md-6 col-sm-12 col-xs-12">
                        <div class="pdf-sec">
                            <img src="images/Sansthan_Certificate.jpg" alt="" class="img-responsive" />
                        <%--<iframe src="PDF/sanstha_certificate.pdf" style="width: 100%; height: 500px;"></iframe>--%>
                    </div>
                    </div>
                    <div class="col-lg-6  col-md-6 col-sm-12 col-xs-12">
                         <div class="pdf-sec">
                              <img src="images/Sansthan_PANCard.jpg" alt="" class="img-responsive" style="min-height: 392px;" />
                        <%--<iframe src="PDF/sanstha_pen_card.pdf" style="width: 100%; height: 500px;"></iframe>--%>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
