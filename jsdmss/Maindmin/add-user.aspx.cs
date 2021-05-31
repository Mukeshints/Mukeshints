using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jsdmss.Maindmin
{
    public partial class add_user : System.Web.UI.Page
    {
        #region Page Load
        SqlConnection con = new SqlConnection(My.conn);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    My.bind_ddl_with_para(ddl_state, "SELECT Statename,StateId FROM StateMaster");

                }
                catch (Exception exc) { My.submitException(exc, "Add_panchayat_coordinator.aspx"); }
            }
        }
        string query;

        protected void ddl_state_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                My.bind_ddl_with_para(ddl_district, "Select Disctrict,District_Id From DistrictMaster where State='" + ddl_state.SelectedValue + "'");
                ddl_state.Focus();
            }
            catch (Exception exc) { My.submitException(exc, "Add_panchayat_coordinator.aspx"); }
        }

        protected void ddl_district_SelectedIndexChanged(object sender, EventArgs e)
        {
            My.bind_ddl_with_para(ddl_block, "Select Block,Block_Id From BlockMaster where District='" + ddl_district.SelectedValue + "'");
            ddl_district.Focus();
        }

        protected void ddl_block_SelectedIndexChanged(object sender, EventArgs e)
        {
            My.bind_ddl_with_para(ddl_panchayat, "Select Panchayat,Panchayat_Id From PanchayatMaster where Block='" + ddl_block.SelectedValue + "'");
            ddl_block.Focus();
        }
        #endregion
        #region bTN click
        string scrpt;
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            if (check_userid("select * from User_master where User_id='" + txt_user_id.Text + "' "))
            {
                lbl_message2.Text = "Duplicate User ID. Please choose another.";
                scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);

            }
            else if (check_userid("select * from User_master where Mobile_no='" + txt_mobile_no.Text + "'"))
            {
                lbl_message2.Text = "Duplicate Mobile Number. Please choose another.";
                scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
            }
            else
            {
                save_user();
            }
        }

        private void save_user()
        {
            SqlConnection con = new SqlConnection(My.conn);
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select * from User_master", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DataTable dt = ds.Tables[0];
            DataRow dr = dt.NewRow();
            dr["State"] = ddl_state.SelectedItem.Text;
            dr["Didtrict"] = ddl_district.SelectedItem.Text;
            dr["Block"] = ddl_block.SelectedItem.Text;
            dr["Panchayat"] = ddl_panchayat.SelectedItem.Text;
            dr["Name"] = txt_candidate_name.Text;
            dr["Mobile_no"] = txt_mobile_no.Text;
            dr["EmailId"] = txt_emailID.Text;
            dr["Address"] = txt_address.Text;
            dr["User_id"] = txt_user_id.Text;
            dr["Password"] = txt_password.Text;
            dr["user_type"] = ddl_post_type.SelectedItem.Text;
            dr["Idate"] = DateTime.UtcNow.AddHours(5).AddMinutes(30).ToString("yyyyMMdd");
            dr["Date"] = DateTime.UtcNow.AddHours(5).AddMinutes(30).ToString("dd/MM/yyyy");
            dr["status"] = "ACTIVE";
            dt.Rows.Add(dr);
            SqlCommandBuilder cb = new SqlCommandBuilder(ad);
            ad.Update(dt);
            con.Close();
            txt_candidate_name.Text = "";
            txt_mobile_no.Text = "";
            txt_emailID.Text = "";
            txt_address.Text = "";
            txt_user_id.Text = "";
            txt_password.Text = "";
            lbl_message2.Text = "Panchayat Coordinator added successfully.";
            scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
        }

        private bool check_userid(string query)
        {
            SqlConnection con = new SqlConnection(My.conn);
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DataTable dt = ds.Tables[0];
            if (dt.Rows.Count == 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        #endregion



        protected void ddl_post_type_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_post_type.SelectedValue == "1")
            {
                ddl_panchayat.Enabled = true;
            }
            else if (ddl_post_type.SelectedValue == "2")
            {
                ddl_panchayat.Enabled = false;
            }
        }

    }
}