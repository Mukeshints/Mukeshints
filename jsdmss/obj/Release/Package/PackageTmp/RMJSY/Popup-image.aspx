<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Popup-image.aspx.cs" Inherits="jsdmss.RMJSY.Popup_image" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Popup</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.js"></script>
    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/jquery.js"></script>

    <style type="text/css">
        body, #form1 {
            width: 100%;
            margin: 0px;
            padding: 0px;
            height: auto;
            background: transparent;
            top: 40px;
        }

        .wrp {
            margin: 0px;
            padding: 0px;
            height: auto;
            width: 100%;
            background: rgba(211, 64, 69, 0.48);
            z-index: 99;
        }

        .fancybox-opened {
            z-index: 8028;
            width: 755px !important;
            margin: 0px auto !important;
        }

        .main {
            margin: 0px auto;
            padding: 0px;
            height: auto;
            width: 600px;
            font-family: Sans-Serif;
            text-align: center;
        }

            .main h2 {
                font-size: 20px;
                line-height: 10px;
                color: Yellow;
            }

        .sp_style {
            text-shadow: 1px 1px #000;
            color: red;
            font-size: 12px;
            font-weight: normal;
            padding-left: 20px;
        }

        .fancybox-skin {
            background: rgba(11, 70, 150, 0.8) !important;
            height: auto !important;
            width: 85% !important;
            margin: 0px auto !important;
        }

        .main-pop {
            width: 100%;
            height: auto;
            margin: 0px auto 0px auto;
            border: 2px solid #C0C0C0;
            -moz-border-radius: 10px;
            -webkit-border-radius: 10px;
            border-radius: 10px;
            behavior: url(border-radius.htc);
            z-index: inherit;
            zoom: 1; /* For IE6 */
            text-align: center;
            border: none;
        }

            .main-pop img {
                padding: 0px 0px 0px 0px;
                height: 650px;
                width: 100%;
            }

        .imgstyle {
            -moz-border-radius: 10px;
            -webkit-border-radius: 10px;
            border-radius: 10px;
            behavior: url(border-radius.htc);
        }

        .btnpop-wrp {
            width: 100%;
            height: auto;
            float: left;
            margin: 10px 0px 10px 0px;
            text-align: center;
        }

        .btnpop {
            margin: 0px auto;
            position: relative;
            padding: 13px 25px;
            color: #fff;
            text-align: center;
            border-radius: 30px;
            text-transform: uppercase;
            transform: scale(1.1,1.1);
            transition: all 0.3s ease-out 0s;
            text-decoration: none;
            font-size: 15px;
        }

            .btnpop:hover {
                transform: scale(1,1);
                color: #fff;
            }

            .btnpop i {
                margin-right: 15px;
                color: #fff;
            }

            .btnpop:before {
                content: "";
                position: absolute;
                bottom: -8px;
                left: 0px;
                width: 100%;
                height: 10px;
                filter: blur(20px);
                border-radius: 30px;
                display: inline-block;
                z-index: -1;
                transition: all 0.3s ease-out 0s;
            }

            .btnpop:hover:before {
                bottom: 0;
                filter: blur(10px);
            }

            .btnpop.orange {
                background: linear-gradient(to left, #fe8c00, #f83600);
            }

                .btnpop.orange:before {
                    background: linear-gradient(to right,#fe8c00,#f83600);
                }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrp">
            <div class="main-pop">
                <img src="../images/BMO_notifaction.jpeg" style="border-radius: 10px; margin: 0px auto;" class="img-responsive" />
                <%--<div class="btnpop-wrp">
                    <a href="OnlineRegistration.aspx" target="_blank" class="btnpop btn-lg orange">Apply Now</a>
                </div>--%>
            </div>
        </div>
    </form>
</body>
</html>
