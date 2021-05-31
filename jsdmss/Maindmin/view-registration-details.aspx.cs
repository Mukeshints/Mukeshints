using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jsdmss.Maindmin
{
    public partial class view_registration_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    string applicationno = Request.QueryString["Applicationno"].ToString();
                    My.bind_gridview(grd_data, "Select * from ApplicantBasicDetails where ApplicantId='" + applicationno + "'");
                    My.bind_gridview(grd_data_academic, "Select exam_passed as 'Exam Passed',board_university as 'Board/University',passing_year as 'Passing Year', total_marks as 'Total Marks',obtained_marks as 'Obtained Marks', percentage as 'Percentage', division as 'Division'  from ApplicantAcademicDetails where applicant_id='" + applicationno + "'");
                }
                catch (Exception exc) { My.submitException(exc,"view-registration-details.aspx");}
            }
        }
    }
}