using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jsdmss.RMJSY
{
    public partial class Career_apply_online : System.Web.UI.Page
    {
        string scrpt;
        SqlConnection con = new SqlConnection(My.conn);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    ddl_district.Enabled = false;
                    ddl_block.Enabled = false;
                    ddl_panchayat.Enabled = false;
                    ddl_block_post.Visible = false;
                    ddl_district_post.Visible = false;
                    ddl_panchayat_post.Visible = false;
                    //clear_form();
                    My.bind_ddl_with_para(ddl_state, "SELECT Statename,StateId FROM StateMaster");
                }
                catch (Exception exc) { My.submitException(exc, "Carrer_apply_online.aspx"); }
            }
        }

        private void clear_form()
        {
            ddl_district.Enabled = false;
            ddl_block.Enabled = false;
            ddl_panchayat.Enabled = false;
            ddl_head_office_post.Visible = true;
            ddl_block_post.Visible = false;
            ddl_district_post.Visible = false;
            ddl_panchayat_post.Visible = false;
            ddl_disability_type.Enabled = false;
            txt_mobile_no.Text = "";
            txt_aadhar_no.Text = "";
            txt_emai_id.Text = "";
            txt_Candidate_Name.Text = "";
            txt_father_name.Text = "";
            txt_mother_name.Text = "";
            txt_dob.Text = "";
            txt_age.Text = "";
            txt_Religion.Text = "";
            txt_nationality.Text = "";
            txt_Correspondence_Address.Text = "";
            txt_permanent_address.Text = "";
            ddl_having_android_mobile.Text = "";
            txt_computer_knowledge.Text = "";
            txt_work_experience.Text = "";
            txt_matric_board_university.Text = "";
            txt_matric_passing_year.Text = "";
            txt_matric_total_marks.Text = "";
            txt_matric_marks_obtained.Text = "";
            txt_matric_percentage.Text = "";
            txt_matric_divison.Text = "";
            txt_inter_board_university.Text = "";
            txt_inter_passing_year.Text = "";
            txt_inter_total_marks.Text = "";
            txt_inter_marks_obtained.Text = "";
            txt_inter_percentage.Text = "";
            txt_inter_divison.Text = "";
            txt_graduation_board_university.Text = "";
            txt_graduation_passing_year.Text = "";
            txt_graduation_total_marks.Text = "";
            txt_graduation_marks_obtained.Text = "";
            txt_graduation_percentage.Text = "";
            txt_graduation_division.Text = "";
            txt_other_board_university.Text = "";
            txt_other_passing_year.Text = "";
            txt_other_total_marks.Text = "";
            txt_other_marks_obtained.Text = "";
            txt_other_percentage.Text = "";
            txt_other_division.Text = "";
            chk_declaration_english.Checked = false;
            chk_declaration_hindi.Checked = false;
            chk_same_address.Checked = false;
            ddl_head_office_post.Text = "Select";
            ddl_district_post.Text = "Select";
            ddl_block_post.Text = "Select";
            ddl_panchayat_post.Text = "Select";
            ddl_district.Text = "Select";
            ddl_block.Text = "Select";
            ddl_panchayat.Text = "Select";
            ddl_gender.Text = "Select";
            My.bind_ddl_with_para(ddl_state, "SELECT Statename,StateId FROM StateMaster");
        }

        #region pageevent
        protected void radio_block_CheckedChanged(object sender, EventArgs e)
        {
            ddl_district.Enabled = true;
            ddl_block.Enabled = true;
            ddl_panchayat.Enabled = false;
            ddl_block_post.Visible = true;
            ddl_district_post.Visible = false;
            ddl_head_office_post.Visible = false;
            ddl_panchayat_post.Visible = false;
        }
        protected void radio_panchayat_CheckedChanged(object sender, EventArgs e)
        {
            ddl_district.Enabled = true;
            ddl_block.Enabled = true;
            ddl_panchayat.Enabled = true;
            ddl_panchayat_post.Visible = true;
            ddl_district_post.Visible = false;
            ddl_head_office_post.Visible = false;
            ddl_block_post.Visible = false;

        }
        protected void radio_headoffice_CheckedChanged(object sender, EventArgs e)
        {
            ddl_head_office_post.Visible = true;

            ddl_district.Enabled = false;
            ddl_block.Enabled = false;
            ddl_panchayat.Enabled = false;
            ddl_block_post.Visible = false;
            ddl_district_post.Visible = false;
            ddl_panchayat_post.Visible = false;
        }
        protected void radio_district_office_CheckedChanged(object sender, EventArgs e)
        {
            ddl_district.Enabled = true;
            ddl_district_post.Visible = true;
            ddl_block.Enabled = false;
            ddl_panchayat.Enabled = false;
            ddl_head_office_post.Visible = false;
            ddl_block_post.Visible = false;
            ddl_panchayat_post.Visible = false;
        }
        #endregion
        protected void ddl_state_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                My.bind_ddl_with_para(ddl_district, "Select Disctrict,District_Id From DistrictMaster where State='" + ddl_state.SelectedValue + "'");
                ddl_state.Focus();
            }
            catch (Exception exc) { My.submitException(exc, "Carrer_apply_online.aspx"); }
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
        protected void ddl_disability_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_disability.Text == "Select")
            {
                lbl_message.Text = "Please Select Disability";
                scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
            }
            else if (ddl_disability.Text == "No")
            {
                ddl_disability_type.Enabled = false;
            }
            else { ddl_disability_type.Enabled = true; }
            ddl_disability.Focus();
        }
        // correspond address and permanent address same
        protected void chk_same_address_CheckedChanged(object sender, EventArgs e)
        {
            txt_permanent_address.Text = txt_Correspondence_Address.Text;
            txt_permanent_address.Focus();
        }
        // submit registration data
        protected void btn_submit_Click(object sender, EventArgs e)
        {

            if (radio_headoffice.Checked)
            {
                if (ddl_head_office_post.Text == "Select" || ddl_head_office_post.Text == "")
                {
                    lbl_message.Text = "Please Select Post ";
                    scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
                }
                else if (ddl_state.SelectedValue == "0" || ddl_state.SelectedValue == "Select")
                {
                    lbl_message.Text = "Please Select State";
                    scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
                }
                else
                {
                    save_data();
                }

            }
            else if (radio_district_office.Checked)
            {
                if (ddl_district_post.Text == "Select" || ddl_district_post.Text == "")
                {
                    lbl_message.Text = "Please Select Post ";
                    scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
                }
                else if (ddl_state.SelectedValue == "0" || ddl_state.SelectedValue == "Select")
                {
                    lbl_message.Text = "Please Select State";
                    scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
                }
                else if (ddl_district.SelectedValue == "0" || ddl_district.SelectedValue == "Select")
                {
                    lbl_message.Text = "Please Select District.";
                    scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);

                }
                else
                {
                    save_data();
                }
            }
            else if (radio_block.Checked)
            {
                if (ddl_block_post.Text == "Select" || ddl_block_post.Text == "")
                {
                    lbl_message.Text = "Please Select Post ";
                    scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
                }
                else if (ddl_state.SelectedValue == "0" || ddl_state.SelectedValue == "Select")
                {
                    lbl_message.Text = "Please Select State";
                    scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
                }
                else if (ddl_district.SelectedValue == "0" || ddl_district.SelectedValue == "Select")
                {
                    lbl_message.Text = "Please Select District.";
                    scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);

                }
                else if (ddl_block.SelectedValue == "0" || ddl_block.SelectedValue == "Select")
                {
                    lbl_message.Text = "Please Select Block.";
                    scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);

                }
                else
                {
                    save_data();
                }
            }
            else if (radio_panchayat.Checked)
            {

                if (ddl_panchayat_post.Text == "Select" || ddl_panchayat_post.Text == "")
                {
                    lbl_message.Text = "Please Select Post ";
                    scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
                }
                else if (ddl_state.SelectedValue == "0" || ddl_state.SelectedValue == "Select")
                {
                    lbl_message.Text = "Please Select State";
                    scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
                }
                else if (ddl_district.SelectedValue == "0" || ddl_district.SelectedValue == "Select")
                {
                    lbl_message.Text = "Please Select District.";
                    scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);

                }
                else if (ddl_block.SelectedValue == "0" || ddl_block.SelectedValue == "Select")
                {
                    lbl_message.Text = "Please Select Block.";
                    scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);

                }
                else if (ddl_panchayat.SelectedValue == "0" || ddl_panchayat.SelectedValue == "Select")
                {
                    lbl_message.Text = "Please Select Panchayat.";
                    scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);

                }
                else
                {
                    save_data();
                }
            }
        }

        private void save_data()
        {
            if (My.check_value("Select Mobile from ApplicantBasicDetails where Mobile='" + txt_mobile_no.Text + "'"))
            {
                lbl_message.Text = "You have already applied for the post. Thank you.";
                scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
            }
            else if (file_photo.HasFile != true && file_signature.HasFile != true)
            {
                lbl_message.Text = "Please Choose Photo and Signature.";
                scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
            }
            else if (file_photo.PostedFile.ContentLength > 102400)
            {
                lbl_message.Text = "Maximum size of Photo should be less than 100 KB.";
                scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);

            }
            else if (file_signature.PostedFile.ContentLength > 102400)
            {
                lbl_message.Text = "Maximum size of Signature should be less than 100 KB.";
                scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
            }
            else if (chk_declaration_english.Checked != true && chk_declaration_hindi.Checked != true)
            {
                lbl_message.Text = "Please check declation.";
                scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
            }
            else
            {
                try
                {
                    //save_data_sp();
                    submit_basic_details();
                }
                catch (Exception exc) { My.submitException(exc, "Carrer_apply_online.aspx"); }
            }


        }

        private void save_data_sp()
        {

            SqlCommand cmd = new SqlCommand("sp_ApplicantBasicDetails_Insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            if (radio_headoffice.Checked)
            {
                cmd.Parameters.AddWithValue("@Post_name", ddl_head_office_post.Text);
                cmd.Parameters.AddWithValue("@AppliedFor", radio_headoffice.Text);
            }
            else if (radio_district_office.Checked)
            {
                cmd.Parameters.AddWithValue("@Post_name", ddl_district_post.Text);
                cmd.Parameters.AddWithValue("@AppliedFor", radio_district_office.Text);
                cmd.Parameters.AddWithValue("@District", ddl_district.SelectedItem.Text);

            }
            else if (radio_block.Checked)
            {
                cmd.Parameters.AddWithValue("@Post_name", ddl_block_post.Text);
                cmd.Parameters.AddWithValue("@AppliedFor", radio_block.Text);
                cmd.Parameters.AddWithValue("@Block", ddl_block.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@District", ddl_district.SelectedItem.Text);

            }
            else if (radio_panchayat.Checked)
            {
                cmd.Parameters.AddWithValue("@Post_name", ddl_block_post.Text);
                cmd.Parameters.AddWithValue("@AppliedFor", radio_block.Text);
                cmd.Parameters.AddWithValue("@Panchayat", ddl_panchayat.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Block", ddl_block.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@District", ddl_district.SelectedItem.Text);
            }
            cmd.Parameters.AddWithValue("@Mobile", txt_mobile_no.Text);
            cmd.Parameters.AddWithValue("@Adhar", txt_aadhar_no.Text);
            cmd.Parameters.AddWithValue("@Email", txt_emai_id.Text);
            cmd.Parameters.AddWithValue("@State", ddl_state.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@CandidateName", txt_Candidate_Name.Text);
            cmd.Parameters.AddWithValue("@FatherName", txt_father_name.Text);
            cmd.Parameters.AddWithValue("@MotherName", txt_mother_name.Text);
            cmd.Parameters.AddWithValue("@DateOfBirth", txt_dob.Text);
            cmd.Parameters.AddWithValue("@Age", txt_age.Text);
            cmd.Parameters.AddWithValue("@Category", ddl_category.Text);
            cmd.Parameters.AddWithValue("@Religion", txt_Religion.Text);
            cmd.Parameters.AddWithValue("@Nationality", txt_nationality.Text);
            cmd.Parameters.AddWithValue("@maritalStatus", ddl_marital_status.Text);
            cmd.Parameters.AddWithValue("@Gender", ddl_gender.Text);
            cmd.Parameters.AddWithValue("@Disability", ddl_disability.Text);
            cmd.Parameters.AddWithValue("@DisabilityType", ddl_disability_type.Text);
            cmd.Parameters.AddWithValue("@correspond_address", txt_Correspondence_Address.Text);
            cmd.Parameters.AddWithValue("@permanant_address", txt_permanent_address.Text);
            cmd.Parameters.AddWithValue("@having_android_mobile", ddl_having_android_mobile.Text);
            cmd.Parameters.AddWithValue("@having_laptop", ddl_having_laptop.Text);
            cmd.Parameters.AddWithValue("@computer_knowledge", txt_computer_knowledge.Text);
            cmd.Parameters.AddWithValue("@Experience", txt_work_experience.Text);
            cmd.Parameters.AddWithValue("@date", My.date());
            cmd.Parameters.AddWithValue("@status", 0);
            cmd.Parameters.AddWithValue("@idate", My.idate());
            con.Open();          
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                submit_academic_details_sp();
            }
            con.Close();
        }


        private void submit_basic_details()
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from ApplicantBasicDetails ", My.conn);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DataTable dt = ds.Tables[0];
            DataRow dr = dt.NewRow();
            if (radio_headoffice.Checked)
            {
                dr["Post_name"] = ddl_head_office_post.Text;
                dr["AppliedFor"] = radio_headoffice.Text;
            }
            else if (radio_district_office.Checked)
            {
                dr["Post_name"] = ddl_district_post.Text;
                dr["AppliedFor"] = radio_district_office.Text;
                dr["District"] = ddl_district.SelectedItem.Text;
            }
            else if (radio_block.Checked)
            {
                dr["Post_name"] = ddl_block_post.Text;
                dr["AppliedFor"] = radio_block.Text;
                dr["Block"] = ddl_block.SelectedItem.Text;
                dr["District"] = ddl_district.SelectedItem.Text;
            }
            else if (radio_panchayat.Checked)
            {
                dr["Post_name"] = ddl_panchayat_post.Text;
                dr["AppliedFor"] = radio_panchayat.Text;
                dr["Panchayat"] = ddl_panchayat.SelectedItem.Text;
                dr["Block"] = ddl_block.SelectedItem.Text;
                dr["District"] = ddl_district.SelectedItem.Text;
            }
            dr["Mobile"] = txt_mobile_no.Text;
            dr["Adhar"] = txt_aadhar_no.Text;
            dr["Email"] = txt_emai_id.Text;
            dr["State"] = ddl_state.SelectedItem.Text;
            dr["CandidateName"] = txt_Candidate_Name.Text;
            dr["FatherName"] = txt_father_name.Text;
            dr["MotherName"] = txt_mother_name.Text;
            dr["DateOfBirth"] = txt_dob.Text;
            dr["Age"] = txt_age.Text;
            dr["Category"] = ddl_category.Text;
            dr["Religion"] = txt_Religion.Text;
            dr["Nationality"] = txt_nationality.Text;
            dr["maritalStatus"] = ddl_marital_status.Text;
            dr["Gender"] = ddl_gender.Text;
            dr["Disability"] = ddl_disability.Text;
            dr["DisabilityType"] = ddl_disability_type.Text;
            dr["correspond_address"] = txt_Correspondence_Address.Text;
            dr["permanant_address"] = txt_permanent_address.Text;
            dr["having_android_mobile"] = ddl_having_android_mobile.Text;
            dr["having_laptop"] = ddl_having_laptop.Text;
            dr["computer_knowledge"] = txt_computer_knowledge.Text;
            dr["Experience"] = txt_work_experience.Text;
            dr["date"] = My.date();
            dr["status"] = 0;
            dr["idate"] = My.idate();
            //generate applicant id 
            hd_applicant_id.Value = My.auto_serial("ApplicantId");
            dr["ApplicantId"] = int.Parse(hd_applicant_id.Value);
            string sign = fetch_signature(file_signature, hd_applicant_id.Value);
            string image = fetch_image(file_photo, hd_applicant_id.Value);

            dr["signature"] = sign;
            dr["image"] = image;
            dt.Rows.Add(dr);
            SqlCommandBuilder cb = new SqlCommandBuilder(ad);
            ad.Update(dt);
            //Submit academic detials
            submit_academic_details();
            Session["applicationid"] = hd_applicant_id.Value;
            Session["name"] = txt_Candidate_Name.Text;
            Response.Redirect("success.aspx#success", false);

            //lbl_message.Text = "Application process completed successfully.";
            //scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
            //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);

        }
        private string fetch_signature(FileUpload Files, string registrstio_no)
        {
            string dbfilePath = "";
            DateTime dt = DateTime.UtcNow.AddHours(5).AddMinutes(30);
            string date = dt.ToString("dd_MM_yyyy");
            string time = dt.ToString("hh_mm_ss");
            String filerename = date + time + registrstio_no;
            Boolean FileOK = false;
            Boolean FileSaved = false;
            int k = 0;
            if (Files.HasFile)
            {
                Session["WorkingImage"] = Files.FileName;
                string FileExtension = Path.GetExtension(Session["WorkingImage"].ToString()).ToLower();
                Session["renamedfile"] = filerename + "jsdms_sign" + FileExtension;
                string[] allowedExtension = { ".png", ".jpeg", ".jpg", };
                for (int i = 0; i < allowedExtension.Length; i++)
                {
                    k++;
                    if (FileExtension == allowedExtension[i])
                    {
                        FileOK = true;
                        lbl_message.Text = "";
                        break;
                    }
                }

            }
            else
            {
                lbl_message.Text = "Please upload file first.";
                scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
            }
            if (FileOK)
            {
                try
                {
                    string path = (Server.MapPath("../album")).ToString();
                    Files.SaveAs(path + "/" + Session["renamedfile"]);
                    FileSaved = true;
                }
                catch (Exception ex)
                {
                    FileSaved = false;
                    lbl_message.Text = "File has not save.";
                    scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
                }
            }
            else
            {

            }
            if (FileSaved)
            {
                //string originalPath = HttpContext.Current.Request.Url.AbsoluteUri.Replace(HttpContext.Current.Request.Url.AbsolutePath, "");
                string fileName = Path.GetFileName(Session["renamedfile"].ToString());
                dbfilePath = @"/album/" + fileName;
            }
            return dbfilePath;
        }
        private string fetch_image(FileUpload Files, string registrstio_no)
        {
            string dbfilePath = "";
            DateTime dt = DateTime.UtcNow.AddHours(5).AddMinutes(30);
            string date = dt.ToString("dd_MM_yyyy");
            string time = dt.ToString("hh_mm_ss");
            String filerename = date + time + registrstio_no;
            Boolean FileOK = false;
            Boolean FileSaved = false;
            int k = 0;
            if (Files.HasFile)
            {
                //if (Files.FileBytes.Length < 100000)
                //{
                Session["WorkingImage"] = Files.FileName;
                string FileExtension = Path.GetExtension(Session["WorkingImage"].ToString()).ToLower();
                Session["renamedfile"] = filerename + "jsdms_image" + FileExtension;
                string[] allowedExtension = { ".png", ".jpeg", ".jpg", };
                for (int i = 0; i < allowedExtension.Length; i++)
                {
                    k++;
                    if (FileExtension == allowedExtension[i])
                    {
                        FileOK = true;
                        lbl_message.Text = "";
                        break;
                    }
                }
                //}
                //else
                //{
                //    lbl_message.Text = "Please Reduce or compress size of image max(100kb)";
                //    scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                //    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
                //}
            }
            else
            {
                lbl_message.Text = "Please upload file first.";
                scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
            }
            if (FileOK)
            {
                try
                {
                    string path = (Server.MapPath("../album")).ToString();
                    Files.SaveAs(path + "/" + Session["renamedfile"]);
                    FileSaved = true;
                }
                catch (Exception ex)
                {
                    FileSaved = false;
                    lbl_message.Text = "File has not save.";
                    scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
                }
            }
            else
            {

            }
            if (FileSaved)
            {
                //string originalPath = HttpContext.Current.Request.Url.AbsoluteUri.Replace(HttpContext.Current.Request.Url.AbsolutePath, "");
                string fileName = Path.GetFileName(Session["renamedfile"].ToString());
                dbfilePath = @"/album/" + fileName;
            }
            return dbfilePath;
        }
        private void submit_academic_details_sp()
        {
            
            SqlCommand cmd = new SqlCommand("sp_ApplicantAcademicDetails_Insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@applicant_id", int.Parse(hd_applicant_id.Value));
            cmd.Parameters.AddWithValue("@exam_passed", "Matriculation");
            cmd.Parameters.AddWithValue("@board_university", txt_matric_board_university.Text);
            cmd.Parameters.AddWithValue("@passing_year", txt_matric_passing_year.Text);
            cmd.Parameters.AddWithValue("@total_marks", txt_matric_total_marks.Text);
            cmd.Parameters.AddWithValue("@obtained_marks", txt_matric_marks_obtained.Text);
            cmd.Parameters.AddWithValue("@percentage", txt_matric_percentage.Text);
            cmd.Parameters.AddWithValue("@division", txt_matric_divison.Text);
            cmd.Parameters.AddWithValue("@date", My.date());
            cmd.Parameters.AddWithValue("@idate", My.idate());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            if (txt_inter_board_university.Text != "" && txt_inter_divison.Text != "" && txt_inter_marks_obtained.Text != "" && txt_inter_passing_year.Text != "" && txt_inter_percentage.Text != "" && txt_inter_total_marks.Text != "")
            {
               
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@applicant_id", int.Parse(hd_applicant_id.Value));
                cmd.Parameters.AddWithValue("@exam_passed", "Intermediate");
                cmd.Parameters.AddWithValue("@board_university", txt_inter_board_university.Text);
                cmd.Parameters.AddWithValue("@passing_year", txt_inter_passing_year.Text);
                cmd.Parameters.AddWithValue("@total_marks", txt_inter_total_marks.Text);
                cmd.Parameters.AddWithValue("@obtained_marks", txt_inter_marks_obtained.Text);
                cmd.Parameters.AddWithValue("@percentage", txt_inter_percentage.Text);
                cmd.Parameters.AddWithValue("@division", txt_inter_divison.Text);
                cmd.Parameters.AddWithValue("@date", My.date());
                cmd.Parameters.AddWithValue("@idate", My.idate());
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
               
            }
            if (txt_graduation_board_university.Text != "" && txt_graduation_division.Text != "" && txt_graduation_marks_obtained.Text != "" && txt_graduation_passing_year.Text != "" && txt_graduation_percentage.Text != "" && txt_graduation_total_marks.Text != "")
            {
                cmd.Parameters.AddWithValue("@applicant_id", int.Parse(hd_applicant_id.Value));
                cmd.Parameters.AddWithValue("@exam_passed", "Graduation");
                cmd.Parameters.AddWithValue("@board_university", txt_graduation_board_university.Text);
                cmd.Parameters.AddWithValue("@passing_year", txt_graduation_passing_year.Text);
                cmd.Parameters.AddWithValue("@total_marks", txt_graduation_total_marks.Text);
                cmd.Parameters.AddWithValue("@obtained_marks", txt_graduation_marks_obtained.Text);
                cmd.Parameters.AddWithValue("@percentage", txt_graduation_percentage.Text);
                cmd.Parameters.AddWithValue("@division", txt_graduation_division.Text);
                cmd.Parameters.AddWithValue("@date", My.date());
                cmd.Parameters.AddWithValue("@idate", My.idate());
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
           
            if (txt_other_board_university.Text != "" && txt_other_division.Text != "" && txt_other_marks_obtained.Text != "" && txt_other_passing_year.Text != "" && txt_other_percentage.Text != "" && txt_other_total_marks.Text != "")
            {
                cmd.Parameters.AddWithValue("@applicant_id", int.Parse(hd_applicant_id.Value));
                cmd.Parameters.AddWithValue("@exam_passed", txt_other.Text);
                cmd.Parameters.AddWithValue("@board_university", txt_other_board_university.Text);
                cmd.Parameters.AddWithValue("@passing_year", txt_other_passing_year.Text);
                cmd.Parameters.AddWithValue("@total_marks", txt_other_total_marks.Text);
                cmd.Parameters.AddWithValue("@obtained_marks", txt_other_marks_obtained.Text);
                cmd.Parameters.AddWithValue("@percentage", txt_other_percentage.Text);
                cmd.Parameters.AddWithValue("@division", txt_other_division.Text);
                cmd.Parameters.AddWithValue("@date", My.date());
                cmd.Parameters.AddWithValue("@idate", My.idate());
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            
        }
        private void submit_academic_details()
        {
            // submit matriculation details
            SqlDataAdapter ad = new SqlDataAdapter("select * from ApplicantAcademicDetails ", My.conn);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DataTable dt = ds.Tables[0];
            DataRow dr = dt.NewRow();
            dr["applicant_id"] = int.Parse(hd_applicant_id.Value);
            dr["exam_passed"] = "Intermediate";
            dr["board_university"] = txt_matric_board_university.Text;
            dr["passing_year"] = txt_matric_passing_year.Text;
            dr["total_marks"] = txt_matric_total_marks.Text;
            dr["obtained_marks"] = txt_matric_marks_obtained.Text;
            dr["percentage"] = txt_matric_percentage.Text;
            dr["division"] = txt_matric_divison.Text;
            dr["date"] = My.date();
            dr["idate"] = My.idate();
            dt.Rows.Add(dr);
            SqlCommandBuilder cb = new SqlCommandBuilder(ad);
            ad.Update(dt);
            // submit intermediate details
            if (txt_inter_board_university.Text != "" && txt_inter_divison.Text != "" && txt_inter_marks_obtained.Text != "" && txt_inter_passing_year.Text != "" && txt_inter_percentage.Text != "" && txt_inter_total_marks.Text != "")
            {
                submit_intermediate_details();
            }
            // submit graduation  details
            if (txt_graduation_board_university.Text != "" && txt_graduation_division.Text != "" && txt_graduation_marks_obtained.Text != "" && txt_graduation_passing_year.Text != "" && txt_graduation_percentage.Text != "" && txt_graduation_total_marks.Text != "")
            {
                submit_graduation_details();
            }
            // submit other qualification  details
            if (txt_other_board_university.Text != "" && txt_other_division.Text != "" && txt_other_marks_obtained.Text != "" && txt_other_passing_year.Text != "" && txt_other_percentage.Text != "" && txt_other_total_marks.Text != "")
            {
                submit_other_qualification_details();
            }
        }
        private void submit_intermediate_details()
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from ApplicantAcademicDetails ", My.conn);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DataTable dt = ds.Tables[0];
            DataRow dr = dt.NewRow();
            dr["applicant_id"] = int.Parse(hd_applicant_id.Value);
            dr["exam_passed"] = "Intermediate";
            dr["board_university"] = txt_inter_board_university.Text;
            dr["passing_year"] = txt_inter_passing_year.Text;
            dr["total_marks"] = txt_inter_total_marks.Text;
            dr["obtained_marks"] = txt_inter_marks_obtained.Text;
            dr["percentage"] = txt_inter_percentage.Text;
            dr["division"] = txt_inter_divison.Text;
            dr["date"] = My.date();
            dr["idate"] = My.idate();
            dt.Rows.Add(dr);
            SqlCommandBuilder cb = new SqlCommandBuilder(ad);
            ad.Update(dt);
        }
        private void submit_graduation_details()
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from ApplicantAcademicDetails ", My.conn);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DataTable dt = ds.Tables[0];
            DataRow dr = dt.NewRow();
            dr["applicant_id"] = int.Parse(hd_applicant_id.Value);
            dr["exam_passed"] = "Graduation";
            dr["board_university"] = txt_graduation_board_university.Text;
            dr["passing_year"] = txt_graduation_passing_year.Text;
            dr["total_marks"] = txt_graduation_total_marks.Text;
            dr["obtained_marks"] = txt_graduation_marks_obtained.Text;
            dr["percentage"] = txt_graduation_percentage.Text;
            dr["division"] = txt_graduation_division.Text;
            dr["date"] = My.date();
            dr["idate"] = My.idate();
            dt.Rows.Add(dr);
            SqlCommandBuilder cb = new SqlCommandBuilder(ad);
            ad.Update(dt);
        }
        private void submit_other_qualification_details()
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from ApplicantAcademicDetails ", My.conn);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DataTable dt = ds.Tables[0];
            DataRow dr = dt.NewRow();
            dr["applicant_id"] = int.Parse(hd_applicant_id.Value);
            dr["exam_passed"] = txt_other.Text;
            dr["board_university"] = txt_other_board_university.Text;
            dr["passing_year"] = txt_other_passing_year.Text;
            dr["total_marks"] = txt_other_total_marks.Text;
            dr["obtained_marks"] = txt_other_marks_obtained.Text;
            dr["percentage"] = txt_other_percentage.Text;
            dr["division"] = txt_other_division.Text;
            dr["date"] = My.date();
            dr["idate"] = My.idate();
            dt.Rows.Add(dr);
            SqlCommandBuilder cb = new SqlCommandBuilder(ad);
            ad.Update(dt);
        }

       

    }
}