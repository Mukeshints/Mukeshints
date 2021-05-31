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
    public partial class view_member : System.Web.UI.Page
    {
        #region pageevent
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    My.bind_ddl_with_para(ddl_district, "Select Disctrict,District_Id From DistrictMaster where State='1'");
                    string query = "Select application_number,state,District,Block,Panchayat,Applicant_name_eng,Permanant_Address,Mobile_1,Id,SubmitedBy from RMJSY_Membership_Table";
                    fetch_data(query);
                }
                catch (Exception exc) { }
            }
        }
        private void fetch_data(string query)
        {
            DataTable dt = My.FillData(query);
            if (dt.Rows.Count == 0)
            {
                grd_data.DataSource = null;
                grd_data.DataBind();
                lbl_message.Text = "Data unavailable";
            }
            else
            {
                lbl_message.Text = "";
                grd_data.DataSource = dt;
                grd_data.DataBind();
            }
        }
        protected void btn_view_all_Click(object sender, EventArgs e)
        {
            try
            {
               string query = "Select application_number,state,District,Block,Panchayat,Applicant_name_eng,Permanant_Address,Mobile_1,Id,SubmitedBy from RMJSY_Membership_Table";
                fetch_data(query);
            }
            catch (Exception exc) { }

        }
        protected void grd_data_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                string query = "Select application_number,state,District,Block,Panchayat,Applicant_name_eng,Permanant_Address,Mobile_1,Id,SubmitedBy from RMJSY_Membership_Table";
                grd_data.PageIndex = e.NewPageIndex;
                grd_data.DataBind();
                if (ddl_district.SelectedValue != "0")
                {
                    query = "Select application_number,state,District,Block,Panchayat,Applicant_name_eng,Permanant_Address,Mobile_1,Id,SubmitedBy from RMJSY_Membership_Table where District='" + ddl_district.SelectedItem.Text + "'";

                }
                else if (ddl_block.SelectedValue != "0")
                {
                    query = "Select application_number,state,District,Block,Panchayat,Applicant_name_eng,Permanant_Address,Mobile_1,Id,SubmitedBy from RMJSY_Membership_Table where Block='" + ddl_block.SelectedItem.Text + "'";

                }
                else if (ddl_panchayat.SelectedValue != "0")
                {
                    query = "Select application_number,state,District,Block,Panchayat,Applicant_name_eng,Permanant_Address,Mobile_1,Id,SubmitedBy from RMJSY_Membership_Table where Panchayat='" + ddl_panchayat.SelectedItem.Text + "'";

                }
                fetch_data(query);
            }
            catch (Exception exc) { }
        }

        protected void lnk_view_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton lnk = (LinkButton)sender;
                Label lblapplicationno = (Label)lnk.FindControl("lbl_application_no");
                Label lblcoordinater = (Label)lnk.FindControl("lblcoordinater");
                Session["registrationid"] = lblapplicationno.Text;
                fetch_coordinator(lblcoordinater.Text);
                Response.Redirect("member-details.aspx");
            }
            catch (Exception exc) { }
        }
        private void fetch_coordinator(string userid)
        {
            SqlConnection con = new SqlConnection(My.conn);
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select Name,Mobile_no from User_master where User_id='" + userid + "'", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DataTable dt = ds.Tables[0];
            if (dt.Rows.Count != 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    Session["coordinator"] = dr[0].ToString();
                    Session["mobile"] = dr[1].ToString();
                }
            }
            con.Close();
        }
        protected void lnk_delete_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton lnk = (LinkButton)sender;
                Label lblid = (Label)lnk.FindControl("lbl_id");
                My.executeQuery("Delete from RMJSY_Membership_Table where Id='" + lblid.Text + "'");
                lbl_message.Text = "Deleted Successfully";
                fetch_data("Select application_number,state,District,Block,Panchayat,Applicant_name_eng,Permanant_Address,Mobile_1,Id from RMJSY_Membership_Table");
            }
            catch (Exception exc) {
                lbl_message.Text = "Please try again.";
            
            }
        }
        #endregion
        #region search

        protected void ddl_district_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string query = "Select Block,Block_Id From BlockMaster where District='" + ddl_district.SelectedValue + "'";
                My.bind_ddl_with_para(ddl_block, query);
                fetch_data("Select application_number,state,District,Block,Panchayat,Applicant_name_eng,Permanant_Address,Mobile_1,Id from RMJSY_Membership_Table where District='" + ddl_district.SelectedItem.Text + "'");
              }
            catch (Exception exc) { }

        }
        protected void ddl_block_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string query = "Select Panchayat,Panchayat_Id From PanchayatMaster where Block='" + ddl_block.SelectedValue + "'";
                My.bind_ddl_with_para(ddl_panchayat, query);
                fetch_data("Select application_number,state,District,Block,Panchayat,Applicant_name_eng,Permanant_Address,Mobile_1,Id from RMJSY_Membership_Table where Block='" + ddl_block.SelectedItem.Text + "'");
            }
            catch (Exception exc) { }
        }
        protected void btn_find_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "";
                if (ddl_district.Text == "0")
                {
                    lbl_message.Text = "Please select district.";
                }
                else
                {
                    query = "Select application_number,state,District,Block,Panchayat,Applicant_name_eng,Permanant_Address,Mobile_1,Id from RMJSY_Membership_Table where District='" + ddl_district.SelectedItem.Text + "'";
                }
                if (ddl_block.Text == "0")
                {
                    lbl_message.Text = "Please select block.";
                }
                else
                {
                    query = "Select application_number,state,District,Block,Panchayat,Applicant_name_eng,Permanant_Address,Mobile_1,Id from RMJSY_Membership_Table where  Block='" + ddl_block.SelectedItem.Text + "' and District='" + ddl_district.SelectedItem.Text + "'";
                }
                if (ddl_panchayat.Text == "0")
                {
                    lbl_message.Text = "Please select Panchayat.";
                }
                else
                {
                    lbl_message.Text = "";
                    query = "Select application_number,state,District,Block,Panchayat,Applicant_name_eng,Permanant_Address,Mobile_1,Id from RMJSY_Membership_Table where Panchayat='" + ddl_panchayat.SelectedItem.Text + "' and Block='" + ddl_block.SelectedItem.Text + "' and District='" + ddl_district.SelectedItem.Text + "'";
                }
                fetch_data(query);
            }
            catch (Exception exc) { }

        }
        #endregion      
        #region export to excel
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
            string query = "Select application_number,state,District,Block,Panchayat,Applicant_name_eng as 'Name',Father_Husband_name_eng as 'Father''s/Husband''s Name',Mother_name_eng as 'Mother''s Name' ,Age,Category,Caste,Religion,Disability,Disability_type as 'Type Of Disability',Nationality,Permanant_Address as 'Address',Adhar,Mobile_1 as 'Mobile',Mobile_2 as 'Alternate Number',Email,Bank_account_holder as 'Bank Account Holder',Bank_account_number as 'Account Number',Bank_name as 'Bank Name',IFSC_code as 'IFSC Code',Branch,Type_of_home as 'Type Of Home',Members_in_family as 'Member in Family',Number_of_rooms as 'Number Of Rooms in Home',Toilet,Home_number as 'House Number',East,West,North,South,Government_given_house,Government_Job_in_family,Rasan_card_number,Votar_id,Educational_qualification,RMJSY_Sahayata_Yojana_Rashi from RMJSY_Membership_Table";
            if (ddl_block.SelectedItem.Text!= "Select")
            {
                query = "Select application_number,state,District,Block,Panchayat,Applicant_name_eng as 'Name',Father_Husband_name_eng as 'Father''s/Husband''s Name',Mother_name_eng as 'Mother''s Name' ,Age,Category,Caste,Religion,Disability,Disability_type as 'Type Of Disability',Nationality,Permanant_Address as 'Address',Adhar,Mobile_1 as 'Mobile',Mobile_2 as 'Alternate Number',Email,Bank_account_holder as 'Bank Account Holder',Bank_account_number as 'Account Number',Bank_name as 'Bank Name',IFSC_code as 'IFSC Code',Branch,Type_of_home as 'Type Of Home',Members_in_family as 'Member in Family',Number_of_rooms as 'Number Of Rooms in Home',Toilet,Home_number as 'House Number',East,West,North,South,Government_given_house,Government_Job_in_family,Rasan_card_number,Votar_id,Educational_qualification,RMJSY_Sahayata_Yojana_Rashi from RMJSY_Membership_Table where Block='" + ddl_block.SelectedItem.Text + "' and District='" + ddl_district.SelectedItem.Text + "'";

            }

            else if (ddl_district.SelectedItem.Text!= "Select")
            {
                query = "Select application_number,state,District,Block,Panchayat,Applicant_name_eng as 'Name',Father_Husband_name_eng as 'Father''s/Husband''s Name',Mother_name_eng as 'Mother''s Name' ,Age,Category,Caste,Religion,Disability,Disability_type as 'Type Of Disability',Nationality,Permanant_Address as 'Address',Adhar,Mobile_1 as 'Mobile',Mobile_2 as 'Alternate Number',Email,Bank_account_holder as 'Bank Account Holder',Bank_account_number as 'Account Number',Bank_name as 'Bank Name',IFSC_code as 'IFSC Code',Branch,Type_of_home as 'Type Of Home',Members_in_family as 'Member in Family',Number_of_rooms as 'Number Of Rooms in Home',Toilet,Home_number as 'House Number',East,West,North,South,Government_given_house,Government_Job_in_family,Rasan_card_number,Votar_id,Educational_qualification,RMJSY_Sahayata_Yojana_Rashi from RMJSY_Membership_Table where District='" + ddl_district.SelectedItem.Text + "'";

            }
            else if (ddl_panchayat.SelectedItem.Text != "Select")
            {
                query = "Select application_number,state,District,Block,Panchayat,Applicant_name_eng as 'Name',Father_Husband_name_eng as 'Father''s/Husband''s Name',Mother_name_eng as 'Mother''s Name' ,Age,Category,Caste,Religion,Disability,Disability_type as 'Type Of Disability',Nationality,Permanant_Address as 'Address',Adhar,Mobile_1 as 'Mobile',Mobile_2 as 'Alternate Number',Email,Bank_account_holder as 'Bank Account Holder',Bank_account_number as 'Account Number',Bank_name as 'Bank Name',IFSC_code as 'IFSC Code',Branch,Type_of_home as 'Type Of Home',Members_in_family as 'Member in Family',Number_of_rooms as 'Number Of Rooms in Home',Toilet,Home_number as 'House Number',East,West,North,South,Government_given_house,Government_Job_in_family,Rasan_card_number,Votar_id,Educational_qualification,RMJSY_Sahayata_Yojana_Rashi from RMJSY_Membership_Table where Panchayat='" + ddl_panchayat.SelectedItem.Text + "' and Block='" + ddl_block.SelectedItem.Text + "' and District='" + ddl_district.SelectedItem.Text + "'";
            }
            DataTable dtResult = My.FillData(query);
            GridView1.DataSource = dtResult;
            GridView1.DataBind();
            Response.Clear();
            Response.Buffer = true;
            string attachment = "attachment; filename=" + excelname;
            Response.AddHeader("content-disposition", attachment);
            Response.ContentEncoding = System.Text.Encoding.Unicode;
            Response.BinaryWrite(System.Text.Encoding.Unicode.GetPreamble());
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
        #endregion

     

      
    }
}