using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jsdmss.Maindmin
{
    public partial class view_registration : System.Web.UI.Page
    {
        // string scrpt;
        #region pageload
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                string query = "Select Disctrict,District_Id From DistrictMaster where State='1'";
                My.bind_ddl_with_para(ddl_district, query);
                fetch_data("Select * from ApplicantBasicDetails order by Id desc");
                find_toal_reg();

            }
        }

        private void find_toal_reg()
        {
            string qry = @" SELECT COUNT(*) as ApplicantId FROM ApplicantBasicDetails ";
            DataTable dt = My.FillData(qry);
            lbl_total_num_registration.Text = dt.Rows[0][0].ToString();
        }

       

        private void fetch_data(string query)
        {

            DataTable dt = My.FillData(query);
            if (dt.Rows.Count == 0)
            {
                grd_data_view.DataSource = null;
                grd_data_view.DataBind();
                //GridView1.DataSource = null;
                //GridView1.DataBind();                
            }
            else
            {

                grd_data_view.DataSource = dt;
                grd_data_view.DataBind();
                //GridView1.DataSource = dt;
                //GridView1.DataBind();
            }


        }
        #endregion
        #region searchging
        protected void radio_block_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                My.bind_gridview(grd_data_view, "Select * from ApplicantBasicDetails where AppliedFor='BLOCK'");
                pnlblock.Visible = true;
                pnldistrict.Visible = true;
                pnlpanchayat.Visible = false;
                btn_find.Visible = true;
                string qry = @" SELECT COUNT(*) as ApplicantId FROM ApplicantBasicDetails where AppliedFor='BLOCK' ";
                DataTable dt = My.FillData(qry);
                lbl_total_num_registration.Text = dt.Rows[0][0].ToString();
                
            }
            catch (Exception exc)
            { My.submitException(exc, "view-registration.aspx"); }

        }
        protected void radio_panchayat_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                My.bind_gridview(grd_data_view, "Select * from ApplicantBasicDetails where AppliedFor='PANCHAYAT'");
                pnlblock.Visible = true;
                pnldistrict.Visible = true;
                pnlpanchayat.Visible = true;
                btn_find.Visible = true;
                string qry = @" SELECT COUNT(*) as ApplicantId FROM ApplicantBasicDetails where AppliedFor='PANCHAYAT' ";
                DataTable dt = My.FillData(qry);
                lbl_total_num_registration.Text = dt.Rows[0][0].ToString();
            }
            catch (Exception exc)
            { My.submitException(exc, "view-registration.aspx"); }

        }
        protected void radio_district_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                My.bind_gridview(grd_data_view, "Select * from ApplicantBasicDetails where AppliedFor='DISTRICT OFFICE'");
                pnlblock.Visible = false;
                pnldistrict.Visible = true;
                pnlpanchayat.Visible = false;
                btn_find.Visible = true;
                string qry = @" SELECT COUNT(*) as ApplicantId FROM ApplicantBasicDetails where AppliedFor='DISTRICT OFFICE' ";
                DataTable dt = My.FillData(qry);
                lbl_total_num_registration.Text = dt.Rows[0][0].ToString();
            }
            catch (Exception exc)
            { My.submitException(exc, "view-registration.aspx"); }
        }
        protected void radio_headoffice_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                fetch_data("Select * from ApplicantBasicDetails where AppliedFor='HEAD OFFICE'");               
                pnlblock.Visible = false;
                pnldistrict.Visible = false;
                pnlpanchayat.Visible = false;
                btn_find.Visible = false;
                string qry = @" SELECT COUNT(*) as ApplicantId FROM ApplicantBasicDetails where AppliedFor='HEAD OFFICE' ";
                DataTable dt = My.FillData(qry);
                lbl_total_num_registration.Text = dt.Rows[0][0].ToString();
            }
            catch (Exception exc)
            { My.submitException(exc, "view-registration.aspx"); }
        }
        protected void radio_all_CheckedChanged(object sender, EventArgs e)
        {
            fetch_data("Select * from ApplicantBasicDetails order by Id desc");
            pnlblock.Visible = false;
            pnldistrict.Visible = false;
            pnlpanchayat.Visible = false;
            btn_find.Visible = false;
            string qry = @" SELECT COUNT(*) as ApplicantId FROM ApplicantBasicDetails";
            DataTable dt = My.FillData(qry);
            lbl_total_num_registration.Text = dt.Rows[0][0].ToString();
        }
        protected void btn_find_Click(object sender, EventArgs e)
        {
            if (radio_block.Checked)
            {
                if (ddl_district.SelectedItem.Text == "Select" && ddl_block.SelectedItem.Text == "Select")
                {
                    lbl_message.Text = "Please Select District and Block first.";
                   
                }
                else
                {
                    fetch_data("Select * from ApplicantBasicDetails where Block='" + ddl_block.SelectedItem.Text + "'");
                  
                }
            }
            if (radio_panchayat.Checked)
            {
                if (ddl_district.SelectedItem.Text == "Select" && ddl_block.SelectedItem.Text == "Select" && ddl_panchayat.SelectedItem.Text == "Select")
                {
                    lbl_message.Text = "Please Select District, Block and Panchayat first.";
                   
                }
                else
                {
                    fetch_data("Select * from ApplicantBasicDetails where Panchayat='" + ddl_panchayat.SelectedItem.Text + "'");
                   
                }
            }
            if (radio_district.Checked)
            {
                if (ddl_district.Text == "Select")
                {
                    lbl_message.Text = "Please Select District";
                   
                }
                else
                {
                    fetch_data("Select * from ApplicantBasicDetails where District='" + ddl_district.SelectedItem.Text + "'");
                  
                }
            }

        }

        protected void btn_find_by_mobile_Click(object sender, EventArgs e)
        {
            try
            {
                fetch_data("Select * from ApplicantBasicDetails where  Mobile='" + txt_find_by_mobile.Text + "'");
               
            }
            catch (Exception exc)
            { My.submitException(exc, "view-registration.aspx"); }

        }
        #endregion
        #region pageevent

        protected void ddl_district_SelectedIndexChanged(object sender, EventArgs e)
        {
            string query = "Select Block,Block_Id From BlockMaster where District='" + ddl_district.SelectedValue + "'";
            My.bind_ddl_with_para(ddl_block, query);
        }
        protected void ddl_block_SelectedIndexChanged(object sender, EventArgs e)
        {
            string query = "Select Panchayat,Panchayat_Id From PanchayatMaster where Block='" + ddl_block.SelectedValue + "'";
            My.bind_ddl_with_para(ddl_panchayat, query);
        }

        protected void grd_data_view_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (radio_all.Checked)
            {
                fetch_data("Select * from ApplicantBasicDetails");
            }
            else if (radio_block.Checked)
            {
                if (ddl_block.SelectedItem.Text != "Select")
                {
                    fetch_data("Select * from ApplicantBasicDetails where Block='" + ddl_block.SelectedItem.Text + "'");
                }
            }
            else if (radio_panchayat.Checked)
            {
                if (ddl_panchayat.SelectedItem.Text != "Select")
                {
                    fetch_data("Select * from ApplicantBasicDetails where Panchayat='" + ddl_panchayat.SelectedItem.Text + "'");

                }

            }
            else if (radio_district.Checked)
            {
                if (ddl_district.SelectedItem.Text != "Select")
                {
                    fetch_data("Select * from ApplicantBasicDetails where District='" + ddl_district.SelectedItem.Text + "'");

                }

            }
            else if (radio_headoffice.Checked)
            {

                fetch_data("Select * from ApplicantBasicDetails where AppliedFor='HEAD OFFICE'");

                

            }
            grd_data_view.PageIndex = e.NewPageIndex;
            grd_data_view.DataBind();
           

        }

        protected void lnk_view_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton lnk = (LinkButton)sender;
                HiddenField hf = (HiddenField)lnk.FindControl("hf_ApplicantId");
                Response.Redirect("view-registration-details.aspx?Applicationno=" + hf.Value);
            }
            catch (Exception exc)
            { My.submitException(exc, "view-registration.aspx"); }
        }

        // export to excel code
        protected void lnkecporttoexcel_Click(object sender, EventArgs e)
        {
            try
            {
                 lbl_message.Text = "";
                 export_data_to_excel();                
            }
            catch (Exception exc) { My.submitException(exc, "view-registration.aspx"); }

        }
        private void export_data_to_excel()
        {
            DateTime dtm = DateTime.UtcNow.AddHours(5).AddMinutes(30);
            string date = dtm.ToString("ddMMyyyyhhmmss");
            string excelname = "jsdmss" + date + ".xls";
            string query=@"Select ApplicantId,CandidateName,FatherName,AppliedFor,Post_name,Mobile,permanant_address,Block,District,State,Panchayat,MotherName,DateOfBirth,
                           Age,Category,Religion,Nationality,MaritalStatus,Gender,Disability,DisabilityType,correspond_address,having_android_mobile,having_laptop,
                           computer_knowledge,Experience from ApplicantBasicDetails";
           if (radio_district.Checked)
            {
                query = @"Select ApplicantId,CandidateName,FatherName,AppliedFor,Post_name,Mobile,permanant_address,Block,District,State,Panchayat,MotherName,DateOfBirth,
                           Age,Category,Religion,Nationality,MaritalStatus,Gender,Disability,DisabilityType,correspond_address,having_android_mobile,having_laptop,
                           computer_knowledge,Experience from ApplicantBasicDetails where District='" + ddl_district.SelectedItem.Text + "'";
            }
            else if (radio_block.Checked)
            {
                query = @"Select ApplicantId,CandidateName,FatherName,AppliedFor,Post_name,Mobile,permanant_address,Block,District,State,Panchayat,MotherName,DateOfBirth,
                           Age,Category,Religion,Nationality,MaritalStatus,Gender,Disability,DisabilityType,correspond_address,having_android_mobile,having_laptop,
                           computer_knowledge,Experience from ApplicantBasicDetails where Block='" + ddl_block.SelectedItem.Text + "'";
            }
            else if (radio_panchayat.Checked)
            {
                query = @"Select ApplicantId,CandidateName,FatherName,AppliedFor,Post_name,Mobile,permanant_address,Block,District,State,Panchayat,MotherName,DateOfBirth,
                           Age,Category,Religion,Nationality,MaritalStatus,Gender,Disability,DisabilityType,correspond_address,having_android_mobile,having_laptop,
                           computer_knowledge,Experience from ApplicantBasicDetails where Panchayat='" + ddl_panchayat.SelectedItem.Text + "'";
            }
           else if (radio_headoffice.Checked)
           {
               query = @"Select ApplicantId,CandidateName,FatherName,AppliedFor,Post_name,Mobile,permanant_address,Block,District,State,Panchayat,MotherName,DateOfBirth,
                           Age,Category,Religion,Nationality,MaritalStatus,Gender,Disability,DisabilityType,correspond_address,having_android_mobile,having_laptop,
                           computer_knowledge,Experience from ApplicantBasicDetails where AppliedFor='HEAD OFFICE'";
           }
            DataTable dtResult = My.FillData(query);
            GridView1.DataSource = dtResult;
            GridView1.DataBind();
            Response.Clear();
            Response.Buffer = true;
            string attachment = "attachment; filename=" + excelname;
            Response.AddHeader("content-disposition", attachment);
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using (StringWriter sw = new StringWriter())
            {
                HtmlTextWriter hw = new HtmlTextWriter(sw);
                GridView1.RenderControl(hw);
                Response.Output.Write(sw.ToString());
                Response.Flush();
                Response.End();
            }
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        // delete user data
        protected void lnk_delete_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton lnk = (LinkButton)sender;
                HiddenField hf = (HiddenField)lnk.FindControl("hf_ApplicantId");
                My.executeQuery("Delete from ApplicantBasicDetails where ApplicantId='" + hf.Value + "'");
                My.executeQuery("Delete from ApplicantAcademicDetails where applicant_id='" + hf.Value + "'");
                My.bind_gridview(grd_data_view, "Select * from ApplicantBasicDetails");
               
                lbl_message.Text = "Data deleted successfully.";
            }
            catch (Exception exc)
            { My.submitException(exc, "view-registration.aspx"); }
        }

        #endregion


        #region unusedcode
        //private void check_for_state_district_block()
        //{
        //    if (grd_data_view.Rows.Count != 0)
        //    {
        //        for (int i = 0; i < grd_data_view.Rows.Count; i++)
        //        {
        //            Label lblapplyfor = (Label)grd_data_view.Rows[i].FindControl("lbl1");
        //            Label lbldistrict = (Label)grd_data_view.Rows[i].FindControl("lbldistrict");
        //            Label lblblock = (Label)grd_data_view.Rows[i].FindControl("lblblock");
        //            Label lblpanchayat = (Label)grd_data_view.Rows[i].FindControl("lblpanchayat");
        //            if (lblapplyfor.Text == "HEAD OFFICE")
        //            {
        //                lbldistrict.Visible = false;
        //                lblblock.Visible = false;
        //                lblpanchayat.Visible = false;
        //            }
        //            else if (lblapplyfor.Text == "DISTRICT OFFICE")
        //            {
        //                lbldistrict.Visible = true;
        //                lblblock.Visible = false;
        //                lblpanchayat.Visible = false;
        //            }
        //            else if (lblapplyfor.Text == "BLOCK")
        //            {
        //                lbldistrict.Visible = true;

        //                lblblock.Visible = true;

        //                lblpanchayat.Visible = false;
        //            }
        //            else if (lblapplyfor.Text == "PANCHAYAT")
        //            {
        //                lbldistrict.Visible = true;
        //                lblblock.Visible = true;
        //                lblpanchayat.Visible = true;


        //            }
        //        }
        //    }
        //}
        #endregion
    }
}