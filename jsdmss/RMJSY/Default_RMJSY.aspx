<%@ Page Title="" Language="C#" MasterPageFile="~/RMJSY/RMJSY_MASTE.Master" AutoEventWireup="true" CodeBehind="Default_RMJSY.aspx.cs" Inherits="jsdmss.RMJSY.Default_RMJSY" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Welcome to RMJSY 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .menubar nav > ul > li > a.Default {
            background: #0597bc;
            color: white;
        }
    </style>
    <link href="fancybox/jquery.fancybox.css" rel="stylesheet" />
    <script src="fancybox/jquery.fancybox.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<asp:Panel ID="panel_popup" runat="server">
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $.fancybox({
                    href: "Popup-image.aspx",
                    type: "iframe",
                    width: "800",
                    top: "200"

                });
            }); // ready
        </script>
    </asp:Panel>--%>
    <!--  About section -->
    <section>
        <div class="section-content">
            <div class="row about-row">
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 just-one">
                    <div class="bg-theme-colored">
                        <div class="bg-theme-coloredred">
                            <h3 class="bg-theme-colored-h3">Become a Volunteer</h3>
                            <p class="text-white-p">Lorem ipsum dolor sit amet, consectetur adipisi cing elit. Quos dolo rem consequ untur, natus laudantium commodi.</p>
                            <a href="javascript:" class="btn-select">Join us Now</a>
                        </div>
                        <div class="home-boxes"><i class="fa fa-heartbeat flaticon-charity-shaking-hands-inside-a-heart bg-icon"></i></div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 just-two">
                    <div class="bg-theme-colored">
                        <div class="bg-theme-coloredred">
                            <h3 class="bg-theme-colored-h3">Women's Health</h3>
                            <p class="text-white-p">Lorem ipsum dolor sit amet, consectetur adipisi cing elit. Quos dolo rem consequ untur, natus laudantium commodi.</p>
                            <a href="javascript:" class="btn-select">Contact us</a>
                        </div>
                        <div class="home-boxes">
                            <img src="images/house (1).png" class="flaticon-charity-shaking-hands-inside-a-heart bg-icon" />
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 just-three">
                    <div class="bg-theme-colored">
                        <div class="bg-theme-coloredred">
                            <h3 class="bg-theme-colored-h3">Social Health</h3>
                            <p class="text-white-p">Lorem ipsum dolor sit amet, consectetur adipisi cing elit. Quos dolo rem consequ untur, natus laudantium commodi.</p>
                            <a href="page-donate.html" class="btn-select">Donate Us</a>
                        </div>
                        <div class="home-boxes">
                            <img src="images/house (2).png" class="flaticon-charity-shaking-hands-inside-a-heart bg-icon" />
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 just-four">
                    <div class="bg-theme-colored">
                        <div class="bg-theme-coloredred">
                            <h3 class="bg-theme-colored-h3">Skill Development</h3>
                            <p class="text-white-p">Lorem ipsum dolor sit amet, consectetur adipisi cing elit. Quos dolo rem consequ untur, natus laudantium commodi.</p>
                            <a href="javascript:" class="btn-select">Contact Now</a>
                        </div>
                        <div class="home-boxes"><i class="fa fa-mobile flaticon-charity-shaking-hands-inside-a-heart bg-icon"></i></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--  About section end -->
    <!-- Section: About SECOND  -->
    <section>
        <div class="section-content-SECOND">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                        <h3 class="line-bottom">Welcome To <span>Rashtriya Manav Jiwan Seva Yojna</span></h3>
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12" style="float: right;">
                                <img src="images/about_us.jpg" class="img-responsive about-img-center" />
                            </div>
                            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                <p class="lead">यह राष्ट्र्रीय मानव जीवन सेवा योजना(RMJSY) “जयशीला देवी मेमोरियल सेवा संस्थान” के द्वारा संचालित होगी।  यह जयशीला देवी मेमोरियल सेवा संस्थान की इकाई है।  राष्ट्र्रीय मानव जीवन सेवा योजना (RMJSY) के तहत कुल 07(सात) तरह की योजनाएं संचालित होगी यथा – </p>
                                <p class="lead-p">यह योजना समाज के उस व्यक्ति की सेवा एवं सहायता करेगी जो अर्थाभाव कें किसी भी प्रकार की जीवनरक्षक या स्वंय की सहायता के लिए इन्सोरेंस नहीं करवा पाता हो, जीवनयापन काल में उत्पन्न समस्याओं का सामना करने में असमर्थ हैं। वैसे व्यक्ति का यफ़ि जीवनकाल में किसी प्रकार की अप्रिय घटना/दुर्घटना का शिकार होने पर तत्काल आर्थिक सहायता प्राप्त नहीं होती है, तो वैसी स्थिति में इस योजना के तहत तत्काल प्रभाव से “आन द स्पाट” आर्थिक एवं शारीरिक सहायता प्रदान की जायेगी।  जिससे कि असहाय गरीबा व्यक्ति को तत्काल राहत प्राप्त हो सके।  इस योजना का निर्माण मानव जीवन में घटित होने वाली अप्रिय घटनाओं को मद्देनजर रखते हुए किया गया है, ताकि किसी भी परिस्थिति में मनुष्य स्वंय को असहाय महसूस न करे।
                                    <br />
                                    <a class="btn-theme-colored" href="aboutus_rmjsy.aspx">Read More</a> </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="newsbox-box">
                            <h3 class="newsbox-box-h3">Latest News</h3>
                            <div class="news-box-wrap">
                                <div id="nt-example1-container">
                                    <ul id="nt-example1" style="overflow: hidden;">
                                             <li style="margin-top: 0px;">On 29/01/2021 there will be an Interview and document verification of the post of panchayat coordinator of all panchayat of Barari block.
                                                    <br />
                                            <span>January, 29, 2021</span> &nbsp; <a href="javascript:" style="color: #e8a94d; font-size: 13px;">
                                                <img src="/RMJSY/images/NEW.gif" />
                                            </a>
                                            <br />
                                            <a class="calender-a" href="javascript:">On 29/01/2021 there will be an Interview and document verification of the post of panchayat coordinator of all panchayat of Barari block.</a>
                                        </li>

                                        <li style="margin-top: 0px;">On 30/01/2021 there will be an Interview and document verification of the post of panchayat coordinator of all panchayat of Pranpur  and Katihar block.
                                                    <br />
                                            <span>January, 30, 2021</span> &nbsp; <a href="javascript:" style="color: #e8a94d; font-size: 13px;">
                                                <img src="/RMJSY/images/NEW.gif" />
                                            </a>
                                            <br />
                                            <a class="calender-a" href="javascript:">On 30/01/2021 there will be an Interview and document verification of the post of panchayat coordinator of all panchayat of Pranpur  and Katihar  block.</a>
                                        </li>
                                         <li style="margin-top: 0px;">On 31/01/2021 there will be an Interview and document verification of the post of panchayat coordinator of all panchayat of  Dandkhora, Hasanganj , Mansahi , Manihari , Amdabad , Korha, Falka and Sameli block.
                                                    <br />
                                            <span>January, 31, 2021</span> &nbsp; <a href="javascript:" style="color: #e8a94d; font-size: 13px;">
                                                <img src="/RMJSY/images/NEW.gif" />
                                            </a>
                                            <br />
                                            <a class="calender-a" href="javascript:">On 31/01/2021 there will be an Interview and document verification of the post of panchayat coordinator of all panchayat of  Dandkhora, Hasanganj , Mansahi , Manihari , Amdabad , Korha, Falka and Sameli block.</a>
                                        </li>
                                         <li style="margin-top: 0px;">On 01/02/2021 there will be an Interview and document verification of the post of panchayat coordinator of all panchayat of Kursela , Azamnagar , Barsoi, Kadwa and Balrampur block.
                                                    <br />
                                            <span>February, 01, 2021</span> &nbsp; <a href="javascript:" style="color: #e8a94d; font-size: 13px;">
                                                <img src="/RMJSY/images/NEW.gif" />
                                            </a>
                                            <br />
                                            <a class="calender-a" href="javascript:">On 01/02/2021 there will be an Interview and document verification of the post of panchayat coordinator of all panchayat of Kursela , Azamnagar , Barsoi, Kadwa and Balrampur block.</a>
                                        </li>
                                         <li style="margin-top: 0px;">On 29/01/2021, there will be an interview and document verification of the post of Panchayat Coordinator of all Panchayats of Manihari, Manasahi, Barari.
                                                    <br />
                                            <span>January, 29, 2021</span> &nbsp; <a href="javascript:" style="color: #e8a94d; font-size: 13px;"><img src="/RMJSY/images/NEW.gif" /> </a>
                                            <br />
                                            <a class="calender-a" href="javascript:">On 29/01/2021, there will be an interview and document verification of the post of Panchayat Coordinator of all Panchayats of Manihari, Manasahi, Barari.</a>
                                        </li>
                                         <li style="margin-top: 0px;">Block selected for the post of BMO interview and certificate verification for Katihar, Pranpur held on 28/01/2021.
                                                    <br />
                                            <span>January, 28, 2021</span> &nbsp; <a href="javascript:" style="color: #e8a94d; font-size: 13px;"><img src="/RMJSY/images/NEW.gif" /> </a>
                                            <br />
                                            <a class="calender-a" href="javascript:">Block selected for the post of BMO interview and certificate verification for Katihar, Pranpur held on 28/01/2021.</a>
                                        </li>
                                        <li style="margin-top: 0px;">Block selected for the post of BMO interview and certificate verification for Manihari, Korha, Kadwa, Barari, Azamnagar, Balrampur, Barsoi, Amdabad held on 27/01/2021 Wednesday.
                                                    <br />
                                            <span>January, 27, 2021</span> &nbsp; <a href="javascript:" style="color: #e8a94d; font-size: 13px;">
                                                <img src="/RMJSY/images/NEW.gif" />
                                            </a>
                                            <br />
                                            <a class="calender-a" href="javascript:">Block selected for the post of BMO interview and cetificate verification for Manihari, Korha, Kadwa, Barari, Azamnagar, Balrampur, Barsoi, Amdabad held on 27/01/2021 Wednesday.</a>
                                        </li>
                                       <%-- <li style="margin-top: 0px;">Interview date for post bmo for Hasanganj, Dandkhora, Sameli, Mansahi, Falka, Kursela held on 25/01/2021 at 9am to 5 pm.
                                                    <br />
                                            <span>January, 25, 2021</span> &nbsp; <a href="javascript:" style="color: #e8a94d; font-size: 13px;">
                                                <img src="/RMJSY/images/NEW.gif" />
                                            </a>
                                            <br />
                                            <a class="calender-a" href="javascript:">Interview date for post bmo for Hasanganj, Dandkhora, Sameli, Mansahi, Falka, Kursela held on 25/01/2021 at 9am to 5 pm.</a>
                                        </li>
                                        <li style="margin-top: 0px;">Interview date for post bmo for Hasanganj, Dandkhora, Sameli, Mansahi, Falka, Kursela held on 25/01/2021 at 9am to 5 pm.
                                                    <br />
                                            <span>January, 25, 2021</span> &nbsp; <a href="javascript:" style="color: #e8a94d; font-size: 13px;">
                                                <img src="/RMJSY/images/NEW.gif" />
                                            </a>
                                            <br />
                                            <a class="calender-a" href="javascript:">Interview date for post bmo for Hasanganj, Dandkhora, Sameli, Mansahi, Falka, Kursela held on 25/01/2021 at 9am to 5 pm.</a>
                                        </li>--%>
                                       
                                     
                                     
                                    </ul>
                                </div>

                                <div class="latest-newsbtn">
                                    <a class="latest-newsbtn-a" href="javascript:" title="">Read More</a>

                                </div>

                            </div>

                        </div>
                        <!------js------>
                        <script src="news/jquery.newsTicker.js"></script>
                        <script>
                            $('a[href*=#]').clone(function () {
                                var href = $.attr(this, 'href');
                                if (href != "#") {
                                    $('html, body').animate({
                                        scrollTop: $(href).offset().top - 81
                                    }, 500, function () {
                                        window.location.hash = href;
                                    });
                                }
                                else {
                                    $('html, body').animate({
                                        scrollTop: 0
                                    }, 500, function () {
                                        window.location.hash = href;
                                    });
                                }
                                return false;
                            });

                            $(window).load(function () {
                                $('code.language-javascript').mCustomScrollbar();
                            });
                            var nt_title = $('#nt-title').newsTicker({
                                row_height: 40,
                                max_rows: 1,
                                duration: 3000,
                                pauseOnHover: 0
                            });
                            var nt_example1 = $('#nt-example1').newsTicker({
                                row_height: 80,
                                max_rows: 3,
                                duration: 4000,
                                prevButton: $('#nt-example1-prev'),
                                nextButton: $('#nt-example1-next')
                            });
                            var nt_example2 = $('#nt-example2').newsTicker({
                                row_height: 60,
                                max_rows: 1,
                                speed: 300,
                                duration: 6000,
                                prevButton: $('#nt-example2-prev'),
                                nextButton: $('#nt-example2-next'),
                                hasMoved: function () {
                                    $('#nt-example2-infos-container').fadeOut(200, function () {
                                        $('#nt-example2-infos .infos-hour').text($('#nt-example2 li:first span').text());
                                        $('#nt-example2-infos .infos-text').text($('#nt-example2 li:first').data('infos'));
                                        $(this).fadeIn(400);
                                    });
                                },
                                pause: function () {
                                    $('#nt-example2 li i').removeClass('fa-play').addClass('fa-pause');
                                },
                                unpause: function () {
                                    $('#nt-example2 li i').removeClass('fa-pause').addClass('fa-play');
                                }
                            });
                            $('#nt-example2-infos').hover(function () {
                                nt_example2.newsTicker('pause');
                            }, function () {
                                nt_example2.newsTicker('unpause');
                            });
                            var state = 'stopped';
                            var speed;
                            var add;
                            var nt_example3 = $('#nt-example3').newsTicker({
                                row_height: 80,
                                max_rows: 1,
                                duration: 0,
                                speed: 10,
                                autostart: 0,
                                pauseOnHover: 0,
                                hasMoved: function () {
                                    if (speed > 700) {
                                        $('#nt-example3').newsTicker("stop");
                                        console.log('stop')
                                        $('#nt-example3-button').text("RESULT: " + $('#nt-example3 li:first').text().toUpperCase());
                                        setTimeout(function () {
                                            $('#nt-example3-button').text("START");
                                            state = 'stopped';
                                        }, 2500);

                                    }
                                    else if (state == 'stopping') {
                                        add = add * 1.4;
                                        speed = speed + add;
                                        console.log(speed)
                                        $('#nt-example3').newsTicker('updateOption', "duration", speed + 25);
                                        $('#nt-example3').newsTicker('updateOption', "speed", speed);
                                    }
                                }
                            });

                            $('#nt-example3-button').click(function () {
                                if (state == 'stopped') {
                                    state = 'turning';
                                    speed = 1;
                                    add = 1;
                                    $('#nt-example3').newsTicker('updateOption', "duration", 0);
                                    $('#nt-example3').newsTicker('updateOption', "speed", speed);
                                    nt_example3.newsTicker('start');
                                    $(this).text("STOP");
                                }
                                else if (state == 'turning') {
                                    state = 'stopping';
                                    $(this).text("WAITING...");
                                }
                            });
                        </script>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <!-- Section: About SECOND END -->
    <!-- Section: Features  -->
    <section class="bg-silver-light">
        <div class="container">
            <div class="section-title">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <h2 class="line-height-1">What Can <span>We Do?</span></h2>
                        <p class="line-height-1-pe">
                            यह राष्ट्र्रीय मानव जीवन सेवा योजना(RMJSY) “जयशीला देवी मेमोरियल सेवा संस्थान” के द्वारा संचालित होगी।
                            <br>
                            यह जयशीला देवी मेमोरियल सेवा संस्थान की इकाई है।  
                        </p>
                    </div>
                </div>
            </div>
            <div class="section-content">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="bg-white-left">
                            <a class="media-left" href="#">
                                <img src="images/donate/money.png" class="img-responsive" /></a>
                            <div class="media-left-side">
                                <h4 class="media-left-side-h4">Emergency Response</h4>
                                <p class="media-left-side-p">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum consectetur sit ullam perspiciatis, deserunt.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="bg-white-left">
                            <a class="media-left" href="#">
                                <img src="images/donate/volunteer.png" class="img-responsive" /></a>
                            <div class="media-left-side">
                                <h4 class="media-left-side-h4">Health Services</h4>
                                <p class="media-left-side-p">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum consectetur sit ullam perspiciatis, deserunt.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="bg-white-left">
                            <a class="media-left" href="#">
                                <img src="images/donate/loan.png" class="img-responsive" /></a>
                            <div class="media-left-side">
                                <h4 class="media-left-side-h4">Family Health</h4>
                                <p class="media-left-side-p">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum consectetur sit ullam perspiciatis, deserunt.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="bg-white-left">
                            <a class="media-left" href="#">
                                <img src="images/donate/family-room.png" class="img-responsive" /></a>
                            <div class="media-left-side">
                                <h4 class="media-left-side-h4">Women's Health</h4>
                                <p class="media-left-side-p">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum consectetur sit ullam perspiciatis, deserunt.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="bg-white-left">
                            <a class="media-left" href="#">
                                <img src="images/donate/houses.png" class="img-responsive" /></a>
                            <div class="media-left-side">
                                <h4 class="media-left-side-h4">Gender Violence</h4>
                                <p class="media-left-side-p">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum consectetur sit ullam perspiciatis, deserunt.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="bg-white-left">
                            <a class="media-left" href="#">
                                <img src="images/donate/give-a-burger.png" class="img-responsive" /></a>
                            <div class="media-left-side">
                                <h4 class="media-left-side-h4" style="font-size: 17px;">Psychosocial Support</h4>
                                <p class="media-left-side-p">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum consectetur sit ullam perspiciatis, deserunt.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Section: Features end  -->

    <!-- Our Causes  -->
    <section>
        <div class="our-cause">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <h2 class="line-height-1">Our<span> Project</span></h2>
                        <p class="line-height-1-pe">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem autem<br>
                            voluptatem obcaecati!
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="causes">
                            <div class="thumb">
                                <img class="img-responsive" src="images/gallery/physica_suppor.jpg" alt="" />
                            </div>
                            <div class="progress-item">
                                <div class="progress">
                                    <div class="progress-bar" data-percent="84" style="width: 84%;"><span class="percent-two">84%</span></div>
                                </div>
                            </div>
                            <div class="causes-details">
                                <a href="javascript:">
                                    <h4 class="causes-details-h4">Psychosocial Support</h4>
                                </a>
                                <p class="font-15">Lorem ipsum dolor sit amet, consect adipi sicing elit. Praesent quos sit. sicing elit Praesent quos sit.</p>
                                <div class="btn-dark-select">
                                    <a class="btn-dark" href="#">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="causes">
                            <div class="thumb">
                                <img class="img-responsive" src="images/gallery/women-de.jpg" alt="" />
                            </div>
                            <div class="progress-item">
                                <div class="progress">
                                    <div class="progress-bar" data-percent="84" style="width: 84%;"><span class="percent-two">84%</span></div>
                                </div>
                            </div>
                            <div class="causes-details">
                                <a href="javascript:">
                                    <h4 class="causes-details-h4">Women Development</h4>
                                </a>
                                <p class="font-15">Lorem ipsum dolor sit amet, consect adipi sicing elit. Praesent quos sit. sicing elit Praesent quos sit.</p>
                                <div class="btn-dark-select">
                                    <a class="btn-dark" href="#">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="causes">
                            <div class="thumb">
                                <img class="img-responsive" src="images/gallery/Health_De.jpg" alt="" />
                            </div>
                            <div class="progress-item">
                                <div class="progress">
                                    <div class="progress-bar" data-percent="84" style="width: 84%;"><span class="percent-two">84%</span></div>
                                </div>
                            </div>
                            <div class="causes-details">
                                <a href="javascript:">
                                    <h4 class="causes-details-h4">Health Development</h4>
                                </a>
                                <p class="font-15">Lorem ipsum dolor sit amet, consect adipi sicing elit. Praesent quos sit. sicing elit Praesent quos sit.</p>
                                <div class="btn-dark-select">
                                    <a class="btn-dark" href="#">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Our Causes end-->

    <!-- Section: Running Project 1  -->

    <!-- Section: Running Project 1 end -->

    <!-- Section: Gallery -->
    <section>
        <div class="container">
            <div class="section-title text-center">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <h2 class="line-height-1">Our<span> Gallery</span></h2>
                        <p class="line-height-1-pe">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem autem<br>
                            voluptatem obcaecati!
                        </p>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="hom-glry-left-sec">
                            <div class="hom-img-glry-sec">
                                <div class="agileinfo-gallery-row">
                                    <div class="row">
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 w3gallery-grids">
                                            <a href="images/gallery/gallery-ab1.jpg" class="imghvr-hinge-right figure">
                                                <img src="images/gallery/gallery-ab1.jpg" alt="" />
                                                <div class="agile-figcaption">
                                                    <h4>Welcome To Rashtriya Manav Jiwan Seva Yojna</h4>
                                                </div>
                                            </a>
                                        </div>

                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 w3gallery-grids">
                                            <a href="images/gallery/gallery-ab2.jpg" class="imghvr-hinge-right figure">
                                                <img src="images/gallery/gallery-ab2.jpg" alt="" />
                                                <div class="agile-figcaption">
                                                    <h4>Welcome To Rashtriya Manav Jiwan Seva Yojna</h4>
                                                </div>
                                            </a>
                                        </div>

                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 w3gallery-grids">
                                            <a href="images/gallery/gallery-ab3.jpg" class="imghvr-hinge-right figure">
                                                <img src="images/gallery/gallery-ab3.jpg" alt="" />
                                                <div class="agile-figcaption">
                                                    <h4>Welcome To Rashtriya Manav Jiwan Seva Yojna</h4>
                                                </div>
                                            </a>
                                        </div>

                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 w3gallery-grids">
                                            <a href="images/gallery/gallery-ab4.jpg" class="imghvr-hinge-right figure">
                                                <img src="images/gallery/gallery-ab4.jpg" alt="" />
                                                <div class="agile-figcaption">
                                                    <h4>Welcome To Rashtriya Manav Jiwan Seva Yojna</h4>
                                                </div>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="gallerymargin-sec">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 w3gallery-grids">
                                                <a href="images/gallery/GIRL-ED.jpg" class="imghvr-hinge-right figure">
                                                    <img src="images/gallery/GIRL-ED.jpg" alt="" />
                                                    <div class="agile-figcaption">
                                                        <h4>Welcome To Rashtriya Manav Jiwan Seva Yojna</h4>
                                                    </div>
                                                </a>
                                            </div>

                                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 w3gallery-grids">
                                                <a href="images/gallery/gallery-a2.jpg" class="imghvr-hinge-right figure">
                                                    <img src="images/gallery/gallery-a2.jpg" alt="" />
                                                    <div class="agile-figcaption">
                                                        <h4>Welcome To Rashtriya Manav Jiwan Seva Yojna</h4>
                                                    </div>
                                                </a>
                                            </div>

                                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 w3gallery-grids">
                                                <a href="images/gallery/gallery-ab5.jpg" class="imghvr-hinge-right figure">
                                                    <img src="images/gallery/gallery-ab5.jpg" alt="" />
                                                    <div class="agile-figcaption">

                                                        <h4>Welcome To Rashtriya Manav Jiwan Seva Yojna</h4>
                                                    </div>
                                                </a>
                                            </div>

                                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 w3gallery-grids">
                                                <a href="images/gallery/gallery-a8.jpg" class="imghvr-hinge-right figure">
                                                    <img src="images/gallery/gallery-a8.jpg" alt="" />
                                                    <div class="agile-figcaption">

                                                        <h4>Welcome To Rashtriya Manav Jiwan Seva Yojna</h4>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="clearfix"></div>
                                    <script src="gallery/simple-lightbox.min.js"></script>
                                    <script>
                                        $(function () {
                                            var gallery = $('.agileinfo-gallery-row a').simpleLightbox({ navText: ['&lsaquo;', '&rsaquo;'] });
                                        });
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- ..............gallery............... -->

    <script src="News/jquery.newsTicker.js"></script>
    <script>
        $('a[href*=#]').clone(function () {
            var href = $.attr(this, 'href');
            if (href != "#") {
                $('html, body').animate({
                    scrollTop: $(href).offset().top - 81
                }, 500, function () {
                    window.location.hash = href;
                });
            }
            else {
                $('html, body').animate({
                    scrollTop: 0
                }, 500, function () {
                    window.location.hash = href;
                });
            }
            return false;
        });

        $(window).load(function () {
            $('code.language-javascript').mCustomScrollbar();
        });
        var nt_title = $('#nt-title').newsTicker({
            row_height: 40,
            max_rows: 1,
            duration: 3000,
            pauseOnHover: 0
        });
        var nt_example1 = $('#nt-example1').newsTicker({
            row_height: 80,
            max_rows: 3,
            duration: 4000,
            prevButton: $('#nt-example1-prev'),
            nextButton: $('#nt-example1-next')
        });
        var nt_example2 = $('#nt-example2').newsTicker({
            row_height: 60,
            max_rows: 1,
            speed: 300,
            duration: 6000,
            prevButton: $('#nt-example2-prev'),
            nextButton: $('#nt-example2-next'),
            hasMoved: function () {
                $('#nt-example2-infos-container').fadeOut(200, function () {
                    $('#nt-example2-infos .infos-hour').text($('#nt-example2 li:first span').text());
                    $('#nt-example2-infos .infos-text').text($('#nt-example2 li:first').data('infos'));
                    $(this).fadeIn(400);
                });
            },
            pause: function () {
                $('#nt-example2 li i').removeClass('fa-play').addClass('fa-pause');
            },
            unpause: function () {
                $('#nt-example2 li i').removeClass('fa-pause').addClass('fa-play');
            }
        });
        $('#nt-example2-infos').hover(function () {
            nt_example2.newsTicker('pause');
        }, function () {
            nt_example2.newsTicker('unpause');
        });
        var state = 'stopped';
        var speed;
        var add;
        var nt_example3 = $('#nt-example3').newsTicker({
            row_height: 80,
            max_rows: 1,
            duration: 0,
            speed: 10,
            autostart: 0,
            pauseOnHover: 0,
            hasMoved: function () {
                if (speed > 700) {
                    $('#nt-example3').newsTicker("stop");
                    console.log('stop')
                    $('#nt-example3-button').text("RESULT: " + $('#nt-example3 li:first').text().toUpperCase());
                    setTimeout(function () {
                        $('#nt-example3-button').text("START");
                        state = 'stopped';
                    }, 2500);

                }
                else if (state == 'stopping') {
                    add = add * 1.4;
                    speed = speed + add;
                    console.log(speed)
                    $('#nt-example3').newsTicker('updateOption', "duration", speed + 25);
                    $('#nt-example3').newsTicker('updateOption', "speed", speed);
                }
            }
        });

        $('#nt-example3-button').click(function () {
            if (state == 'stopped') {
                state = 'turning';
                speed = 1;
                add = 1;
                $('#nt-example3').newsTicker('updateOption', "duration", 0);
                $('#nt-example3').newsTicker('updateOption', "speed", speed);
                nt_example3.newsTicker('start');
                $(this).text("STOP");
            }
            else if (state == 'turning') {
                state = 'stopping';
                $(this).text("WAITING...");
            }
        });
    </script>
</asp:Content>
