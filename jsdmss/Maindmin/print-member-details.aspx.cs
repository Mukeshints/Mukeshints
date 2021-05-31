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
    public partial class print_member_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_find_Click(object sender, EventArgs e)
        {
            try
            {
                if (txt_search.Text != "")
                {
                    lbl_message.Text = "";
                    fetch_member_details();
                }
                else
                {
                    lbl_message.Text = "Data unavailable.";
                    Panel1.Visible = false;
                }
            }
            catch (Exception exc) { }
        }
        private void fetch_member_details()
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from RMJSY_Membership_Table where application_number='" + txt_search.Text + "' or Mobile_1='" + txt_search.Text + "'", My.conn);
            DataSet ds = new DataSet();
            ad.Fill(ds, "RMJSY_Membership_Table");
            DataTable dt = ds.Tables[0];
            if (dt.Rows.Count != 0)
            {
                lbl_message.Text = "";
                Panel1.Visible = true;
                foreach (DataRow dr in dt.Rows)
                {
                    lblapplication_no.Text = dr["application_number"].ToString();
                    lblstate.Text = dr["state"].ToString();
                    lbldistrict.Text = dr["District"].ToString();
                    lblblock.Text = dr["Block"].ToString();
                    lblpanchayat.Text = dr["Panchayat"].ToString();
                    lblname.Text = dr["Applicant_name_eng"].ToString();
                    lbl_registation_date.Text = dr["SubmitedDate"].ToString();
                    // dr["Applicant_name_hindi"].ToString();
                    lblfathername.Text = dr["Father_Husband_name_eng"].ToString();
                    // dr["Father_husband_name_hindi"].ToString();
                    lblmothername.Text = dr["Mother_name_eng"].ToString();
                    // dr["Mother_name_hindi"].ToString();
                    lbldob.Text = dr["DOB"].ToString();
                    lblage.Text = dr["Age"].ToString();
                    lblcategory.Text = dr["Category"].ToString();
                    lblcaste.Text = dr["Caste"].ToString();
                    lblreligion.Text = dr["Religion"].ToString();
                    lbldisability.Text = dr["Disability"].ToString();
                    lbldisabilitytype.Text = dr["Disability_type"].ToString();
                    lblnationality.Text = dr["Nationality"].ToString();
                    lblpermanentaddress.Text = dr["Permanant_Address"].ToString();
                    lblcorrespondenceaddress.Text = dr["Correspondence_Address"].ToString();
                    // dr["Landmark_permanant"].ToString();               
                    lbladhar.Text = dr["Adhar"].ToString();
                    lblmobile.Text = dr["Mobile_1"].ToString();
                    // dr["Mobile_2"].ToString();
                    lblemail.Text = dr["Email"].ToString();
                    lblaccountholdername.Text = dr["Bank_account_holder"].ToString();
                    lblaccountnumber.Text = dr["Bank_account_number"].ToString();
                    lblbankname.Text = dr["Bank_name"].ToString();
                    lblifsccode.Text = dr["IFSC_code"].ToString();
                    lblbranch.Text = dr["Branch"].ToString();
                    lbltypeofhome.Text = dr["Type_of_home"].ToString();
                    lblnooffamilymember.Text = dr["Members_in_family"].ToString();
                    lblnoofrooms.Text = dr["Number_of_rooms"].ToString();
                    lbltoilet.Text = dr["Toilet"].ToString();
                   // lblhouseno.Text = dr["Home_number"].ToString();
                   // lbleast.Text = dr["East"].ToString();
                   // lblwest.Text = dr["West"].ToString();
                    //lblnorth.Text = dr["North"].ToString();
                    //lblsouth.Text = dr["South"].ToString();
                    lblgovtgivenhome.Text = dr["Government_given_house"].ToString();
                    lblgovtjobinfamily.Text = dr["Government_Job_in_family"].ToString();
                    //lblrasancardno.Text = dr["Rasan_card_number"].ToString();
                    //lblvotarid.Text = dr["Votar_id"].ToString();
                    lblqualification.Text = dr["Educational_qualification"].ToString();
                    lblgovtyojanarashi.Text = dr["RMJSY_Sahayata_Yojana_Rashi"].ToString();
                    //dr["Navikaran_ki_tithi"].ToString();
                    //dr["Navikaran_ka_time"].ToString();
                    //dr["Ghoshhna"].ToString();
                    //if (dr["Anulagnak_Adhar"].ToString() != "")
                    //{
                    //    chk_adhar.Checked = true;
                    //}
                    //if (dr["Anulagnak_Bank_Khata"].ToString() != "")
                    //{
                    //    chk_bankaccount.Checked = true;
                    //}
                    
                    Image1.ImageUrl = dr["Photo"].ToString();
                    Image2.ImageUrl = dr["Signature"].ToString();
                    fetch_coordinator(dr["SubmitedBy"].ToString());
                }
            }
            else
            {
                Panel1.Visible = false;
                lbl_message.Text = "Data unavailable.";
            }
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
                    lblcoordiantor.Text = dr[0].ToString();
                    lblcoordinatormobile.Text = dr[1].ToString();
                }
            }
        }
    }
}