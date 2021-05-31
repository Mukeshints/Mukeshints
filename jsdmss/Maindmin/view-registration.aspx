<%@ Page Title="" Language="C#" MasterPageFile="~/Maindmin/User.Master" AutoEventWireup="true" CodeBehind="view-registration.aspx.cs" Inherits="jsdmss.Maindmin.view_registration" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    View Registration
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .tolal_div {
            margin: 0px;
            padding: 0px;
            width: 100%;
            height: auto;
            float: left;
        }

        .total_p {
            margin: 0px;
            padding: 0px 0px 0px 16px;
            width: 40%;
            height: auto;
            float: left;
            font-family: 'Poppins', sans-serif;
            color: #d9534f;
            font-size: 19px;
            font-weight: 800;
            line-height: 24px;
            color: #d9534f;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h3 class="page-title">View Registration </h3>
        </div>
    </div>
    <div class="col-md-12">
        <table class="table table-bordered bg-warning">
            <tr>
                <td>Search By
                       
                            <asp:RadioButton ID="radio_block" runat="server" GroupName="a" Text=" BLOCK" AutoPostBack="True" OnCheckedChanged="radio_block_CheckedChanged" />&nbsp;&nbsp;
                                                     <asp:RadioButton ID="radio_panchayat" runat="server" GroupName="a" Text=" PANCHAYAT" AutoPostBack="True" OnCheckedChanged="radio_panchayat_CheckedChanged" />&nbsp;&nbsp;
                                                    <asp:RadioButton ID="radio_district" runat="server" GroupName="a" Text=" DISTRICT OFFICE" AutoPostBack="True" OnCheckedChanged="radio_district_CheckedChanged" />&nbsp;&nbsp;
                        <asp:RadioButton ID="radio_headoffice" runat="server" GroupName="a" Text=" HEAD OFFICE" Checked="true" AutoPostBack="True" OnCheckedChanged="radio_headoffice_CheckedChanged" />&nbsp;&nbsp;
                        <asp:RadioButton ID="radio_all" runat="server" GroupName="a" Text="ALL" Checked="true" AutoPostBack="True" OnCheckedChanged="radio_all_CheckedChanged" />
                    <div class="form-inline">

                        <div class="form-group form-inline row">
                            <asp:Panel ID="pnldistrict" runat="server" Visible="false" CssClass="col-md-3 col-sm-3">
                                <span>District</span>
                                <asp:DropDownList ID="ddl_district" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_district_SelectedIndexChanged">
                                    <asp:ListItem Selected="True">Select District</asp:ListItem>
                                </asp:DropDownList>
                            </asp:Panel>
                            <asp:Panel ID="pnlblock" runat="server" Visible="false" CssClass="col-md-3 col-sm-3">
                                <span>Block</span>
                                <asp:DropDownList ID="ddl_block" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_block_SelectedIndexChanged">
                                    <asp:ListItem Selected="True">Select Block</asp:ListItem>
                                </asp:DropDownList>
                            </asp:Panel>
                            <asp:Panel ID="pnlpanchayat" runat="server" Visible="false" CssClass="col-md-3 col-sm-3">
                                <span>Panchayat</span>
                                <asp:DropDownList ID="ddl_panchayat" CssClass="form-control" runat="server">
                                    <asp:ListItem Selected="True">Select Panchayat</asp:ListItem>
                                </asp:DropDownList>
                            </asp:Panel>
                            <div class="col-md-2 col-sm-2 text-right col-md-offset-2">
                                <br />
                                <asp:Button ID="btn_find" runat="server" Text="Find" CssClass="btn btn-sm btn-dark" OnClick="btn_find_Click" Visible="False" />
                            </div>

                        </div>

                    </div>
                </td>
                <td>
                    <h4>OR</h4>
                </td>
                <td>
                    <div class="form-group form-inline">
                        Enter Mobile No.:
                        &nbsp;  &nbsp;
                            <asp:TextBox ID="txt_find_by_mobile" runat="server" CssClass="form-control" Width="120px"></asp:TextBox>
                        &nbsp;<asp:Button ID="btn_find_by_mobile" runat="server" Text="Find" CssClass="btn btn-sm btn-dark" OnClick="btn_find_by_mobile_Click" />
                    </div>
                </td>
            </tr>
        </table>
        <div class="tolal_div">

            <p class="total_p" style="text-align: right;">Total Number of Registration:-</p>
            <p class="total_p">
                <asp:Label ID="lbl_total_num_registration" runat="server" Text="" Font-Bold="true" ForeColor="#990000" Font-Size="Large"></asp:Label>
            </p>

        </div>
        <asp:Label ID="lbl_message" runat="server" Text="" Font-Bold="true" ForeColor="#990000" Font-Size="Large"></asp:Label>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2 class="btn btn-block btn-success">
                <asp:LinkButton ID="lnkecporttoexcel" runat="server" OnClick="lnkecporttoexcel_Click">  <i class="fa fa-file-excel-o" aria-hidden="true"></i>&nbsp;Download in Excel</asp:LinkButton>
            </h2>
            <asp:GridView ID="grd_data_view" runat="server" AutoGenerateColumns="false" BackColor="#ffffff"
                CssClass="table table-bordered pagination-ys" AllowPaging="True" OnPageIndexChanging="grd_data_view_PageIndexChanging" PageSize="15">
                <Columns>

                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate><%#Eval("CandidateName")%></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Application Number">
                        <ItemTemplate><%#Eval("ApplicantId")%></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile">
                        <ItemTemplate><%#Eval("Mobile")%></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Apply For">
                        <ItemTemplate>

                            <asp:Label ID="lbl1" runat="server" Text='<%#Bind("AppliedFor")%>' Font-Bold="true" ForeColor="#0000ff"></asp:Label><br />
                            (<asp:Label ID="lbldistrict" runat="server" Text='<%#Bind("District")%>'></asp:Label>,
                            <asp:Label ID="lblblock" runat="server" Text='<%#Bind("Block")%>'></asp:Label>,
                            <asp:Label ID="lblpanchayat" runat="server" Text='<%#Bind("Panchayat")%>'></asp:Label>,
                            <asp:Label ID="lblstate" runat="server" Text='<%#Bind("State")%>'></asp:Label>)

                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Post">
                        <ItemTemplate><%#Eval("Post_name")%></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address">
                        <ItemTemplate><%#Eval("permanant_address")%></ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Photo">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image")%>' Width="100px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                            <asp:HiddenField ID="hf_ApplicantId" runat="server" Value='<%#Bind("ApplicantId") %>' />
                            <asp:HiddenField ID="hf_id" runat="server" Value='<%#Bind("Id") %>' />
                            <asp:LinkButton ID="lnk_view" runat="server" CssClass="btn btn-sm btn-primary" OnClick="lnk_view_Click">View Details</asp:LinkButton>
                            <br />
                            <br />
                            <asp:LinkButton ID="lnk_delete" runat="server" CssClass="btn btn-sm btn-danger" OnClick="lnk_delete_Click" OnClientClick="return confirm('Are you sure want to delete ?')">
                            <i class="fa fa-trash"></i> Delete
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <div style="display: none">
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
