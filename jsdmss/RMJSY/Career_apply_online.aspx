<%@ Page Title="" Language="C#" MasterPageFile="~/RMJSY/RMJSY_MASTE.Master" AutoEventWireup="true" CodeBehind="Career_apply_online.aspx.cs" Inherits="jsdmss.RMJSY.Career_apply_online" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Career Apply form
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Css/Admission.css" rel="stylesheet" />
    <style>
        .menubar nav > ul > li > a.caree {
            background: #0597bc;
            color: white;
        }

        .slider-sec {
            display: none;
        }

        label {
            display: inline-block;
            max-width: 100%;
            margin-bottom: 5px;
            padding: 0px 0px 0px 8px;
            font-size: 15px!important;
            font-weight: 400;
            text-align: left;
        }

        .from_h1 {
            font-size: 34px;
            color: #0597bc;
            font-weight: 800;
            text-align: center;
        }

        .from_h3 {
            font-size: 22px;
            height: auto;
            text-align: center;
            margin: 0px;
            padding: 0px 0px 10px 0px;
            line-height: 28px;
        }

        .cont-msg-sec {
            margin: 6px 0px 0px 0px;
            padding: 77px 20px;
            width: 100%;
            height: auto;
            float: left;
            background: #f5f5f5;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.12);
            min-height: 346px;
        }

        .cont-msg-succ-ico-sec {
            margin: 0px;
            padding: 0px;
            width: 100%;
            height: auto;
            float: left;
            text-align: center;
        }

        .cont-msg-succ-ico {
            margin: 0px auto;
            padding: 0px;
            width: 110px;
            height: 110px;
            background: #019b31;
            border: 1px solid #019b31;
            border-radius: 50%;
            color: #fff;
            line-height: 100px;
            font-weight: normal;
            font-size: 66px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.12);
        }

        .cont-msg-succ-mes-contant {
            margin: 25px 0px 0px 0px;
            padding: 0px;
            width: 100%;
            height: auto;
            float: left;
            letter-spacing: 2px;
            font-size: 17px;
            line-height: 29px;
            font-weight: bold;
            color: #000;
            text-align: center;
        }

        .message_p {
            color: #f00;
            font-size: 15px;
            padding: 25px 0px 0px 0px;
        }

        @media only screen and (max-width:800px) {
            .registration-border {
                padding: 0px 0px 20px 0px;
            }

            .message_p {
                padding: 0px 0px 0px 10px !important;
            }
        }


        /*************calendar***********/
        .calender-icon {
            margin: 0px 0px 0px 0px;
            position: relative !important;
            background: none !important;
            color: #222;
        }

        .clndr-icon {
            font-size: 16px !important;
            color: #7d0c2c;
            margin: 3px 0px 0px 5px;
            position: absolute;
            top: 11px;
            right: 23px;
        }

        .ui-dialog .ui-dialog-content {
            position: relative;
            border: 0;
            padding: .5em 1em;
            background: none;
            overflow: auto;
            min-height: 450px!important;
        }

        .ui-datepicker select.ui-datepicker-month, .ui-datepicker select.ui-datepicker-year {
            width: 45%;
            color: black;
        }
    </style>
    <link href="Autocomplete/jquery-ui.css" rel="stylesheet" />
    <script src="Autocomplete/jquery-ui.js"></script>
    <script type="Javascript">
       <!--
    function isNumberKey(evt) {
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode != 46 && charCode > 31
          && (charCode < 48 || charCode > 57))
            return false;

        return true;
    }
    function onlyZeroandOne(evt) {
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode < 48 || charCode > 49)
            return false;

        return true;
    }
    //-->
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>

        <div class="registration-form">
            <div class="container">
                <div class="row">
                    <div id="notification">
                        <div id="pan" class="notificationpan">
                            <div style="float: left; width: 235px; height: auto;">
                                <asp:Label ID="lbl_message" runat="server" class="notif-txt"></asp:Label>
                            </div>
                            <asp:ImageButton ID="ImageButton1" ImageUrl="~/images/close.png" runat="server" OnClientClick="$(function () { $('.notificationpan').show().slideUp(1000);});"
                                class="closenotificationpan" Style="background: none" />
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12"></div>
                    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="min-height:350px; margin-top:35px; display: none">
                                <div class="panel panel-danger ">
                                    <div class="panel-heading">
                                        <h3 style="border: 1px solid #7d0c2c; padding: 15px; margin: 0px; box-sizing: border-box">Application Closed</h3>
                                    </div>
                                    <div class="panel-body">Thank you for your interest. Have a nice day.</div>
                                </div>
                            </div>
                        <div class="registration-border" >
                           
                            <asp:Panel ID="pnl_contact" runat="server">
                                <div class="row">

                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <h1 class="from_h1">Rastriya Manav Jiwan Seva Yojna (RMJSY)</h1>
                                        <h3 class="from_h3" style="font-weight: 600;">(A Unit of Jaisheela Devi Memorial seva Sansthan)</h3>
                                        <h3 class="from_h3">Head Office: Jhaua, Majgama, P.O- Sahja, Block- Pranpur, P.S- Paranpur, Dist- Katihar, Bihar-854107</h3>
                                    </div>
                                </div>

                                <asp:HiddenField ID="hd_applicant_id" runat="server" />

                                <h3 class="registration-heading-h3">Candidate Information</h3>
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="sponsor-boxsec2">
                                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                <p class="sponsor-boxsec-psec">Applied For:-</p>
                                            </div>
                                            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                <div class="sponsor-textbox">
                                                    <asp:RadioButton ID="radio_block" runat="server" GroupName="a" Text="BLOCK" AutoPostBack="True" OnCheckedChanged="radio_block_CheckedChanged" Font-Bold="True" />&nbsp;&nbsp;
                                                     <asp:RadioButton ID="radio_panchayat" runat="server" GroupName="a" Text="PANCHAYAT" AutoPostBack="True" OnCheckedChanged="radio_panchayat_CheckedChanged" Font-Bold="True" />&nbsp;&nbsp;
                                                     <asp:RadioButton ID="radio_headoffice" runat="server" GroupName="a" Text="HEAD OFFICE" Checked="true" AutoPostBack="True" OnCheckedChanged="radio_headoffice_CheckedChanged" Font-Bold="True" />
                                                    &nbsp;&nbsp;
                                                     <asp:RadioButton ID="radio_district_office" runat="server" GroupName="a" Text="DISTRICT OFFICE" AutoPostBack="True" Font-Bold="True" OnCheckedChanged="radio_district_office_CheckedChanged" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="sponsor-boxsec2">
                                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                <p class="sponsor-boxsec-psec">Name of the post:-</p>
                                            </div>

                                            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                <div class="sponsor-textbox">

                                                    <asp:DropDownList ID="ddl_head_office_post" Class="from-control sponsor-boxfromcontrol" runat="server" Visible="true">
                                                        <asp:ListItem>Select</asp:ListItem>
                                                        <asp:ListItem>ASSISTANT GENERAL MANAGER (AGM) </asp:ListItem>
                                                        <asp:ListItem>STATE GENERAL MANAGER (SGM)</asp:ListItem>
                                                        <asp:ListItem>CHIEF SECURITY SUPERINTENDENT (CSS) </asp:ListItem>
                                                        <asp:ListItem>CHIEF SUPERVISOR</asp:ListItem>
                                                        <asp:ListItem>REGIONAL SUPERVISOR</asp:ListItem>
                                                        <asp:ListItem>IT IN-CHARGE-CUM-ACCOUNTANT</asp:ListItem>
                                                        <asp:ListItem>PERSONAL ASSISTANT (PA)</asp:ListItem>
                                                        <asp:ListItem>MEDIA IN CHARGE</asp:ListItem>
                                                        <asp:ListItem>DATA OPERATOR</asp:ListItem>
                                                        <asp:ListItem>HEAD CLERK</asp:ListItem>
                                                        <asp:ListItem>ARMED SECURITY FORCE</asp:ListItem>
                                                        <asp:ListItem>ASSISTANT CLERK</asp:ListItem>
                                                        <asp:ListItem>VEHICLE DRIVER</asp:ListItem>
                                                        <asp:ListItem>FOURTH CLASS EMPLOYEE</asp:ListItem>
                                                        <asp:ListItem>COOK</asp:ListItem>
                                                        <asp:ListItem>CLEANERS</asp:ListItem>
                                                        <asp:ListItem>SECURITY GUARD</asp:ListItem>
                                                        <asp:ListItem>GARDENER</asp:ListItem>
                                                        <asp:ListItem>WASHER MAN</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:DropDownList ID="ddl_district_post" Class="from-control sponsor-boxfromcontrol" runat="server" Visible="false">
                                                        <asp:ListItem>Select</asp:ListItem>
                                                        <asp:ListItem>DISTRICT MANAGER OFFICER (DMO)</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:DropDownList ID="ddl_block_post" Class="from-control sponsor-boxfromcontrol" runat="server" Visible="false">
                                                        <asp:ListItem>Select</asp:ListItem>
                                                        <asp:ListItem>BLOCK MANAGER OFFICER (BMO)</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:DropDownList ID="ddl_panchayat_post" Class="from-control sponsor-boxfromcontrol" runat="server" Visible="false">
                                                        <asp:ListItem>Select</asp:ListItem>
                                                        <asp:ListItem>PANCHAYAT COORDINATOR</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="sponsor-boxsec2">
                                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                <p class="sponsor-boxsec-psec">
                                                    Choice Place Details:-<br />
                                                </p>
                                            </div>
                                            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                <div class="form-group">
                                                    State
                                                    <asp:DropDownList ID="ddl_state" Class="from-control sponsor-boxfromcontrol" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_state_SelectedIndexChanged">
                                                        <%--<asp:ListItem Selected="True">Bihar</asp:ListItem>--%>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group form-inline">
                                                    District
                                                    <asp:DropDownList ID="ddl_district" Class="from-control sponsor-boxfromcontrol" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_district_SelectedIndexChanged">
                                                        <asp:ListItem Selected="True">Select</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group form-inline">
                                                    Block
                                                    <asp:DropDownList ID="ddl_block" Class="from-control sponsor-boxfromcontrol" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_block_SelectedIndexChanged">
                                                        <asp:ListItem Selected="True">Select</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="form-group form-inline">
                                                    Panchayat
                                                    <asp:DropDownList ID="ddl_panchayat" Class="from-control sponsor-boxfromcontrol" runat="server">
                                                        <asp:ListItem Selected="True">Select</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="sponsor-boxsec2">
                                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                <p class="sponsor-boxsec-psec">Candidate’s Name:-</p>
                                            </div>

                                            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                <div class="sponsor-textbox">
                                                    <asp:TextBox ID="txt_Candidate_Name" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Candidate’s Name" required></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Father’s/Husband’s Name:-</p>
                                                </div>

                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">

                                                        <asp:TextBox ID="txt_father_name" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Father’s/Husband’s Name"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Mother's Name:-</p>
                                                </div>

                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">

                                                        <asp:TextBox ID="txt_mother_name" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Mother's Name"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Date of Birth:-</p>
                                                </div>
                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">

                                                        <asp:TextBox ID="txt_dob" runat="server" CssClass="form-control calender-icon" placeholder="dd/mm/yyyy*"></asp:TextBox>
                                                        <i class="fa fa-calendar clndr-icon" aria-hidden="true"></i>
                                                        <script type="text/javascript">
                                                            $(function () {
                                                                $("#<%=txt_dob.ClientID %>").datepicker({
                                                                        dateFormat: "dd/mm/yy",
                                                                        changeMonth: true,
                                                                        changeYear: true,
                                                                        yearRange: "1900:2100"
                                                                        //minDate: 0
                                                                    });

                                                                });
                                                        </script>

                                                    </div>
                                                </div>

                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Age (as on 01/01/2021):-</p>
                                                </div>
                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">
                                                        <i class="icon-gps-location sponsor-icons"></i>
                                                        <asp:TextBox ID="txt_age" runat="server" Class="from-control sponsor-boxfromcontrol" onkeypress="return isNumberKey(event)" placeholder="Age (as on 01/01/2021)"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Select Category:-</p>
                                                </div>

                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">
                                                        <div class="sponsor-textbox">
                                                            <asp:DropDownList ID="ddl_category" class="from-control sponsor-boxfromcontrol-dropdown" runat="server">
                                                                <asp:ListItem>GENERAL</asp:ListItem>
                                                                <asp:ListItem>OBC</asp:ListItem>
                                                                <asp:ListItem>EBC</asp:ListItem>
                                                                <asp:ListItem>SC</asp:ListItem>
                                                                <asp:ListItem>ST</asp:ListItem>

                                                            </asp:DropDownList>
                                                        </div>

                                                    </div>
                                                </div>

                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Religion:-</p>
                                                </div>
                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">
                                                        <div class="sponsor-textbox">
                                                            <asp:TextBox ID="txt_Religion" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Religion"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Nationality:-</p>
                                                </div>
                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">
                                                        <i class="icon-gps-location sponsor-icons"></i>
                                                        <asp:TextBox ID="txt_nationality" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Nationality"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Marital Status:-</p>
                                                </div>
                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">
                                                        <i class="icon-gps-location sponsor-icons"></i>
                                                        <asp:DropDownList ID="ddl_marital_status" Class="from-control sponsor-boxfromcontrol" runat="server">
                                                            <asp:ListItem>Unmarried</asp:ListItem>
                                                            <asp:ListItem>Married</asp:ListItem>

                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Gender:-</p>
                                                </div>
                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">
                                                        <asp:DropDownList ID="ddl_gender" Class="from-control sponsor-boxfromcontrol" runat="server">
                                                            <asp:ListItem>Male</asp:ListItem>
                                                            <asp:ListItem>Female</asp:ListItem>
                                                            <asp:ListItem>Others</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Disability:-</p>
                                                </div>
                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">
                                                        <asp:DropDownList ID="ddl_disability" Class="from-control sponsor-boxfromcontrol" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_disability_SelectedIndexChanged">

                                                            <asp:ListItem>No</asp:ListItem>
                                                            <asp:ListItem>Yes</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Type of Disability:-</p>
                                                </div>
                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">
                                                        <asp:DropDownList ID="ddl_disability_type" Class="from-control sponsor-boxfromcontrol" runat="server" Enabled="false">
                                                            <asp:ListItem>Select</asp:ListItem>
                                                            <asp:ListItem>OH</asp:ListItem>
                                                            <asp:ListItem>VH</asp:ListItem>
                                                            <asp:ListItem>HH</asp:ListItem>
                                                            <asp:ListItem>MH</asp:ListItem>
                                                            <asp:ListItem>MNH</asp:ListItem>

                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Correspondence Address:-</p>
                                                </div>
                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">
                                                        <asp:TextBox ID="txt_Correspondence_Address" runat="server" Class="from-control sponsor-boxfromcontrol" TextMode="MultiLine" Height="100" placeholder="Correspondence Address" required></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec" style="padding: 0px;">If permanent address is same as correspondence address then please tick </p>
                                                </div>
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">

                                                        <asp:CheckBox ID="chk_same_address" runat="server" AutoPostBack="true" OnCheckedChanged="chk_same_address_CheckedChanged" />

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Permanent Address:-</p>
                                                </div>
                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">

                                                        <asp:TextBox ID="txt_permanent_address" runat="server" Class="from-control sponsor-boxfromcontrol" TextMode="MultiLine" Height="100" placeholder="Address" required></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Aadhar Number:-</p>
                                                </div>
                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">
                                                        <i class="icon-gps-location sponsor-icons"></i>
                                                        <asp:TextBox ID="txt_aadhar_no" runat="server" Class="from-control sponsor-boxfromcontrol" onkeypress="return isNumberKey(event)" placeholder="Aadhar Number"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Contact No.:-</p>
                                                </div>
                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">

                                                        <asp:TextBox ID="txt_mobile_no" runat="server" Class="from-control sponsor-boxfromcontrol" onkeypress="return isNumberKey(event)" MaxLength="10" placeholder="Mobile No." required></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Email ID:-</p>
                                                </div>
                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">
                                                        <div class="sponsor-textbox">
                                                            <asp:TextBox ID="txt_emai_id" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Email ID"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Do you have Android Mobile:-</p>
                                                </div>
                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">
                                                        <asp:DropDownList ID="ddl_having_android_mobile" Class="from-control sponsor-boxfromcontrol" runat="server">
                                                            <asp:ListItem>Yes</asp:ListItem>
                                                            <asp:ListItem>No</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Do you have Laptop/Desktop:-</p>
                                                </div>
                                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">
                                                        <asp:DropDownList ID="ddl_having_laptop" Class="from-control sponsor-boxfromcontrol" runat="server">
                                                            <asp:ListItem>No</asp:ListItem>
                                                            <asp:ListItem>Yes</asp:ListItem>

                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                            <h3 class="registration-heading-h3">Educational Qualification</h3>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">
                                                        <div class="sponsor-textbox">
                                                            <div class="table-responsive">
                                                                <table class="table table-responsive">
                                                                    <thead>
                                                                        <tr>
                                                                            <th scope="col">SL.No.</th>
                                                                            <th scope="col">Exam Passed</th>
                                                                            <th scope="col">Board/University</th>
                                                                            <th scope="col">Passing Year</th>
                                                                            <th scope="col">Total Marks</th>
                                                                            <th scope="col">Marks Obtained</th>
                                                                            <th scope="col">Division</th>
                                                                            <th scope="col">Percentage</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr>
                                                                            <th scope="row">1</th>
                                                                            <td>MATRIC</td>
                                                                            <td>
                                                                                <asp:TextBox ID="txt_matric_board_university" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Board/University" required />
                                                                            </td>

                                                                            <td>
                                                                                <asp:TextBox ID="txt_matric_passing_year" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Passing Yeary" required />
                                                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter value." ValidationGroup="education"></asp:RequiredFieldValidator>--%></td>


                                                                            <td>
                                                                                <asp:TextBox ID="txt_matric_total_marks" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Total Marks" required />
                                                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter value." ValidationGroup="education"></asp:RequiredFieldValidator>--%></td>
                                                                            <td>
                                                                                <asp:TextBox ID="txt_matric_marks_obtained" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Marks Obtained" required />
                                                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter value." ValidationGroup="education"></asp:RequiredFieldValidator>--%></td>
                                                                            <td>
                                                                                <asp:TextBox ID="txt_matric_divison" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Division" required />
                                                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter value." ValidationGroup="education"></asp:RequiredFieldValidator>--%></td>
                                                                            <td>
                                                                                <asp:TextBox ID="txt_matric_percentage" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Percentage" required />
                                                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter value." ValidationGroup="education"></asp:RequiredFieldValidator>--%></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">2</th>
                                                                            <td>INTER</td>
                                                                            <td>
                                                                                <asp:TextBox ID="txt_inter_board_university" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Board/University"></asp:TextBox></td>
                                                                            <td>
                                                                                <asp:TextBox ID="txt_inter_passing_year" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Passing Yeary"></asp:TextBox></td>
                                                                            <td>
                                                                                <asp:TextBox ID="txt_inter_total_marks" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Total Marks"></asp:TextBox></td>
                                                                            <td>
                                                                                <asp:TextBox ID="txt_inter_marks_obtained" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Marks Obtained"></asp:TextBox></td>
                                                                            <td>
                                                                                <asp:TextBox ID="txt_inter_divison" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Division"></asp:TextBox></td>
                                                                            <td>
                                                                                <asp:TextBox ID="txt_inter_percentage" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Percentage"></asp:TextBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">3</th>
                                                                            <td>GRADUATION</td>
                                                                            <td>
                                                                                <asp:TextBox ID="txt_graduation_board_university" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Board/University"></asp:TextBox></td>
                                                                            <td>
                                                                                <asp:TextBox ID="txt_graduation_passing_year" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Passing Yeary"></asp:TextBox></td>
                                                                            <td>
                                                                                <asp:TextBox ID="txt_graduation_total_marks" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Total Marks"></asp:TextBox></td>
                                                                            <td>
                                                                                <asp:TextBox ID="txt_graduation_marks_obtained" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Marks Obtained"></asp:TextBox></td>
                                                                            <td>
                                                                                <asp:TextBox ID="txt_graduation_division" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Division"></asp:TextBox></td>
                                                                            <td>
                                                                                <asp:TextBox ID="txt_graduation_percentage" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Percentage"></asp:TextBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th scope="row">4</th>
                                                                            <td>OTHER-
                                                                                    <br />
                                                                                <asp:TextBox ID="txt_other" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Other"></asp:TextBox></td>
                                                                            <td>
                                                                                <br />
                                                                                <asp:TextBox ID="txt_other_board_university" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Board/University"></asp:TextBox></td>
                                                                            <td>
                                                                                <br />
                                                                                <asp:TextBox ID="txt_other_passing_year" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Passing Yeary"></asp:TextBox></td>
                                                                            <td>
                                                                                <br />
                                                                                <asp:TextBox ID="txt_other_total_marks" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Total Marks"></asp:TextBox></td>
                                                                            <td>
                                                                                <br />
                                                                                <asp:TextBox ID="txt_other_marks_obtained" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Marks Obtained"></asp:TextBox></td>
                                                                            <td>
                                                                                <br />
                                                                                <asp:TextBox ID="txt_other_division" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Division"></asp:TextBox></td>
                                                                            <td>
                                                                                <br />
                                                                                <asp:TextBox ID="txt_other_percentage" runat="server" Class="from-control sponsor-boxfromcontrol" placeholder="Percentage"></asp:TextBox></td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Computer Knowledge: (Fill course name):-</p>
                                                </div>
                                                <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">

                                                        <asp:TextBox ID="txt_computer_knowledge" runat="server" Class="from-control sponsor-boxfromcontrol"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Work experience (If any):-</p>
                                                </div>
                                                <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">

                                                        <asp:TextBox ID="txt_work_experience" runat="server" Class="from-control sponsor-boxfromcontrol"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Applicant's Photo</p>
                                                </div>

                                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">
                                                        <asp:FileUpload ID="file_photo" Class="from-control sponsor-boxfromcontrol" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Signature of Applicant</p>
                                                </div>

                                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">
                                                        <asp:FileUpload ID="file_signature" Class="from-control sponsor-boxfromcontrol" runat="server" />

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                                    <p class="sponsor-boxsec-psec">Declaration:-</p>
                                                </div>
                                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">

                                                        <p class="sponsor-boxsec-psec">
                                                            <asp:CheckBox ID="chk_declaration_english" runat="server" />
                                                            I declare that all the information given by me is true.  If found wrong legal action can be taken by canceling my candidature.  Against which I will not make any kind of claim.-
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="sponsor-boxsec2">
                                                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                                </div>
                                                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                                                    <div class="sponsor-textbox">

                                                        <p class="sponsor-boxsec-psec">
                                                            <asp:CheckBox ID="chk_declaration_hindi" runat="server" Checked="false" />
                                                            मैं घोषणा करता/करती हूँ कि मेरे द्वारा दी गई सभी जानकारी सत्य है। गलत पाये जाने पर, मेरी उम्मीदवारी रद्द करते हुये कानूनी कारवाई की जा सकती है। जिसके विरूद्ध मैं किसी प्रकार का दावा नहीं करूंगा/करूंगी।
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                    </div>

                                </div>


                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <div class="sponsor-boxsec2">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="sponsor-textbox">
                                                    <asp:Button ID="btn_submit" runat="server" Class="sponsor-textbox-button2" Text="Submit" OnClick="btn_submit_Click" />
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <div class="sponsor-boxsec2">
                                            <p class="contentbox-message-p message_p">* Maximum File Size 100kb </p>
                                            <asp:Label ID="lbl_mgs" runat="server" Text="" ForeColor="Red" Font-Size="15"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </asp:Panel>

                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12"></div>

                </div>
            </div>
        </div>



    </section>


    <%--  <-----------calendar------------>--%>
    <link href="calender/jqueryUI.css" rel="stylesheet" />
    <script src="calender/jquery-ui.js"></script>
</asp:Content>
