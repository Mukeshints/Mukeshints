using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jsdmss.BLOCK_COORDINATOR
{
    public partial class rmjsy_membership_form : System.Web.UI.Page
    {
        string scrpt;
        string filephoto, filesignature, fileadhar, filebankpassbook;
        #region Page Load
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    fetch_coordinator_info();
                    clear_form();
                    My.bind_ddl_with_para(ddl_state, "SELECT Statename,StateId FROM StateMaster");
                }
                catch (Exception exc) { My.submitException(exc, "rmjsy-membership-form.aspx"); }
            }
        }

        private void fetch_coordinator_info()
        {
            SqlConnection con = new SqlConnection(My.conn);
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select Name,Mobile_no from User_master where User_id='" + Session["user"].ToString() + "'", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DataTable dt = ds.Tables[0];
            if (dt.Rows.Count != 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    lblcoordiantor.Text = dr[0].ToString();
                    lblcoordinatormobile.Text = dr[1].ToString();
                }
            }
        }

        private void clear_form()
        {
            ddl_district.SelectedItem.Text = "";
            ddl_block.SelectedItem.Text = "";
            ddl_panchayat.SelectedItem.Text = "";
            txt_name_eng.Text = "";
            //txt_name_hindi.Text = "";
            txt_fathername_eng.Text = "";
            //txt_fathername_hindi.Text = "";
            txt_mothername_eng.Text = "";
            // txt_mothername_hindi.Text = "";
            txt_dob.Text = "";
            txt_age.Text = "";
            ddl_category.Text = "";
            txt_caste.Text = "";
            txt_religan.Text = "";
            ddl_disability.Text = "";
            ddl_disability_type.Text = "";
            txt_nationality.Text = "";
            txt_permanent_address.Text = "";
            txt_Correspondence_Address.Text = "";
            txt_pin_permanent.Text = "";
            txt_pin_postal.Text = "";
            txt_aadhar_no.Text = "";
            txt_mobile_no.Text = "";
            //txt_mobile_no2.Text = "";
            txt_email_id.Text = "";
            txt_bank_account_holder_name.Text = "";
            txt_bank_accond_no.Text = "";
            txt_bank_name.Text = "";
            txt_bank_ifsc_code.Text = "";
            txt_bank_branch.Text = "";
            txt_house_type.Text = "";
            txt_fimaly_no.Text = "";
            txt_numberofroom.Text = "";
            // ddl_toilet.Text = "";
            // txt_house_number.Text = "";
            // txt_house_east.Text = "";
            // txt_house_west.Text = "";
            // txt_house_north.Text = "";
            // txt_house_south.Text = "";
            // ddl_govt_provided_house.Text = "";
            //ddl_govt_employe.Text = "";
            // txt_rasan_card_no.Text = "";
           //txt_votar_id.Text = "";
            txt_qualification.Text = "";
            txt_reg_help_amount.Text = "";
            chk_declaration.Checked = false;
        }

        protected void ddl_state_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                My.bind_ddl_with_para(ddl_district, "Select Disctrict,District_Id From DistrictMaster where State='" + ddl_state.SelectedValue + "'");
                ddl_state.Focus();
            }
            catch (Exception exc) { My.submitException(exc, "rmjsy-membership-form.aspx"); }
        }

        protected void ddl_district_SelectedIndexChanged(object sender, EventArgs e)
        {
            My.bind_ddl_with_para(ddl_block, "Select Block,Block_Id From BlockMaster where District='" + ddl_district.SelectedValue + "'");
            ddl_district.Focus();
        }
        protected void ddl_Block_SelectedIndexChanged(object sender, EventArgs e)
        {
            My.bind_ddl_with_para(ddl_panchayat, "Select Panchayat,Panchayat_Id From PanchayatMaster where Block='" + ddl_block.SelectedValue + "'");
            ddl_block.Focus();
        }


        protected void ddl_disability_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_disability.Text == "Select")
            {
                lblmessage.Text = "Please Select Disability";
            }
            else if (ddl_disability.Text == "No")
            {
                ddl_disability_type.Enabled = false;
            }
            else { ddl_disability_type.Enabled = true; }
            ddl_disability.Focus();
        }
        protected void chk_same_address_CheckedChanged(object sender, EventArgs e)
        {
            txt_Correspondence_Address.Text = txt_permanent_address.Text;
            txt_pin_postal.Text = txt_pin_permanent.Text;
            txt_permanent_address.Focus();
        }
        #endregion
        #region BTN Submimt
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            try
            {
                if (ddl_state.SelectedItem.Text == "Select")
                {
                    pnlmessage.Visible = true;
                    lblmessage.Text = "Please select State";
                }
                else if (ddl_district.SelectedItem.Text == "Select")
                {
                    pnlmessage.Visible = true;
                    lblmessage.Text = "Please select District";

                }
                else if (ddl_block.SelectedItem.Text == "Select")
                {
                    pnlmessage.Visible = true;
                    lblmessage.Text = "Please select Block";
                }
                else if (ddl_panchayat.SelectedItem.Text == "Select")
                {
                    pnlmessage.Visible = true;
                    lblmessage.Text = "Please select Panchayat";
                }
                else if (txt_name_eng.Text == "")
                {
                    pnlmessage.Visible = true;
                    lblmessage.Text = "Please enter Name.";

                }
                else if (txt_dob.Text == "")
                {
                    pnlmessage.Visible = true;
                    lblmessage.Text = "Please enter bate of birth.";
                }

                else if (txt_mobile_no.Text == "")
                {
                    pnlmessage.Visible = true;
                    lblmessage.Text = "Please enter Mobile No.";
                }
                else if (txt_aadhar_no.Text == "")
                {
                    pnlmessage.Visible = true;
                    lblmessage.Text = "Please Enter Aadhar No.";
                }
                else if (txt_fathername_eng.Text == "")
                {
                    pnlmessage.Visible = true;
                    lblmessage.Text = "Please enter father name.";
                }
                else if (txt_mothername_eng.Text == "")
                {
                    pnlmessage.Visible = true;
                    lblmessage.Text = "Please enter mother name.";
                }
                else if (ddl_panchayat.Text == "Select")
                {
                    pnlmessage.Visible = true;
                    lblmessage.Text = "Please select Panchayat.";
                }
                else
                {
                    submitdata();                    
                }
            }

            catch (Exception exc) { My.submitException(exc, "rmjsy-membership-form.aspx"); }
        }

        private void submitdata()
        {

            if (file_photograph.FileBytes.Length < 400000)
            {
                lblmessage.Text = "";
                filephoto = upload_document_image(file_photograph, "membername");
            }
            else
            {
                pnlmessage.Visible = true;
                lblmessage.Text = "Image size should be less than 400KB";
            }
            if (file_signature.FileBytes.Length < 400000)
            {
                filesignature = upload_document_image(file_signature, "signature");
            }
            else
            {
                pnlmessage.Visible = true;
                lblmessage.Text = "Image size should be less than 400KB";
            }

            if (filephoto == "")
            {
                pnlmessage.Visible = true;
                lblmessage.Text = "Please choose image.";

            }
            else if (filesignature == "")
            {
                pnlmessage.Visible = true;
                lblmessage.Text = "Please choose signature.";
            }

            else
            {
                SqlConnection cn = new SqlConnection(My.conn);
                cn.Open();
                SqlDataAdapter ad = new SqlDataAdapter("select * from RMJSY_Membership_Table ", cn);
                DataSet ds = new DataSet();
                ad.Fill(ds, "RMJSY_Membership_Table");
                DataTable dt = ds.Tables[0];
                DataRow dr = dt.NewRow();
                string regid = My.registration_code();
                dr["application_number"] = regid;
                dr["state"] = ddl_state.SelectedItem.Text;
                dr["District"] = ddl_district.SelectedItem.Text;
                dr["Block"] = ddl_block.SelectedItem.Text;
                dr["Panchayat"] = ddl_panchayat.SelectedItem.Text;
                dr["Applicant_name_eng"] = txt_name_eng.Text;                
                dr["Father_Husband_name_eng"] = txt_fathername_eng.Text;               
                dr["Mother_name_eng"] = txt_mothername_eng.Text;               
                dr["DOB"] = txt_dob.Text;
                dr["Age"] = txt_age.Text;
                dr["Category"] = ddl_category.Text;
                dr["Caste"] = txt_caste.Text;
                dr["Religion"] = txt_religan.Text;
                dr["Disability"] = ddl_disability.Text;
                dr["Disability_type"] = ddl_disability_type.Text;
                dr["Nationality"] = txt_nationality.Text;
                dr["Permanant_Address"] = txt_permanent_address.Text;
                dr["Correspondence_Address"] = txt_Correspondence_Address.Text;
                dr["PIN_permanent"] = txt_pin_permanent.Text;
                dr["PIN_postal"] = txt_pin_postal.Text;
                dr["Adhar"] = txt_aadhar_no.Text;
                dr["Mobile_1"] = txt_mobile_no.Text;               
                dr["Email"] = txt_email_id.Text;
                dr["Bank_account_holder"] = txt_bank_account_holder_name.Text;
                dr["Bank_account_number"] = txt_bank_accond_no.Text;
                dr["Bank_name"] = txt_bank_name.Text;
                dr["IFSC_code"] = txt_bank_ifsc_code.Text;
                dr["Branch"] = txt_bank_branch.Text;
                dr["Type_of_home"] = txt_house_type.Text;
                dr["Members_in_family"] = txt_fimaly_no.Text;
                dr["Number_of_rooms"] = txt_numberofroom.Text;
                dr["Toilet"] = ddl_toilet.Text;               
                dr["Government_given_house"] = ddl_govt_provided_house.Text;
                dr["Government_Job_in_family"] = ddl_govt_employe.Text;              
                dr["Educational_qualification"] = txt_qualification.Text;
                dr["RMJSY_Sahayata_Yojana_Rashi"] = txt_reg_help_amount.Text;                
                dr["Ghoshhna"] = "YES";                             
                dr["Photo"] = filephoto;
                dr["Signature"] = filesignature;
                dr["SubmitedBy"] = Session["user"].ToString();
                dr["SubmitedDate"] = My.dates();
                dr["SubmitedIDate"] = My.idate();               
                dr["Status"] = 0;// 0=Pending, 1=Confirmed
                dt.Rows.Add(dr);
                SqlCommandBuilder cb = new SqlCommandBuilder(ad);
                ad.Update(dt);
                cn.Close();
                Session["registrationid"] = regid;
                Session["coordinator"] = lblcoordiantor.Text;
                Session["mobile"] = lblcoordinatormobile.Text;
                Response.Redirect("success.aspx");

            }
        }
        private string upload_document_image(FileUpload Files, string name)
        {
            string dbfilePath = "";
            DateTime dt = DateTime.UtcNow.AddHours(5).AddMinutes(30);
            string date = dt.ToString("dd_MM_yyyy");
            string time = dt.ToString("hh_mm_ss");
            String filerename = name + date + time;
            Boolean FileOK = false;
            Boolean FileSaved = false;
            int k = 0;
            if (Files.HasFile)
            {
                if (Files.FileBytes.Length < 400000)
                {
                    Session["WorkingImage"] = Files.FileName;
                    string FileExtension = Path.GetExtension(Session["WorkingImage"].ToString()).ToLower();
                    Session["renamedfile"] = filerename + "PIMG1" + FileExtension;
                    string[] allowedExtension = { ".png", ".jpeg", ".jpg", };
                    for (int i = 0; i < allowedExtension.Length; i++)
                    {
                        k++;
                        if (FileExtension == allowedExtension[i])
                        {
                            FileOK = true;
                            lblmessage.Text = "";
                            break;
                        }
                    }
                }
                else
                {
                    pnlmessage.Visible = true;
                    lblmessage.Text = "Please Reduce or compress size of image max(400kb)";
                }
            }
            else
            {
                pnlmessage.Visible = true;
                lblmessage.Text = "Please upload file first.";
            }
            if (FileOK)
            {
                try
                {
                    string path = (Server.MapPath("../Member_doc")).ToString();
                    Files.SaveAs(path + "/" + Session["renamedfile"]);
                    FileSaved = true;
                }
                catch (Exception ex)
                {
                    FileSaved = false;
                }
            }            
            if (FileSaved)
            {
                //string originalPath = HttpContext.Current.Request.Url.AbsoluteUri.Replace(HttpContext.Current.Request.Url.AbsolutePath, "");
                string fileName = Path.GetFileName(Session["renamedfile"].ToString());
                dbfilePath = @"../Member_doc/" + fileName;
            }
            return dbfilePath;
        }
        #endregion



    }
}