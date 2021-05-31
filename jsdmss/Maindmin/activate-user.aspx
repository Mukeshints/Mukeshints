<%@ Page Title="" Language="C#" MasterPageFile="~/Maindmin/User.Master" AutoEventWireup="true" CodeBehind="activate-user.aspx.cs" Inherits="jsdmss.Maindmin.activate_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Deactivate User
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h3 class="page-title">Activate User</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12" style="margin-bottom:10px;">
            <div class="form-group form-inline">

                <label>Enter User Mobile Numer :&nbsp;</label>

                <asp:TextBox ID="txt_mobile" runat="server" CssClass="form-control" Style="margin: 0px; width: 200px; height: 45px"></asp:TextBox>&nbsp;
                        <asp:Button ID="btnfind" runat="server" Text="FIND" CssClass="btn btn-info" OnClick="btnfind_Click" BackColor="#3366cc" />


            </div>
            <asp:Label ID="lbl_message2" runat="server" Text="" ForeColor="Red"></asp:Label>
        </div>

    </div>
    <div class="col-md-12">
        <div class="table-responsive">
            <asp:GridView ID="grd_panchyat_cood_list" runat="server" AutoGenerateColumns="False" Font-Size="Small" OnPageIndexChanging="grd_panchyat_cood_list_PageIndexChanging" AllowPaging="True" Font-Bold="False" CssClass="table table-bordered">
                <RowStyle />
                <Columns>
                    <asp:TemplateField HeaderText="Sr No.">
                        <ItemTemplate>
                            <asp:Label ID="lblSRNO" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="State">
                        <ItemTemplate>
                            <asp:Label ID="lbl_State" runat="server" Text='<%#Bind("State") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Didtrict">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Didtrict" runat="server" Text='<%#Bind("Didtrict") %>'></asp:Label>
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
                            <asp:Label ID="lbl_name" runat="server" Text='<%#Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile No.">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Mobile_no" runat="server" Text='<%#Bind("Mobile_no") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email Id">
                        <ItemTemplate>
                            <asp:Label ID="lbl_EmailId" runat="server" Text='<%#Bind("EmailId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Address" runat="server" Text='<%#Bind("Address") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="User Id">
                        <ItemTemplate>
                            <asp:Label ID="lbl_User_id" runat="server" Text='<%#Bind("User_id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Password">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Password" runat="server" Text='<%#Bind("Password") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="id" Visible="False">
                        <ItemTemplate>
                            <asp:Label ID="lbl_id" runat="server" Text='<%#Bind("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnk_deactivate" runat="server" OnClientClick='return confirm("Are you sure want to Activate User ?")' CausesValidation="False" ForeColor="Green" Font-Bold="True" Font-Underline="True" OnClick="lnk_deactivate_Click">Activate</asp:LinkButton>

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
    </div>
</asp:Content>
