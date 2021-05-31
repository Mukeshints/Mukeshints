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
    public partial class Add_panchayat_coordinator : System.Web.UI.Page
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
                    fetch_gridview();
                }
                catch (Exception exc) { My.submitException(exc, "Add_panchayat_coordinator.aspx"); }
            }
        }
        string query;
        private void fetch_gridview()
        {
            query = "Select * from User_master order by ID asc";
            SqlDataAdapter ad_occupa = new SqlDataAdapter(query, My.conn);
            DataSet ds = new DataSet();
            ad_occupa.Fill(ds, "User_master");
            DataTable dt = ds.Tables[0];
            int rowcount = ds.Tables[0].Rows.Count;
            if (rowcount == 0)
            {

                //lblmessage.Text = "Data doesn't exist";
                scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);

                pnl_grid.Visible = false;
                grd_panchyat_cood_list.DataSource = null;
                grd_panchyat_cood_list.DataBind();

            }
            else
            {

                pnl_grid.Visible = true;
                grd_panchyat_cood_list.DataSource = ds;
                grd_panchyat_cood_list.DataBind();
            }
        }

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
            SqlConnection con = new SqlConnection(My.conn);
            con.Open();
            SqlCommand cmd;
            string strQuery = @"INSERT INTO User_master (State,Didtrict,Block,Panchayat,Name,Mobile_no,EmailId,Address,User_id,Password,user_type,Idate,Date) 
                               values (@State,@Didtrict,@Block,@Panchayat,@Name,@Mobile_no,@EmailId,@Address,@User_id,@Password,@user_type,@Idate,@Date)";
            cmd = new SqlCommand(strQuery);
            cmd.Parameters.AddWithValue("@State", ddl_state.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Didtrict", ddl_district.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Block", ddl_block.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Panchayat", ddl_panchayat.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Name", txt_candidate_name.Text);
            cmd.Parameters.AddWithValue("@Mobile_no", txt_mobile_no.Text);
            cmd.Parameters.AddWithValue("@EmailId", txt_emailID.Text);
            cmd.Parameters.AddWithValue("@Address", txt_address.Text);
            cmd.Parameters.AddWithValue("@User_id", txt_user_id.Text);
            cmd.Parameters.AddWithValue("@Password", txt_password.Text);
            cmd.Parameters.AddWithValue("@user_type", ddl_post_type.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Idate", My.idate());
            cmd.Parameters.AddWithValue("@Date", My.date());
           
            if (My.InsertUpdateData(cmd))
            {
                con.Close();

                txt_candidate_name.Text = "";
                txt_mobile_no.Text = "";
                txt_emailID.Text = "";
                txt_address.Text = "";
                txt_user_id.Text = "";
                txt_password.Text = "";
                fetch_gridview();                
                lbl_message2.Text = "Panchayat Coordinator added successfully.";
                scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
                
            }
        }
        #endregion

        protected void grd_panchyat_cood_list_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grd_panchyat_cood_list.PageIndex = e.NewPageIndex;
            fetch_gridview();
            grd_panchyat_cood_list.DataBind();
        }

        protected void link_delete_Click(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            GridViewRow row = (GridViewRow)lnk.Parent.Parent;
            Label lbl_id = (Label)row.FindControl("lbl_id");
            string id = lbl_id.Text;

            delete_panchayat_coord(id);
            fetch_gridview();
        }

        private void delete_panchayat_coord(string id)
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from User_master where Id='" + id + "'", My.conn);
            DataSet ds = new DataSet();
            ad.Fill(ds, "User_master");
            DataTable dt = ds.Tables[0];

            int rowcount = dt.Rows.Count;
            if (rowcount == 0)
            {
            }
            else
            {
                foreach (DataRow dr in dt.Rows)
                {
                    dr.Delete();
                    break;

                }
                SqlCommandBuilder cb = new SqlCommandBuilder(ad);
                ad.Update(dt);
                pnl_grid.Visible = false;
                lbl_message2.Text = "Deletion process has been completed.";
                scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);

            }
        }

       
    }
}