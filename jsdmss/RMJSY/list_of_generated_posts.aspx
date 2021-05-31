<%@ Page Title="" Language="C#" MasterPageFile="~/RMJSY/RMJSY_MASTE.Master" AutoEventWireup="true" CodeBehind="list_of_generated_posts.aspx.cs" Inherits="jsdmss.RMJSY.list_of_generated_posts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    List of Generated Posts
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .menubar nav > ul > li > a.listofpost {
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
        table {
            width:100%;
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
            font-size: 20px;
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
                                <h2 class="aboutus-pagetext-h2">List of Generated Posts</h2>
                                <ul class="aboutus-pagetext-ul">
                                    <li><a href="Default_RMJSY.aspx" title="">Home /</a></li>
                                    <li><a href="javascript:" title="">List of Generated Posts</a></li>
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
                            <h2 class="product-page-head-h2">Our  <span style="color: #ff0000;">List of Generated Posts</span> </h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
                        <p class="yojna_p" style="text-align:center">राष्ट्रीय मानव जीवन सेवा योजना (RMJSY)</p>
                        <p class="yojna_p" style="text-align:center">सृजित पदों की सूची</p>
                        <div class="yojna-tablesec">
                            <div class="table-responsive">
                                <table>
                                    <tr>
                                        <th>क्रम</th>
                                        <th>पद का नाम</th>
                                        <th>ग्रेड</th>
                                        <th>विभाग का नाम</th>
                                        <th>पद स्थिति</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>सहायक महाप्रबंधक</td>
                                        <td>A-1</td>
                                        <td>कार्मिक विभाग</td>
                                        <td>प्रधान कार्यालय</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>राज्य महाप्रबंधक</td>
                                        <td>A-2</td>
                                        <td>कार्मिक विभाग</td>
                                        <td>प्रधान कार्यालय</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>मुख्य सुरक्षा अधीक्षक</td>
                                        <td>A-2</td>
                                        <td>सुरक्षा विभाग</td>
                                        <td>प्रधान कार्यालय</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>जिला प्रबंधक पदाधिकारी</td>
                                        <td>A-3</td>
                                        <td>कार्मिक विभाग</td>
                                        <td>प्रत्येक जिला</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>मुख्य पर्यवेक्षक</td>
                                        <td>A-3</td>
                                        <td>कार्मिक विभाग</td>
                                        <td>प्रधान कार्यालय</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>पर्यवेक्षक</td>
                                        <td>A-4</td>
                                        <td>कार्मिक विभाग</td>
                                        <td>प्रधान कार्यालय</td>
                                    </tr>

                                    
                                    <tr>
                                        <td>7</td>
                                        <td>आई0टी0 प्रभारी-सह-लेखापाल</td>
                                        <td>A-4</td>
                                        <td>कार्मिक विभाग</td>
                                        <td>प्रधान कार्यालय</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>प्रखण्ड प्रबंधक पदाधिकारी</td>
                                        <td>B-1</td>
                                        <td>कार्मिक विभाग</td>
                                        <td>प्रत्येक प्रखण्ड</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>प्रत्येक प्रखण्ड</td>
                                        <td>B-1</td>
                                        <td>प्रशासनिक विभाग</td>
                                        <td>प्रधान कार्यालय</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>मीडिया प्रभारी</td>
                                        <td>B-2</td>
                                        <td>प्रशासनिक विभाग</td>
                                        <td>प्रधान कार्यालय</td>
                                    </tr>
                                    
                                    <tr>
                                        <td>11</td>
                                        <td>डाटा आपरेटर</td>
                                        <td>C-1</td>
                                        <td>कार्मिक विभाग</td>
                                        <td>प्रधान कार्यालय</td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>प्रधान लिपिक</td>
                                        <td>C-1</td>
                                        <td>कार्मिक विभाग</td>
                                        <td>प्रधान कार्यालय</td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>सशस्त्र सुरक्षा बल</td>
                                        <td>C-1</td>
                                        <td>सुरक्षा विभाग</td>
                                        <td>प्रधान कार्यालय</td>
                                    </tr>
                                    <tr>
                                        <td>14</td>
                                        <td>पंचायत कोर्डिनेटर</td>
                                        <td>C-2</td>
                                        <td>कार्मिक विभाग</td>
                                        <td>प्रत्येक पंचायत</td>
                                    </tr>
                                    <tr>
                                        <td>15</td>
                                        <td>सहायक लिपिक</td>
                                        <td>C-2</td>
                                        <td>कार्मिक विभाग</td>
                                        <td>प्रधान कार्यालय</td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>वाहन चालक</td>
                                        <td>C-2</td>
                                        <td>कार्मिक विभाग</td>
                                        <td>प्रधान कार्यालय</td>
                                    </tr>
                                    <tr>
                                        <td>17</td>
                                        <td>चतुर्थवर्गीय कर्मचारी</td>
                                        <td>D-1</td>
                                        <td>कार्मिक विभाग</td>
                                        <td>प्रधान कार्यालय</td>
                                    </tr>
                                    <tr>
                                        <td>18</td>
                                        <td>रसोईया</td>
                                        <td>D-1</td>
                                        <td>कार्मिक विभाग</td>
                                        <td>प्रधान कार्यालय</td>
                                    </tr>
                                    <tr>
                                        <td>19</td>
                                        <td>सफाई कर्मचारी</td>
                                        <td>D-2</td>
                                        <td>कार्मिक विभाग</td>
                                        <td>प्रधान कार्यालय</td>
                                    </tr>
                                    <tr>
                                        <td>20</td>
                                        <td>सुरक्षा गार्ड</td>
                                        <td>D-2</td>
                                        <td>कार्मिक विभाग</td>
                                        <td>प्रधान कार्यालय</td>
                                    </tr>
                                    <tr>
                                        <td>21</td>
                                        <td>माली</td>
                                        <td>D-2</td>
                                        <td>कार्मिक विभाग</td>
                                        <td>प्रधान कार्यालय</td>
                                    </tr>
                                    <tr>
                                        <td>22</td>
                                        <td>धोबी</td>
                                        <td>D-2</td>
                                        <td>कार्मिक विभाग</td>
                                        <td>प्रधान कार्यालय</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
