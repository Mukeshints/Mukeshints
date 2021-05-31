using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jsdmss.RMJSY
{
    public partial class print_application : System.Web.UI.Page
    {
        string scrpt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                panel1.Visible = false;
            }
        }

        protected void btnfind_Click(object sender, EventArgs e)
        {
            try
            {

                fetchapplicantdetails();

            }
            catch (Exception exc)
            {
                My.submitException(exc, "success.aspx");
            }
        }

        private void fetchapplicantdetails()
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from ApplicantBasicDetails where Mobile='" + txt_mobile.Text + "' ", My.conn);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DataTable dt = ds.Tables[0];
            if (dt.Rows.Count != 0)
            {
                panel1.Visible = true;
                foreach (DataRow dr in dt.Rows)
                {
                    lbl_registration_no.Text = dr["ApplicantId"].ToString();
                    lblname.Text = dr["CandidateName"].ToString();
                    Image2.ImageUrl = dr["signature"].ToString();
                    Image1.ImageUrl = dr["image"].ToString();
                    lbl_date.Text = dr["date"].ToString();
                    lblapplyfor.Text = dr["AppliedFor"].ToString();
                    lblpostname.Text = dr["Post_name"].ToString();
                    if (lblapplyfor.Text == "BLOCK")
                    {
                        lblpostdetails.Text = "<span style='color:#000000'>Block<span/> : " + dr["Block"].ToString() + "<br/> <span style='color:#000000'>Panchayat <span/> :" + dr["Panchayat"].ToString() + "<br/> <span style='color:#000000'>District <span/> :" + dr["District"].ToString() + "<br/> <span style='color:#000000'>State :</span/>" + dr["State"].ToString();
                    }
                    else if (lblapplyfor.Text == "PANCHAYAT")
                    {
                        lblpostdetails.Text = "<span style='color:#000000'>Panchayat <span/> :" + dr["Panchayat"].ToString() + "<br/> <span style='color:#000000'>District <span/> :" + dr["District"].ToString() + "<br/> <span style='color:#000000'>State :</span/>" + dr["State"].ToString();
                    }
                    else if (lblapplyfor.Text == "DISTRICT")
                    {
                        lblpostdetails.Text = " <span style='color:#000000'>District <span/> :" + dr["District"].ToString() + "<br/> <span style='color:#000000'>State :</span/>" + dr["State"].ToString();
                    }
                    else if (lblapplyfor.Text == "HEAD OFFICE")
                    {
                        lblpostdetails.Text = "<span style='color:#000000'>State :</span/>" + dr["State"].ToString();
                    }
                    lblmobile.Text = dr["Mobile"].ToString();
                    lbladhar.Text = dr["Adhar"].ToString();
                    lblemail.Text = dr["Email"].ToString();
                    lblfathername.Text = dr["FatherName"].ToString();
                    lblmothername.Text = dr["MotherName"].ToString();
                    lbldob.Text = dr["DateOfBirth"].ToString();
                    lblage.Text = dr["Age"].ToString();
                    lblcategory.Text = dr["Category"].ToString();
                    lblreligion.Text = dr["Religion"].ToString();
                    lblnationality.Text = dr["Nationality"].ToString();
                    lblmaritalstatus.Text = dr["maritalStatus"].ToString();
                    lblgender.Text = dr["Gender"].ToString();
                    string type = dr["Disability"].ToString();
                    if (type == "Select" || type == "No")
                    {
                        lbldisability.Text = "No";
                    }
                    else
                    {
                        lbldisability.Text = "Yes";
                        lbldisabilitytype.Text = "Disability Type: " + dr["DisabilityType"].ToString();
                    }
                    lblcorrespondenceaddress.Text = dr["correspond_address"].ToString();
                    lblpermanentaddress.Text = dr["permanant_address"].ToString();
                    lblandroidmobile.Text = dr["having_android_mobile"].ToString();
                    lbllaptop.Text = dr["having_laptop"].ToString();
                    lblcomputerknowledge.Text = dr["computer_knowledge"].ToString();
                    lblexperiance.Text = dr["Experience"].ToString();
                }
                My.bind_gridview(grd_data_academic, "Select exam_passed as 'Exam Passed',board_university as 'Board/University',passing_year as 'Passing Year', total_marks as 'Total Marks',obtained_marks as 'Obtained Marks', percentage as 'Percentage', division as 'Division'  from ApplicantAcademicDetails where applicant_id='" + lbl_registration_no.Text + "'");

            }
            else
            {
                lbl_message.Text = "You have not applied for any post. Kindly apply first. Thank you.";
                scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);

            }
        }
    }
}