<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Contact_us.aspx.cs" Inherits="jsdmss.Contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Contact Us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .menubar nav > ul > li > a.contact {
            background: #FF0000;
            color: white;
        }

        .slider-sec {
            display: none;
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
                                <h2 class="aboutus-pagetext-h2">Contact-Us</h2>
                                <ul class="aboutus-pagetext-ul">
                                    <li><a href="Default.aspx" title="">Home /</a></li>
                                    <li><a href="javascript:" title="">Contact-Us</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="product-page">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-page-head">
                            <h2 class="product-page-head-h2">Contact<span style="color: #ff0000;"> Us</span> </h2>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="contant-sec">
                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                            <div class="icon-box">
                                <i class="fa fa-map-marker a1" aria-hidden="true"></i>
                                <div class="contenttext">
                                    <h3 class="icon-box-h3">ADDRESS</h3>
                                    <p class="icon-box-p"><b>Head Office:-</b>Jhaua, Majgama, P.O- Sahja, Block- Pranpur, P.S- Paranpur, Dist- Katihar, Bihar-854107</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                            <div class="icon-box">
                                <i class="fa fa-phone a1" aria-hidden="true"></i>
                                <div class="contenttext">
                                    <h3 class="icon-box-h3">Contact No.</h3>
                                    <a class="icon-box-a" href="tell:+91 9931730728">+91 9931 730 728</a>
                                    <a class="icon-box-a" href="tell:+91 9972072980">+91 9972 072 980</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                            <div class="icon-box">
                                <i class="icon fa fa-envelope a1" aria-hidden="true"></i>
                                <div class="contenttext">
                                    <h3 class="icon-box-h3">EMAIL</h3>
                                    <a class="icon-box-a" href="mailto:jsdmssrmjsy0248@gmail.com">jsdmssrmjsy0248@gmail.com</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-page-head">
                            <h2 class="product-page-head-h2">INQUIRY</h2>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="contentbox">
                            <asp:TextBox ID="TextBox4" runat="server" Class="formcontrol" placeholder="Your Name"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="contentbox">
                            <asp:TextBox ID="TextBox3" runat="server" Class="formcontrol" placeholder="Contact No"></asp:TextBox>

                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="contentbox">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="formcontrol" placeholder="E-Mail"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="contentbox-message">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="formcontrol" placeholder="Your Message" Style="height: 100px;" TextMode="MultiLine"></asp:TextBox>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="sub-btn">
                            <input type="submit" name="ctl00$ContentPlaceHolder1$btn_submit" value="SUBMIT NOW" id="btn_submit" name="submitbtn" class="sub-btn-a" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
