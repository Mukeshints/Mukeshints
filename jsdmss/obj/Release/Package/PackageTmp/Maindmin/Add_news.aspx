<%@ Page Title="" Language="C#" MasterPageFile="~/Maindmin/User.Master" AutoEventWireup="true" CodeBehind="Add_news.aspx.cs" Inherits="jsdmss.Maindmin.Add_news" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Add News
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-group {
            margin-bottom: 8px;
        }

        .form-control {
            width: 100% !important;
        }

        .main_divtop {
            width: 100%;
            height: auto;
            margin: 0px;
            padding: 40px 0px 0px 0px;
            float: left;
        }

        .btn {
            font-size: 20px;
            background-color: #0065a4;
            color: #fff;
            border: 1px solid #083754;
        }

            .btn:hover {
                background-color: #78a22f;
                color: #fff;
            }

        .coord-p {
            font-size: 18px;
            color: #000;
            padding: 0px;
            margin: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
    <div class="main_divtop">
       
        <div class="row">
            <div class="col-md-12">
                <h3 class="page-title">Add News </h3>
            </div>
        </div>

        <div class="col-md-4">
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group form-inline">
                        <p class="coord-p">Date</p>
                        <asp:TextBox ID="txt_date" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group form-inline">
                        <p class="coord-p">Headline</p>
                        <asp:TextBox ID="txt_headline" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group form-inline">
                        <p class="coord-p">News Description</p>
                        <asp:TextBox ID="txt_news_desc" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-12">
                    <asp:Panel ID="pnl_btn_new_add" runat="server">
                        <div class="form-btn-sec">
                            <asp:Button ID="btn_add" runat="server" Text="Submit" ValidationGroup="D" class="form-btn" OnClick="btn_add_Click" />
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="pnl_btn_edit" runat="server" Visible="false">
                        <div class="form-btn-sec">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 ">
                                    <asp:Button ID="btn_update" runat="server" Text="Update" ValidationGroup="D" class="form-btn" OnClick="btn_update_Click" />
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 ">
                                    <asp:Button ID="btn_cencel" runat="server" Text="Cencel" class="form-btn" OnClick="btn_cencel_Click" />
                                </div>
                            </div>
                        </div>
                    </asp:Panel>
                </div>
            </div>
            <div class="col-md-12">
                <asp:Label ID="lblmessage" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>
        </div>
        <div class="col-md-8">
            <asp:Panel ID="pnl_grid" runat="server">
                <div class="col-lg-8 colmd-8 col-sm-12 col-xs-12">
                    <div class="content-wraper">
                        <h2 class="title">News List</h2>
                        <div class="grid-wraper">
                            <div class="table-responsive" style="overflow: auto">
                                <table class="table table-striped table-advance table-hover">
                                    <tr>
                                        <td>
                                            <asp:GridView ID="grd_news_list" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="true" OnPageIndexChanging="grd_news_list_PageIndexChanging" AllowPaging="True" Font-Bold="False" class="table table-striped table-advance table-hover" Style="margin-top: 0; width: 100%; overflow: scroll" OnSelectedIndexChanged="grd_news_list_SelectedIndexChanged">
                                                <RowStyle />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Sr No.">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblSRNO" runat="server" Text="<%#Container.DataItemIndex+1 %>"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Date">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_date" runat="server" Text='<%#Bind("Date") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Headline">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_headline" runat="server" Text='<%#Bind("Headline") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="News Description">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_description" runat="server" Text='<%#Bind("Description") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="id" Visible="False">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_id" runat="server" Text='<%#Bind("Id") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="link_delete" runat="server" OnClick="link_delete_Click" OnClientClick='return confirm("Are you sure want to delete ?")' CausesValidation="False">Delete</asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <FooterStyle BackColor="#CCCC99" />
                                                <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <SelectedRowStyle BackColor="#EFEFEF" Font-Bold="True" ForeColor="#CC0000" />
                                                <HeaderStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="#333333" Height="40px" />
                                                <AlternatingRowStyle BackColor="White" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </div>
    
    <script>
        $(function () {
            $('#<%=txt_date.ClientID %>').datepicker(
             {
                 dateFormat: "dd/mm/yy"
             });
        });
    </script>
    <link href="calender/jqueryUI.css" rel="stylesheet" />
    <script src="calender/jquery-ui.js"></script>
</asp:Content>
