using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jsdmss.Maindmin
{
    public partial class activate_user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    fetch_user("Select * from User_master");
                }
                catch (Exception exc) { }
            }
        }

        private void fetch_user(string query)
        {
            My.bind_gridview(grd_panchyat_cood_list, query);
        }

        protected void lnk_deactivate_Click(object sender, EventArgs e)
        {
             try
                {
                    LinkButton lnk = (LinkButton)sender;
                    Label lblid = (Label)lnk.FindControl("lbl_id");
                    My.executeQuery("Update User_master SET status='Active' where Id='" + lblid.Text + "'");
                    lbl_message2.Text = "User activation process completed successfully.";
                    fetch_user("Select * from User_master where status='Deactive'");
                }
                catch (Exception exc) { }
            }
        

        protected void btnfind_Click(object sender, EventArgs e)
        {
            try
            {
                fetch_user("Select * from User_master where Mobile_no='" + txt_mobile.Text + "'");
                if (grd_panchyat_cood_list.DataSource == null)
                {
                    lbl_message2.Text = "Data Unavailable.";
                }
            }
            catch (Exception exc) { }

        }

        protected void grd_panchyat_cood_list_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                grd_panchyat_cood_list.PageIndex = e.NewPageIndex;
                grd_panchyat_cood_list.DataBind();
                fetch_user("Select * from User_master");
            }
            catch (Exception exc) { }
        }
    }
}