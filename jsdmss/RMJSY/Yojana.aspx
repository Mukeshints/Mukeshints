<%@ Page Title="" Language="C#" MasterPageFile="~/RMJSY/RMJSY_MASTE.Master" AutoEventWireup="true" CodeBehind="Yojana.aspx.cs" Inherits="jsdmss.RMJSY.Yojana" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Our Yojana
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .menubar nav > ul > li > a.yojana {
            background: #0597bc;
            color: white;
        }

        .slider-sec {
            display: none;
        }

        .yojna-tablesec {
            height: auto;
            width: 100%;
            margin: 0px 0px 0px 0px;
            padding: 0px 0px 0px 0px;
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
            font-size: 15px;
        }

        .yojna_p {
            height: auto;
            width: 100%;
            padding: 0px 0px 15px 0px;
            margin: 0px 0px 0px 0px;
            float: left;
            font-size: 15px;
            font-weight: 500;
            line-height: 25px;
            color: #010101;
            text-align: justify;
            font-weight: 700;
        }

        .about_p {
            height: auto;
            width: 100%;
            padding: 16px 0px 15px 0px;
            margin: 0px 0px 0px 0px;
            float: left;
            font-size: 15px;
            font-weight: 500;
            line-height: 25px;
            color: #666666;
            text-align: justify;
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
                                <h2 class="aboutus-pagetext-h2">Our Yojana</h2>
                                <ul class="aboutus-pagetext-ul">
                                    <li><a href="Default_RMJSY.aspx" title="">Home /</a></li>
                                    <li><a href="javascript:" title="">Our Yojana</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="about-page">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-page-head">
                            <h2 class="product-page-head-h2">Our  <span style="color: #ff0000;">Yojana</span> </h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
                        <p class="yojna_p">A.  चिकित्सा सेवा अनुदान योजना</p>
                        <div class="yojna-tablesec">
                            <div class="table-responsive">
                                <table>
                                    <tr>
                                        <th>क्रम</th>
                                        <th>रोगों का नाम</th>
                                        <th>चिकित्सा हेतु अनुदान (रूपया में)</th>
                                        <th>मृत्यु पर पारिवारिक सुरक्षा अनुदान (रूपया में)</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>कोरोना एवं अन्य महामारी संक्रमण</td>
                                        <td>10,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>कैंसर होने पर</td>
                                        <td>30,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>एच आई वी (एड्स)</td>
                                        <td>10,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>मस्तिष्क रोग</td>
                                        <td>10,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>लकवा (पैरेलाईसिस)</td>
                                        <td>15,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>किडनी रोग या किडनी प्रत्यारोपन</td>
                                        <td>50,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>

                                    <tr>
                                        <td>7</td>
                                        <td>सामान्य आपरेशन<br />
                                            1. शल्य प्रसव<br />
                                            2. हाइड्रोसील आपरेशन<br />
                                            3. हार्निया का आपरेशन<br />
                                            4. गोल ब्लाडर आपरेशन<br />
                                            5. सिस्ट का आपरेशन<br />
                                            6. गर्भाशय का आपरेशन<br />
                                            7. परिवार नियोजन का आपरेशन महिला/पुरूष


                                        </td>
                                        <td>10,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>पोलियो ग्रस्त होने पर</td>
                                        <td>20,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>हृदय रोग सह हृदय सर्जरी होने पर</td>
                                        <td>30,000 तक</td>
                                        <td>20,00 तक</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>आँख का आपरेशन में</td>
                                        <td>10,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>चिकित्सा के लिए प्रदेश यात्रा भत्ता</td>
                                        <td>10,000 तक</td>
                                        <td>0</td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>चिकित्सा हेतु विदेश यात्रा भत्ता</td>
                                        <td>30,000 तक</td>
                                        <td>0</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <p class="about_p"><b>नोट :-</b> बोर्ड का निर्णय के बाद मानक, निर्धारित अनुदान के बीच का सहायता अनुदान देय होगी। मानक निर्धारित सहायता अनुदान की सीमा समय-समय पर बोर्ड का निर्णय के बाद बढाई/घटायी जा सकती है।  बोर्ड का निर्णय के विरूद्ध किसी प्रकार का दावा स्वीकार नहीं किए जायेगें।</p>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
                        <p class="yojna_p">B.  सुरक्षा/दुर्घटना सेवा अनुदान योजना</p>
                        <div class="yojna-tablesec">
                            <div class="table-responsive">
                                <table>
                                    <tr>
                                        <th>क्रम</th>
                                        <th>दुर्घटना का नाम</th>
                                        <th>चिकित्सा हेतु अनुदान (रूपया में)</th>
                                        <th>मृत्यु पर पारिवारिक सुरक्षा अनुदान (रूपया में)</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>सड़क दुर्घटना</td>
                                        <td>5,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>रेल से दुर्घटना</td>
                                        <td>10,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>आग से दुर्घटना</td>
                                        <td>5,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>पानी या बाढ दुर्घटना</td>
                                        <td>5,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>अपराधिक दुर्घटना</td>
                                        <td>10,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>आतंकवादी दुर्घटना पर</td>
                                        <td>10,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>

                                    <tr>
                                        <td>7</td>
                                        <td>वज्रपात दुर्घटना पर</td>
                                        <td>5,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>शीत लहर से दुर्घटना होने पर</td>
                                        <td>5,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>लू लगने पर की दुर्घटना पर</td>
                                        <td>5,000 तक</td>
                                        <td>20,00 तक</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>भूकंप की दुर्घटना पर</td>
                                        <td>5,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>विद्युत स्पर्शघात की दुर्घटना पर</td>
                                        <td>5,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>मकान या पेड़ या ऊँचे जगह से गिरने की दुर्घटना होने पर</td>
                                        <td>5,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>हिंसक जानवर द्वारा हमले की घटना होने पर</td>
                                        <td>5,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>14</td>
                                        <td>बच्चों के खेलकूद के दौरान दुर्घटना ग्रस्त होने पर</td>
                                        <td>5,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>15</td>
                                        <td>हवाई जहाज की घटना होने पर</td>
                                        <td>10,000 तक</td>
                                        <td>25,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>सर्प-आघात की घटना पर</td>
                                        <td>5,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>17</td>
                                        <td>पानी की जहाज या नाव की यात्रा में दुर्घटना पर</td>
                                        <td>10,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>18</td>
                                        <td>किसी कार्य स्थल पर कार्य के क्रम में घटना होने पर</td>
                                        <td>10,000 तक</td>
                                        <td>20,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>19</td>
                                        <td>सामान्य दुर्घटना :- खाना बनाते वक्त, घर की साफ-सफाई, स्नानागार, नाखुन/बाल/दाढी बनाते वक्त एवं अन्य</td>
                                        <td>10,000 तक</td>
                                        <td>0</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <p class="about_p"><b>नोट :-</b> बोर्ड का निर्णय के बाद मानक, निर्धारित अनुदान के बीच का सहायता अनुदान देय होगी। मानक निर्धारित सहायता अनुदान की सीमा समय-समय पर बोर्ड का निर्णय के बाद बढाई/घटायी जा सकती है।  बोर्ड का निर्णय के विरूद्ध किसी प्रकार का दावा स्वीकार नहीं किए जायेगें।</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
                        <p class="yojna_p">C.  पुनर्वास सेवा अनुदान योजना</p>
                        <div class="yojna-tablesec">
                            <div class="table-responsive">
                                <table>
                                    <tr>
                                        <th>क्रम</th>
                                        <th>पुनर्वास योजना का स्वरूप</th>
                                        <th>गृहस्थिति का विकलांगता की स्थिति</th>
                                        <th>अनुदान की राशि (रूपया में)</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>भूकंप में गृह ध्वस्त होने पर</td>
                                        <td>पूर्ण ध्वस्त</td>
                                        <td>5,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>आग से गृह जलने पर</td>
                                        <td>पूर्ण ध्वस्त होने पर</td>
                                        <td>5,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>बाढ में घर/गृह ध्वस्त होने पर</td>
                                        <td>पूर्ण ध्वस्त होने पर</td>
                                        <td>5,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>वज्रपात/पेड़ गिरने के कारण घर ध्वस्त होने पर</td>
                                        <td>घर ध्वस्त होने पर</td>
                                        <td>5,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>सड़क दुर्घटना होने पर विकलांगता पर</td>
                                        <td>स्थायी विकलांगता पर</td>
                                        <td>10,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>लकवा से विकलांगता होने पर</td>
                                        <td>स्थायी विकलांगता पर</td>
                                        <td>10,000 तक</td>
                                    </tr>

                                    <tr>
                                        <td>7</td>
                                        <td>आतंकवादी घटना में विकलांगता पर</td>
                                        <td>स्थायी विकलांगता पर</td>
                                        <td>10,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>मकान/पेड़/ऊँचे स्थान से गिरने से घटना में विकलांगता होने पर</td>
                                        <td>स्थायी विकलांगता पर</td>
                                        <td>10,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>मानसिक विकलांगता होने पर</td>
                                        <td>स्थायी विकलांगता पर</td>
                                        <td>10,00 तक</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>पोलियो से विकलांगता पर</td>
                                        <td>स्थायी विकलांगता पर</td>
                                        <td>10,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>भूकंप की घटना से विकलांगता होने पर</td>
                                        <td>स्थायी विकलांगता पर</td>
                                        <td>10,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>आग दुर्घटना  से विकलांगता पर</td>
                                        <td>स्थायी विकलांगता पर</td>
                                        <td>10,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>दृष्टि विकलांगता होने पर</td>
                                        <td>स्थायी विकलांगता पर</td>
                                        <td>10,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>14</td>
                                        <td>हिंसक जानवरों के हमला में विकलांगता पर</td>
                                        <td>स्थायी विकलांगता पर</td>
                                        <td>10,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>15</td>
                                        <td>विद्युत स्पर्शघात से विकलांगता होने पर</td>
                                        <td>स्थायी विकलांगता पर</td>
                                        <td>10,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>विद्युत आघात से गृह ध्वस्त होने पर</td>
                                        <td>पूर्ण ध्वस्त होने पर</td>
                                        <td>10,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>17</td>
                                        <td>किसी भी दुर्घटना में विधवा होने पर</td>
                                        <td>विधवा होने पर</td>
                                        <td>15,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>18</td>
                                        <td>किसी कार्य स्थल पर कार्य के क्रम में घटना पर विकलांगता होने पर</td>
                                        <td>स्थायी विकलांगता पर</td>
                                        <td>10,000 तक</td>
                                    </tr>

                                </table>
                            </div>
                        </div>
                        <p class="about_p"><b>नोट :-</b> बोर्ड का निर्णय के बाद मानक, निर्धारित अनुदान के बीच का सहायता अनुदान देय होगी। मानक निर्धारित सहायता अनुदान की सीमा समय-समय पर बोर्ड का निर्णय के बाद बढाई/घटायी जा सकती है।  बोर्ड का निर्णय के विरूद्ध किसी प्रकार का दावा स्वीकार नहीं किए जायेगें।</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
                        <p class="yojna_p">D. स्वरोजगार अनुदान सेवा योजना</p>
                        <div class="yojna-tablesec">
                            <div class="table-responsive">
                                <table>
                                    <tr>
                                        <th>क्रम</th>
                                        <th>योजना का स्वरूप</th>
                                        <th>भौतिक स्थिति</th>
                                        <th>अनुदान की राशि (रूपया में)</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>सड़क दुर्घटना में विकलांगता </td>
                                        <td>स्थायी विकलांगता</td>
                                        <td>15,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>रेल दुर्घटना में विकलांगता</td>
                                        <td>स्थायी विकलांगता</td>
                                        <td>15,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>आग दुर्घटना में विकलांगता</td>
                                        <td>स्थायी विकलांगता</td>
                                        <td>15,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>अपराधिक घटना में विकलांगता</td>
                                        <td>स्थायी विकलांगता</td>
                                        <td>15,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>पोलियो से विकलांगता</td>
                                        <td>स्थायी विकलांगता</td>
                                        <td>15,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>लकवा (पैरालाइसिस)</td>
                                        <td>स्थायी विकलांगता</td>
                                        <td>15,000 तक</td>
                                    </tr>

                                    <tr>
                                        <td>7</td>
                                        <td>मानसिक रूप से विकलांगता</td>
                                        <td>स्थायी रूप से (आश्रित को देय)</td>
                                        <td>15,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>मकान/पेड़/ऊँचे स्थान से गिरने की दुर्घटना में विकलांगता होने पर</td>
                                        <td>स्थायी विकलांगता</td>
                                        <td>15,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>हिंसक जानवरों के हमला से विकलांगता होने पर </td>
                                        <td>स्थायी विकलांगता</td>
                                        <td>15,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>विद्युत स्पर्शाघात होने से विकलांगता</td>
                                        <td>स्थायी विकलांगता</td>
                                        <td>15,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>भूकंप की घटना से विकलांगता होने पर</td>
                                        <td>स्थायी विकलांगता</td>
                                        <td>15,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>दृष्टि विकलांगता होने पर</td>
                                        <td>स्थायी विकलांगता</td>
                                        <td>15,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>किसी कार्य स्थल में कार्य करने के क्रम मंं घटना होने पर विकलांगता की स्थिति में</td>
                                        <td>स्थायी विकलांगता</td>
                                        <td>15,000 तक</td>
                                    </tr>


                                </table>
                            </div>
                        </div>
                        <p class="about_p"><b>नोट :-</b> बोर्ड का निर्णय के बाद मानक, निर्धारित अनुदान के बीच का सहायता अनुदान देय होगी। मानक निर्धारित सहायता अनुदान की सीमा समय-समय पर बोर्ड का निर्णय के बाद बढाई/घटायी जा सकती है।  बोर्ड का निर्णय के विरूद्ध किसी प्रकार का दावा स्वीकार नहीं किए जायेगें।</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
                        <p class="yojna_p">E. कन्या शहनाई उत्सव एवं विधवा पुर्नविवाह, विकलांग कन्या विवाह अनुदान सेवा योजना</p>
                        <div class="yojna-tablesec">
                            <div class="table-responsive">
                                <table>
                                    <tr>
                                        <th>क्रम</th>
                                        <th>योजना का स्वरूप</th>
                                        <th>भौतिक स्थिति</th>
                                        <th>अनुदान की राशि (रूपया में)</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>कन्या शहनाई </td>
                                        <td>18 वर्ष उपरान्त विवाह के समय (अपने जीवनकाल में 18 वर्ष की उम्र तक में जो कन्या का कम से कम कमओग वर्षों तक नवीकरण कराया हो।)</td>
                                        <td>10,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>विधवा पुर्नविवाह</td>
                                        <td>पति की मृत्यु के उपरान्त</td>
                                        <td>10,000 तक</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>विकलांग कन्या विवाह</td>
                                        <td>स्थायी विकलांगता(अपने जीवनकाल में 18 वर्ष की उम्र तक में जो कन्या का कम से कम कम 7वर्षों तक नवीकरण कराया हो।)</td>
                                        <td>15,000 तक</td>
                                    </tr>

                                </table>
                            </div>
                        </div>
                        <p class="about_p"><b>नोट :-</b> बोर्ड का निर्णय के बाद मानक, निर्धारित अनुदान के बीच का सहायता अनुदान देय होगी। मानक निर्धारित सहायता अनुदान की सीमा समय-समय पर बोर्ड का निर्णय के बाद बढाई/घटायी जा सकती है।  बोर्ड का निर्णय के विरूद्ध किसी प्रकार का दावा स्वीकार नहीं किए जायेगें।</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
                        <p class="yojna_p">F. जीवन मंगलम सेवा अनुदान सेवा योजना</p>
                        <div class="yojna-tablesec">
                            <div class="table-responsive">
                                <table>
                                    <tr>
                                        <th>क्रम</th>
                                        <th>योजना का स्वरूप</th>
                                        <th>भौतिक स्थिति</th>
                                        <th>अनुदान की राशि (रूपया में)</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>जीवन मंगलम उपहार </td>
                                        <td>अपने जीवनकाल में 65 वर्ष की उम्र तक में जो व्यक्ति लगातार 20 वर्षों तक नवीकरण कराया हो।</td>
                                        <td>नवीकरण शर्त से मुक्त किया जा सकता है।</td>
                                    </tr>


                                </table>
                            </div>
                        </div>
                        <p class="about_p"><b>नोट :-</b> बोर्ड के निर्णय के बाद लागू किया जा सकता है।  निर्णय के विरूद्ध किसी प्रकार का दावा स्वीकार नहीं किये जाएगें।</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
                        <p class="yojna_p">G. अंत्येष्टि सेवा अनुदान योजना</p>
                        <div class="yojna-tablesec">
                            <div class="table-responsive">
                                <table>
                                    <tr>
                                        <th>क्रम</th>
                                        <th>योजना का स्वरूप</th>
                                        <th>भौतिक स्थिति</th>
                                        <th>अनुदान की राशि (रूपया में)</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>अंत्येष्टि सहायता</td>
                                        <td>सामान्य मृत्यु पर (अपने जीवनकाल में 65 वर्ष की उम्र  तक में जो व्यक्ति लगातार 20 वर्षों तक नवीकरण कराया हो।)</td>
                                        <td>5,000 तक</td>
                                    </tr>


                                </table>
                            </div>
                        </div>
                        <p class="about_p"><b>नोट :-</b> बोर्ड का निर्णय के बाद मानक, निर्धारित अनुदान के बीच का सहायता अनुदान देय होगी। मानक निर्धारित सहायता अनुदान की सीमा समय-समय पर बोर्ड का निर्णय के बाद बढाई/घटायी जा सकती है।  बोर्ड का निर्णय के विरूद्ध किसी प्रकार का दावा स्वीकार नहीं किए जायेगें।</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
