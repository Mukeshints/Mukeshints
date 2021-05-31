<%@ Page Title="" Language="C#" MasterPageFile="~/Maindmin/User.Master" AutoEventWireup="true" CodeBehind="view-member.aspx.cs" Inherits="jsdmss.Maindmin.view_member" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    View Member
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <h3 class="page-title">Member List</h3>
        <div class="col-md-12">
            <div class="form-group form-inline row">
                <asp:Panel ID="pnldistrict" runat="server" CssClass="col-md-3 col-sm-3">
                    <span>District</span>
                    <asp:DropDownList ID="ddl_district" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_district_SelectedIndexChanged">
                        <asp:ListItem Selected="True" Value="0">Select</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
                <asp:Panel ID="pnlblock" runat="server" CssClass="col-md-3 col-sm-3">
                    <span>Block</span>
                    <asp:DropDownList ID="ddl_block" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_block_SelectedIndexChanged">
                        <asp:ListItem Selected="True" Value="0">Select</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
                <asp:Panel ID="pnlpanchayat" runat="server" CssClass="col-md-3 col-sm-3">
                    <span>Panchayat</span>
                    <asp:DropDownList ID="ddl_panchayat" CssClass="form-control" runat="server">
                        <asp:ListItem Selected="True" Value="0">Select</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
                <div class="col-md-2 col-sm-2 text-right col-md-offset-2">

                    <asp:Button ID="btn_find" runat="server" Text="Find" CssClass="btn btn-sm btn-dark" OnClick="btn_find_Click" />
                    &nbsp;
                       
                        <asp:Button ID="btn_view_all" runat="server" Text="View All" CssClass="btn btn-sm btn-dark" OnClick="btn_view_all_Click" />
                </div>
                <asp:Label ID="lbl_message" runat="server" ForeColor="Red" Font-Bold="true" Font-Size="Large"></asp:Label>
            </div>

        </div>
    </div>
    <div class="col-md-12 ">
        <div class="table-responsive">
            <asp:GridView ID="grd_data" runat="server" AutoGenerateColumns="False" AllowPaging="True" Font-Bold="False" class="table table-striped table-advance table-hover" Style="margin-top: 0; width: 100%; overflow: scroll" OnPageIndexChanging="grd_data_PageIndexChanging">
                <RowStyle />
                <Columns>
                    <asp:TemplateField HeaderText="Sr No.">
                        <ItemTemplate>
                            <asp:Label ID="lblSRNO" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="State">
                        <ItemTemplate>
                            <asp:Label ID="lbl_State" runat="server" Text='<%#Bind("state") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Didtrict">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Didtrict" runat="server" Text='<%#Bind("District") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Block">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Block" runat="server" Text='<%#Bind("Block") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Panchayat">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Panchayat" runat="server" Text='<%#Bind("Panchayat") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="lbl_name" runat="server" Text='<%#Bind("Applicant_name_eng") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile No.">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Mobile_no" runat="server" Text='<%#Bind("Mobile_1") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Application No.">
                        <ItemTemplate>
                            <asp:Label ID="lbl_application_no" runat="server" Text='<%#Bind("application_number") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Address" runat="server" Text='<%#Bind("Permanant_Address") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnk_view" runat="server" ForeColor="SteelBlue" OnClick="lnk_view_Click">View Details</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnk_delete" runat="server" CssClass="btn btn-sm btn-danger" OnClick="lnk_delete_Click" OnClientClick="return confirm('Are sure want to delete?')">Delete</asp:LinkButton>
                            <asp:Label ID="lbl_id" runat="server" Text='<%#Bind("Id") %>' Visible="False"></asp:Label>
                              <asp:Label ID="lblcoordinater" runat="server" Text='<%#Bind("SubmitedBy") %>'  Visible="False"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="#EFEFEF" Font-Bold="True" ForeColor="#CC0000" />
                <HeaderStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="#333333" Height="40px" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
        </div>
        <br />
        <h2 class="btn btn-block btn-success">
            <asp:LinkButton ID="lnkecporttoexcel" runat="server" OnClick="lnkecporttoexcel_Click">  <i class="fa fa-file-excel-o" aria-hidden="true"></i>&nbsp;Download in Excel</asp:LinkButton>
        </h2>
        <div style="display: none">
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </div>

</asp:Content>
