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
    public partial class success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    //  Session["applicationid"] = "1003";            
                    lbl_registration_no.Text = Session["applicationid"].ToString();
                    fetchapplicantdetails();
                    My.bind_gridview(grd_data_academic, "Select exam_passed as 'Exam Passed',board_university as 'Board/University',passing_year as 'Passing Year', total_marks as 'Total Marks',obtained_marks as 'Obtained Marks', percentage as 'Percentage', division as 'Division'  from ApplicantAcademicDetails where applicant_id='" + lbl_registration_no.Text + "'");


                }
                catch (Exception exc)
                {
                    My.submitException(exc, "success.aspx");
                }
            }
        }

        private void fetchapplicantdetails()
        { 
            SqlDataAdapter ad = new SqlDataAdapter("select * from ApplicantBasicDetails where ApplicantId='" + lbl_registration_no.Text + "' ", My.conn);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                lblname.Text = dr["CandidateName"].ToString();
                Image2.ImageUrl = dr["signature"].ToString();
                Image1.ImageUrl = dr["image"].ToString();
                lbl_date.Text = dr["date"].ToString();
                lblapplyfor.Text = dr["AppliedFor"].ToString();
                lblpostname.Text = dr["Post_name"].ToString();
                if (lblapplyfor.Text == "BLOCK")
                {
                    lblpostdetails.Text="<span style='color:#000000'>Block<span/> : "+ dr["Block"].ToString()+"<br/> <span style='color:#000000'>Panchayat <span/> :"+ dr["Panchayat"].ToString()+"<br/> <span style='color:#000000'>District <span/> :"+dr["District"].ToString()+"<br/> <span style='color:#000000'>State :</span/>"+ dr["State"].ToString();
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
               lblmobile.Text= dr["Mobile"].ToString();
               lbladhar.Text= dr["Adhar"].ToString();
               lblemail.Text = dr["Email"].ToString();
               lblfathername.Text = dr["FatherName"].ToString();
               lblmothername.Text = dr["MotherName"].ToString();
               lbldob.Text = dr["DateOfBirth"].ToString();
               lblage.Text = dr["Age"].ToString();
               lblcategory.Text= dr["Category"].ToString();
               lblreligion.Text=dr["Religion"].ToString() ;
               lblnationality.Text=  dr["Nationality"].ToString() ;
               lblmaritalstatus.Text=dr["maritalStatus"].ToString();
                 lblgender.Text=dr["Gender"].ToString();
               string type= dr["Disability"].ToString();
                if(type=="Select" || type=="No")
                {
                    lbldisability.Text="No";
                }
                else{
                     lbldisability.Text="Yes";
                    lbldisabilitytype.Text="Disability Type: "+dr["DisabilityType"].ToString();
                }
                 lblcorrespondenceaddress.Text=dr["correspond_address"].ToString();
                lblpermanentaddress.Text= dr["permanant_address"].ToString();
                lblandroidmobile.Text=dr["having_android_mobile"].ToString() ;
                lbllaptop.Text=dr["having_laptop"].ToString();
                lblcomputerknowledge.Text=dr["computer_knowledge"].ToString();
                lblexperiance.Text=dr["Experience"].ToString();
               
                
            }
        }
    }
}