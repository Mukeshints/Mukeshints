<%@ Page Title="" Language="C#" MasterPageFile="~/Maindmin/User.Master" AutoEventWireup="true" CodeBehind="print-member-details.aspx.cs" Inherits="jsdmss.Maindmin.print_member_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Print Member Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h3 class="page-title">Member Details </h3>
        </div>
        <div class="col-md-12">
            <div class="form-group form-inline">
                <label>Enter Application Number Or Mobile Number</label>&nbsp;<asp:TextBox ID="txt_search" runat="server" CssClass="form-control">&nbsp;</asp:TextBox>&nbsp;<asp:Button ID="btn_find" runat="server" Text="FIND" CssClass="btn btn-dark" OnClick="btn_find_Click" />

            </div>
            <br />
            <asp:Label ID="lbl_message" runat="server" Text="" Font-Bold="true" ForeColor="Red"></asp:Label>
        </div>
    </div>
    <asp:Panel ID="Panel1" runat="server" Visible="false" CssClass="row">
        <div class="col-md-12" id="printabledivt" style="margin-top: 10px;">
            <div class="table-responsive">
                <table class="table table-bordered">
                    <tr>
                        <td colspan="2">
                            <h4 style="margin: 0px; text-align: center; font-size: 30px; font-weight: bold;">Rashtriya Manav Jiwan Seva Yojna (RMJSY)</h4>
                            <h5 style="margin: 0px; text-align: center">(A Unit of Jaisheela Devi Memorial seva Sansthan)</h5>
                            <h5 style="margin: 0px; text-align: center">Reg. No.-S000248/2019(Govt. Of Bihar)</h5>
                            <h5 style="margin: 0px; text-align: center">Head Office: K.S. Nagar Jhaua, Majgama, P.O- Sahja, Block- Pranpur, P.S- Paranpur<br />
                                Dist- Katihar, Bihar-854107</h5>
                        </td>


                    </tr>
                    <tr>
                        <td>Co-ordinator : &nbsp;<asp:Label ID="lblcoordiantor" runat="server" Text="" Font-Bold="true" ForeColor="Blue"></asp:Label>, &nbsp;Co-ordinator Mobile:&nbsp;<asp:Label ID="lblcoordinatormobile" runat="server" Text="" Font-Bold="true" ForeColor="Blue"></asp:Label>
                            <br />
                            <strong>Application No. : </strong>
                            <asp:Label ID="lblapplication_no" runat="server" Text="" Font-Bold="true" ForeColor="Blue"></asp:Label><br />
                            <strong>Registration Date :</strong>  
                            <asp:Label ID="lbl_registation_date" runat="server" Text="" ForeColor="#006699"></asp:Label><br />
                            State : 
                        <asp:Label ID="lblstate" runat="server" Text="" Font-Bold="true" ForeColor="Blue"></asp:Label><br />
                            District :
                        <asp:Label ID="lbldistrict" runat="server" Text="" Font-Bold="true" ForeColor="Blue"></asp:Label><br />
                            Block : 
                            <asp:Label ID="lblblock" runat="server" Text="" ForeColor="#006699"></asp:Label><br />
                            Panchayat/Ward :
                                <asp:Label ID="lblpanchayat" runat="server" Text="" ForeColor="#006699"></asp:Label>
                        </td>
                        <td>
                            <figure>
                                <asp:Image ID="Image1" runat="server" Width="100px" Height="125px" />
                                <figcaption>
                                    <asp:Image ID="Image2" runat="server" Height="50px" /></figcaption>
                            </figure>
                        </td>

                    </tr>


                    <tr>
                        <th colspan="2">Basic Details</th>
                    </tr>
                    <tr>

                        <td>Name : 
                            <asp:Label ID="lblname" runat="server" Text="" ForeColor="#006699"></asp:Label>
                        </td>

                    </tr>
                    <tr>
                        <td>Mobile :<asp:Label ID="lblmobile" runat="server" Text="" ForeColor="#006699"></asp:Label></td>

                        <td>Father's/Husband's Name : 
                            <asp:Label ID="lblfathername" runat="server" Text="" ForeColor="#006699"></asp:Label>
                        </td>

                    </tr>
                    <tr>
                        <td>Email :<asp:Label ID="lblemail" runat="server" Text="" ForeColor="#006699"></asp:Label></td>

                        <td>Mother's Name :<asp:Label ID="lblmothername" runat="server" Text="" ForeColor="#006699"></asp:Label></td>

                    </tr>

                    <tr>
                        <th colspan="2">Personal Details</th>
                    </tr>
                    <tr>
                        <td>Date Of Birth :<asp:Label ID="lbldob" runat="server" Text="" ForeColor="#006699"></asp:Label></td>

                        <td>Age :<asp:Label ID="lblage" runat="server" Text="" ForeColor="#006699"></asp:Label></td>



                    </tr>

                    <tr>
                        <td>Category : 
                            <asp:Label ID="lblcategory" runat="server" ForeColor="#006699"></asp:Label>
                        </td>
                        <td>Nationality : 
                            <asp:Label ID="lblnationality" runat="server" Text="" ForeColor="#006699"></asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td>Caste :<asp:Label ID="lblcaste" runat="server" Text="" ForeColor="#006699"></asp:Label></td>
                        <td>Religion : 
                            <asp:Label ID="lblreligion" runat="server" Text="" ForeColor="#006699"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Aadhar :
                            <asp:Label ID="lbladhar" runat="server" Text="" ForeColor="#006699"></asp:Label>
                        </td>
                        <td>Disability :<asp:Label ID="lbldisability" runat="server" Text="" ForeColor="#006699"></asp:Label>&nbsp;,
                       
                            <asp:Label ID="lbldisabilitytype" runat="server" Text="" ForeColor="#006699"></asp:Label>
                        </td>

                    </tr>
                    <tr>
                        <th colspan="2">Contact Details</th>
                    </tr>
                    <tr>
                        <td colspan="2">Permanent Address :<asp:Label ID="lblpermanentaddress" runat="server" Text="" ForeColor="#006699"></asp:Label></td>



                    </tr>
                    <tr>
                        <td colspan="2">Correspondence Address : 
                            <asp:Label ID="lblcorrespondenceaddress" runat="server" Text="" ForeColor="#006699"></asp:Label>
                        </td>


                    </tr>



                    <tr>
                        <th colspan="2">Bank Details</th>
                    </tr>
                    <tr>
                        <td>Account Holder Name :
                            <asp:Label ID="lblaccountholdername" runat="server" Text="" ForeColor="#006699"></asp:Label>
                        </td>
                        <td>Bank Name :<asp:Label ID="lblbankname" runat="server" Text="" ForeColor="#006699"></asp:Label>&nbsp;,
                        </td>


                    </tr>
                    <tr>
                        <td>Account Number :<asp:Label ID="lblaccountnumber" runat="server" Text="" ForeColor="#006699"></asp:Label>&nbsp;,
                       
                           
                        </td>
                        <td>IFSC Code :<asp:Label ID="lblifsccode" runat="server" Text="" ForeColor="#006699"></asp:Label>&nbsp;,
                       
                           
                        </td>

                    </tr>
                    <tr>
                        <th colspan="2">Other Details</th>
                    </tr>
                    <tr>
                        <td>Branch :
                            <asp:Label ID="lblbranch" runat="server" Text="" ForeColor="#006699"></asp:Label>
                        </td>
                        <td>Type Of House :<asp:Label ID="lbltypeofhome" runat="server" Text="" ForeColor="#006699"></asp:Label>&nbsp;,
                       
                           
                        </td>
                    </tr>
                    <tr>
                        <td>Total No. Of Rooms :<asp:Label ID="lblnoofrooms" runat="server" Text="" ForeColor="#006699"></asp:Label>&nbsp;,
                       
                           
                        </td>
                        <td>No. Of Family Member :<asp:Label ID="lblnooffamilymember" runat="server" Text="" ForeColor="#006699"></asp:Label>&nbsp;
                        </td>
                        <%--<td>House Number :
                            <asp:Label ID="lblhouseno" runat="server" Text="" ForeColor="#006699"></asp:Label>
                        </td>--%>
                    </tr>
                    <tr>

                        <td>Having Toilet :<asp:Label ID="lbltoilet" runat="server" Text="" ForeColor="#006699"></asp:Label>&nbsp;
                        </td>
                        <td>Govt. Given Home :
                            <asp:Label ID="lblgovtgivenhome" runat="server" Text="" ForeColor="#006699"></asp:Label>
                        </td>
                    </tr>
                    <tr>

                        <td>Govt. Job In Family :
                            <asp:Label ID="lblgovtjobinfamily" runat="server" Text="" ForeColor="#006699"></asp:Label>
                        </td>
                          <td>Govt. Yojana Rashi :
                            <asp:Label ID="lblgovtyojanarashi" runat="server" Text="" ForeColor="#006699"></asp:Label>
                        </td>
                       <%-- <td>Votar ID No :
                            <asp:Label ID="lblvotarid" runat="server" Text="" ForeColor="#006699"></asp:Label>
                        </td>--%>
                    </tr>
                    
                    <%--  <tr>
                        <th colspan="2">House Location</th>
                    </tr>--%>
                    <%-- <tr>
                        <td colspan="2">East :<asp:Label ID="lbleast" runat="server" Text="" ForeColor="#006699"></asp:Label>&nbsp;,
                       
                           
                    West:<asp:Label ID="lblwest" runat="server" Text="" ForeColor="#006699"></asp:Label>&nbsp;,
                       
                           
                   North :
                            <asp:Label ID="lblnorth" runat="server" Text="" ForeColor="#006699"></asp:Label>
                            ,
                    South :<asp:Label ID="lblsouth" runat="server" Text="" ForeColor="#006699"></asp:Label>&nbsp;</td>
                    </tr>--%>
                    <tr>


                        <%--  <td>Rasan Card No :<asp:Label ID="lblrasancardno" runat="server" Text="" ForeColor="#006699"></asp:Label>&nbsp;,
                      
                           
                        </td> --%>
                    </tr>
                    <tr>
                        <td colspan="2">Education Qualification :
                            <asp:Label ID="lblqualification" runat="server" Text="" ForeColor="#006699"></asp:Label>

                        </td>
                    </tr>
                   <%-- <tr>
                        <td colspan="2">Attachment :
                       
                        <asp:CheckBox ID="chk_adhar" runat="server" Checked="false" Text="Adhar Card/Rasan Card/Votar ID" ForeColor="#006699" />
                            &nbsp;
                        <asp:CheckBox ID="chk_bankaccount" ForeColor="#006699" runat="server" Checked="false" Text="Bank Account" />
                            &nbsp;   
                        </td>
                    </tr>--%>
                    <tr>
                        <td colspan="2">Declaration :                       
                        <asp:CheckBox ID="chkdeclararion" runat="server" Checked="true" Text="मैं घोषणा करता/करती हूँ कि, पुर्व से किसी बड़ी घटना/दुर्घटना/बीमारी/प्राकृतिक दुर्घटना का शिकार नही हुआ हँू। बिना किसी दबाव के स्वेच्छा से सहायता/दान देकर योजना से लाभ/सहयोग के लिए पंजीकृत हो रहा/रही हूँ। मेरे द्वारा दी गई सभी सूचना सही हैं । गलत पाये जाने पर मेरे द्वारा किए गए लाभ/सहायता का दावा एंव आवेदन का पंजीकरण को रद्द कर दिया जाए, जिसके विरूद्ध मैं किसी प्रकार का दावा नही करूँगा/करूँगी। साथ ही योजना के अनुदान से हमें वंचित कर दिए जाए ।" ForeColor="#006699" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <script type="text/javascript">

            function PrintElem(elem) {
                Popup($(elem).html());
            }

            function Popup(data) {
                var mywindow = window.open('', 'new div', 'height=700,width=1100');
                mywindow.document.write('<html><head><title>my div</title>');
                /*optional stylesheet*/ //mywindow.document.write('<link rel="stylesheet" href="main.css" type="text/css" />');
                mywindow.document.write('</head><body >');
                mywindow.document.write(data);
                mywindow.document.write('</body></html>');

                mywindow.print();
                mywindow.close();

                return true;
            }

        </script>
        <div class="col-md-12">
            <div class="categoryy-wraper w3-padding-16">
                <div class="row">
                    <div class="col-md-6 w3-center">
                        <a href="rmjsy-membership-form.aspx" class="btn btn-black"><i class="fa fa-long-arrow-left" aria-hidden="true"></i>Back</a>
                    </div>
                    <div class="col-md-6 w3-center">
                        <a onclick="PrintElem('#printabledivt')" class="btn btn-block btn-info"><i class="fa fa-print" aria-hidden="true"></i>&nbsp;Print Your Application For Further Reference</a>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
