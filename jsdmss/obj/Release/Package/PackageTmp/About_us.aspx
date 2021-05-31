<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="About_us.aspx.cs" Inherits="jsdmss.About_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    About Us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .menubar nav > ul > li > a.about {
            background: #FF0000;
            color: white;
        }

        .slider-sec {
            display: none;
        }

        .aboutp {
            height: auto;
            width: 100%;
            padding: 0px 0px 15px 0px;
            margin: 0px 0px 0px 0px;
            float: left;
            font-size: 14px;
            font-weight: 500;
            line-height: 25px;
            color:#242121;
            text-align: justify;
        }

        .about_ul {
            width: 100%;
            height: auto;
            margin: 0px;
            padding: 0px;
            float: left;
        }

            .about_ul li {
                height: auto;
                width: 100%;
                padding: 3px 0px 8px 19px;
                margin: 0px 0px 0px 0px;
                float: left;
                font-size: 15px;
                font-weight: 500;
                line-height: 25px;
                color: #242121;
                text-align: justify;
                transition: background 0.3s ease-in-out, color 0.3s ease-in-out;
                list-style-type: none;
                position: relative;
            }

                .about_ul li:before {
                    font-family: FontAwesome;
                    content: "\f101 ";
                    font-size: 24px;
                    line-height: 27px;
                    color: #d81616;
                    font-weight: 400;
                    left: 0px;
                    top: 0px;
                    position: absolute;
                    -webkit-transition: .4s ease all;
                    transition: .4s ease all;
                }

        .about_sec {
            height: auto;
            width: 100%;
            padding: 45px 0px 0px 0px;
            margin: 0px 0px 0px 0px;
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
                                <h2 class="aboutus-pagetext-h2">About-Us</h2>
                                <ul class="aboutus-pagetext-ul">
                                    <li><a href="Default.aspx" title="">Home /</a></li>
                                    <li><a href="javascript:" title="">About-Us</a></li>
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
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-page-head">
                            <h2 class="product-page-head-h2">About<span style="color: #ff0000;"> Us</span> </h2>
                            <p class="aboutp">
                                 <img src="images/Jaisheela_Devi.jpeg" class="col-lg-3 col-md-3 col-sm-12 col-xs-12 img-responsive" style="float:right; height: 185px; width: 215px;"  />
                                संस्था का नाम :- जयशीला देवी मेमोरियल सेवा संस्थान स्थापना वर्ष :- 07/01/2019 Regd. No. S000248/2019-2020 संस्थापक :- प्रो चन्द्र मोहन मंडल (पति), कृष्ण कान्त मंडल (पुत्र), शेखर कुमार(पुत्र), कलानन्द मंडल (भाई) सुदूर ग्रामीण क्षेत्रा में दृष्टिपात करने पर यह स्पष्ट हो रहा है कि विगत काल से एक भी ऐसा संस्था दिखाई नहीं पड़ता है, जिसमें कि निरीह, अर्थहीन, असमर्थ लोगों के लिए चिकित्सा की कोई व्यवस्था दिख रही है।  इसी भावनाओं से स्वास्थ्य चिकित्सा, शिक्षा, टेक्नीकल शिक्षा एवं समाज कल्याण, गरीबी उन्मूलन, आत्मनिर्भरता का समुचित सुविधा उपलब्ध हो।   इसी संदर्भ में  “जयशीला देवी मेमोरियल सेवा संस्थान” का निर्माण कर इस क्षेत्र के लोगों का सहयोग एवम सेवा किया जाय।
                            </p>
                            <p class="aboutp" style="font-weight: 800;">उद्देश्य :</p>
                            <ul class="about_ul">
                                <li>शिक्षित बेरोजगार युवक-युवतियों को आत्म-निर्भर बनाने के लिए कम्प्युटर शिक्ष, हार्डवेयर, साफ्टवेयर, टाईपिंग इत्यादि का प्रशिक्षण केन्द्र का संचालन।</li>
                                <li>गरीब, अल्पसंख्यक/महिलाएं/अनाथ बच्चों के सामाजिक विकास के लिए हर संभव प्रयास करना।</li>
                                <li>शिक्षा एवं स्वास्थ्य के प्रचार-प्रसार के लिए विद्यालय, महाविद्यालय एवं पारा मेडिकल इन्स्टीट्युट और स्वास्थ्य की नि:शुल्क व्यवस्था करना।</li>
                                <li>सरकार के कल्याणकारी कार्यक्रमों में सहभागिता के लिए।</li>
                                <li>दहेज प्रथा, नशाखोरी, बाल विवाह आदि कुप्रथाओं को समाप्त करने के दिशा में प्रयास करना।</li>
                                <li>व्यवसायिक प्रशिक्षण, लघु उद्योग, कुटीर उद्योग, हस्तकला, सिलाई-कढाई  का प्रशिक्षण एवं समूह ॠण, माइक्रोफाईनेन्स बैंक की स्थापना की व्यवस्था करना।</li>
                                <li>पर्यावरण के लिए वृक्षारोपण एवं स्वच्छता के लिए शौचालय, सफाई, धुआं रहित चूल्हा आदि कार्यों का संचालन करना।</li>
                                <li>खेलकूद, सांस्कृतिक कार्यक्रम, राजनीतिक चेतना जागृति एवं राजनीतिक पार्टी,नुक्कड़ नाटक का संचालन करना।</li>
                                <li>आवश्यकता अनुसार गोष्ठी, सेमिनार, सम्मेलन, प्रदर्शनी आदि कार्यक्रमों का आयोजन करना।</li>
                                <li>असहाय, गरीब बच्चों एवं असहाय वृद्धजनों के लिए नि:शुल्क स्वास्थ्य सेवा की व्यवस्था करना।</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
