<%@ Page Title="" Language="C#" MasterPageFile="~/BLOCK_COORDINATOR/BlockUser.Master" AutoEventWireup="true" CodeBehind="rmjsy-membership-form.aspx.cs" Inherits="jsdmss.BLOCK_COORDINATOR.rmjsy_membership_form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Membership
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .member_h2 {
            margin: 0px 0px 13px 0px;
            padding: 9px 0px 9px 11px;
            width: 100%;
            height: auto;
            font-size: 22px;
            color: #ffffff;
            background-color: #7386d5;
        }

        @media only screen and (max-width:800px) {
            .form-group {
                margin-bottom: 0px !important;
            }
        }
    </style>

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

    <div class="alert alert-success alert-dismissible" runat="server" id="pnlmessage" visible="false">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>
            <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label></strong>
    </div>
    <h3 class="page-title">Member Registration</h3>
    <div class="col-md-12">
        <div class="bg-primary text-white" style="padding: 2px 15px; border-radius: 6px;">
            <span>Co-Ordinator Name :</span>&nbsp;<asp:Label ID="lblcoordiantor" runat="server" Text=""></asp:Label>
            &nbsp;
        <span>Co-Ordinator Mobile :</span>&nbsp;<asp:Label ID="lblcoordinatormobile" runat="server" Text=""></asp:Label>
        </div>
        <div class="row">
            <div class="col-md-12">
                <br />
                <asp:HiddenField ID="hf_userId" runat="server" />
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">Select State</label>
                            <asp:DropDownList ID="ddl_state" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_state_SelectedIndexChanged">
                                <asp:ListItem Selected="True">Select</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">Select District</label>
                            <asp:DropDownList ID="ddl_district" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_district_SelectedIndexChanged">
                                <asp:ListItem Selected="True">Select</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">Select Block</label>
                            &nbsp;    
                                <asp:DropDownList ID="ddl_block" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_Block_SelectedIndexChanged">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                </asp:DropDownList>&nbsp;
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">Select Panchayat</label>
                            &nbsp;    
                                <asp:DropDownList ID="ddl_panchayat" CssClass="form-control" runat="server">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">आवेदक का नाम (अंग्रेजी में)</label>
                            &nbsp;<asp:TextBox ID="txt_name_eng" CssClass="form-control" runat="server" required />&nbsp;
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">पिता /पति का नाम (अंग्रेजी में)</label>
                            &nbsp;<asp:TextBox ID="txt_fathername_eng" CssClass="form-control" runat="server" required />&nbsp;
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">माता का नाम (अंग्रेजी में)</label>
                            &nbsp;<asp:TextBox ID="txt_mothername_eng" CssClass="form-control" runat="server"></asp:TextBox>&nbsp;
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">जन्म तिथि</label>
                            &nbsp;<asp:TextBox ID="txt_dob" CssClass="form-control" runat="server" format="dd/MM/yyyy" required />&nbsp;
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

                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">उम्र</label>
                            &nbsp;<asp:TextBox ID="txt_age" CssClass="form-control" runat="server"></asp:TextBox>&nbsp;
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">श्रेणी</label>
                            &nbsp; 
                                <asp:DropDownList ID="ddl_category" CssClass="form-control" runat="server">
                                    <asp:ListItem>GENERAL</asp:ListItem>
                                    <asp:ListItem>OBC</asp:ListItem>
                                    <asp:ListItem>EBC</asp:ListItem>
                                    <asp:ListItem>SC</asp:ListItem>
                                    <asp:ListItem>ST</asp:ListItem>
                                </asp:DropDownList>
                            &nbsp; 
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">जाति</label>
                            &nbsp;<asp:TextBox ID="txt_caste" CssClass="form-control" runat="server"></asp:TextBox>&nbsp;
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">विकलांगता</label>
                            &nbsp; 
                                <asp:DropDownList ID="ddl_disability" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_disability_SelectedIndexChanged">
                                    <asp:ListItem>No</asp:ListItem>
                                    <asp:ListItem>Yes</asp:ListItem>
                                </asp:DropDownList>
                            &nbsp; 
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">विकलांगता का प्रकार</label>
                            &nbsp; 
                                <asp:DropDownList ID="ddl_disability_type" CssClass="form-control" runat="server" Enabled="false">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>OH</asp:ListItem>
                                    <asp:ListItem>VH</asp:ListItem>
                                    <asp:ListItem>HH</asp:ListItem>
                                    <asp:ListItem>MH</asp:ListItem>
                                    <asp:ListItem>MNH</asp:ListItem>

                                </asp:DropDownList>
                            &nbsp; 
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">राष्ट्रीयता</label>
                            &nbsp;<asp:TextBox ID="txt_nationality" CssClass="form-control" runat="server"></asp:TextBox>&nbsp;
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">धर्म </label>
                            &nbsp;<asp:TextBox ID="txt_religan" CssClass="form-control" runat="server" />&nbsp;
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group ">
                            <label for="usr">पता:- (स्थायी)</label>
                            &nbsp;<asp:TextBox ID="txt_permanent_address" CssClass="form-control" TextMode="MultiLine" Height="100px" runat="server" required />&nbsp;
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group ">
                            <label for="usr">PIN for Permanent  Address</label>
                            &nbsp;<asp:TextBox ID="txt_pin_permanent" CssClass="form-control" runat="server" />&nbsp;
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group ">

                            <asp:CheckBox ID="chk_same_address" AutoPostBack="true" OnCheckedChanged="chk_same_address_CheckedChanged" runat="server" Font-Bold="true" Font-Size="Large" Text=" यदि स्थायी पता पत्राचार पते के समान है तो कृपया टिक करें" />



                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group ">
                            <label for="usr">पता:- (पत्राचार)</label>
                            &nbsp;<asp:TextBox ID="txt_Correspondence_Address" CssClass="form-control" TextMode="MultiLine" Height="100px" runat="server"></asp:TextBox>&nbsp;
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group ">
                            <label for="usr">PIN for Postal Address</label>
                            &nbsp;<asp:TextBox ID="txt_pin_postal" CssClass="form-control" runat="server" />&nbsp;
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group ">
                            <label for="usr">आधार संख्या </label>
                            &nbsp;<asp:TextBox ID="txt_aadhar_no" CssClass="form-control" onkeypress="return isNumberKey(event)" MaxLength="12" runat="server" />&nbsp;
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group ">
                            <label for="usr">मोबाईल नं0</label>
                            &nbsp;<asp:TextBox ID="txt_mobile_no" CssClass="form-control" onkeypress="return isNumberKey(event)" MaxLength="10" runat="server" required />&nbsp;
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group ">
                            <label for="usr">ईमेल आई0 डी0</label>
                            &nbsp;<asp:TextBox ID="txt_email_id" CssClass="form-control" runat="server"></asp:TextBox>&nbsp;
                        </div>
                    </div>
                </div>
                <h2 class="member_h2">बैंक विवरण</h2>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">बैंक खाताधारी का नाम </label>
                            &nbsp;<asp:TextBox ID="txt_bank_account_holder_name" CssClass="form-control" runat="server"></asp:TextBox>&nbsp;
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">बैंक खाता संख्या </label>
                            &nbsp;<asp:TextBox ID="txt_bank_accond_no" CssClass="form-control" onkeypress="return isNumberKey(event)" runat="server"></asp:TextBox>&nbsp;
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">बैंक का नाम</label>
                            &nbsp;<asp:TextBox ID="txt_bank_name" CssClass="form-control" runat="server"></asp:TextBox>&nbsp;
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">बैंक का आई0 एफ0 सी0 कोड</label>
                            &nbsp;<asp:TextBox ID="txt_bank_ifsc_code" CssClass="form-control" runat="server"></asp:TextBox>&nbsp;
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">शाखा का नाम</label>
                            &nbsp;<asp:TextBox ID="txt_bank_branch" CssClass="form-control" runat="server"></asp:TextBox>&nbsp;
                        </div>
                    </div>
                </div>
                <h2 class="member_h2">अन्य विवरण</h2>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">गृह का प्रकार </label>
                            &nbsp;<asp:TextBox ID="txt_house_type" CssClass="form-control" runat="server"></asp:TextBox>&nbsp;
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">कुल कमरों की संख्या</label>
                            &nbsp;<asp:TextBox ID="txt_numberofroom" CssClass="form-control" runat="server"></asp:TextBox>&nbsp;
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">परिवार की सदस्यो की सं0</label>
                            &nbsp;<asp:TextBox ID="txt_fimaly_no" CssClass="form-control" runat="server"></asp:TextBox>&nbsp;
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group ">
                            <label for="usr">शैचालय है या नही ।</label>
                            <asp:DropDownList ID="ddl_toilet" CssClass="form-control" runat="server">
                                <asp:ListItem>हाँ</asp:ListItem>
                                <asp:ListItem>नहीं</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group ">
                            <label for="usr">सरकार के द्वारा प्राप्त आवास</label>
                            <asp:DropDownList ID="ddl_govt_provided_house" CssClass="form-control" runat="server">
                                <asp:ListItem>हाँ</asp:ListItem>
                                <asp:ListItem>नहीं</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group ">
                            <label for="usr">परिवार में सरकारी नोकरी हैं या नही । </label>
                            <asp:DropDownList ID="ddl_govt_employe" CssClass="form-control" runat="server">
                                <asp:ListItem>हाँ</asp:ListItem>
                                <asp:ListItem>नहीं</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group ">
                            <label for="usr">शैक्षणिक योगिता</label>
                            &nbsp;<asp:TextBox ID="txt_qualification" CssClass="form-control" runat="server"></asp:TextBox>&nbsp;
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group ">
                            <label for="usr">RMJSY में पंजीयन एंव योजना संचालन हेतु सहायता/दान की राशि</label>
                            &nbsp;<asp:TextBox ID="txt_reg_help_amount" CssClass="form-control" runat="server" type="number"  min="1" max="1000000000000"></asp:TextBox>&nbsp;
                        </div>
                    </div>
                </div>

            </div>

            <h2 class="member_h2">अनुलागनक:-</h2>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group ">
                        <label for="usr">आवेदक फोटोग्राफ</label>
                        <asp:FileUpload ID="file_photograph" runat="server" CssClass="form-control" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group ">
                        <label for="usr">आवेदक का हस्तााक्षर</label>
                        <asp:FileUpload ID="file_signature" runat="server" CssClass="form-control" />
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="form-group ">
                        <label for="usr">घोषणा:-</label>
                        &nbsp;
                                <asp:CheckBox ID="chk_declaration" runat="server" ForeColor="Red" Text="&nbsp; &nbsp;मैं घोषणा करता/करती हूँ कि, पुर्व से किसी बड़ी घटना/दुर्घटना/बीमारी/प्राकृतिक दुर्घटना का शिकार नही हुआ हँू। बिना किसी दबाव के स्वेच्छा से सहायता/दान देकर योजना से लाभ/सहयोग के लिए पंजीकृत हो रहा/रही हूँ। मेरे द्वारा दी गई सभी सूचना सही हैं । गलत पाये जाने पर मेरे द्वारा किए गए लाभ/सहायता का दावा एंव आवेदन का पंजीकरण को रद्द कर दिया जाए, जिसके विरूद्ध मैं किसी प्रकार का दावा नही करूँगा/करूँगी। साथ ही योजना के अनुदान से हमें वंचित कर दिए जाए ।" />
                        &nbsp;                            
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group ">
                        <asp:Button ID="btn_submit" runat="server" Text="Submit" CssClass="btn btn-block btn-info" OnClick="btn_submit_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>

</asp:Content>
