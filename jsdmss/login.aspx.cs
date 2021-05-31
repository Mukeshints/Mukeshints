using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jsdmss
{
    public partial class login : System.Web.UI.Page
    {
        string scrpt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                panel_alert.Visible = false;
            }
        }

        #region login
        protected void btn_submit_Click(object sender, EventArgs e)
        {

            string T = txt_username.Text;
            try
            {
                //Not Allowing Numbers, Underscore or Hash
                char[] UnallowedCharacters = { '-', '\'', '/', '\\', ';', ':', '(', ')', '{', '}', '[', ']', '+', '|', '&', '%', '=' };
                if (textContainsUnallowedCharacter(T, UnallowedCharacters))
                {
                    lbl_message.Text = "Wrong Entry";
                    scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
                }
                else
                {
                    SqlDataAdapter ad = new SqlDataAdapter("select * from LoginTable where userid='" + txt_username.Text + "'", My.conn);
                    DataSet ds = new DataSet();
                    ad.Fill(ds);
                    DataTable dt = ds.Tables[0];
                    int rowcount = dt.Rows.Count;
                    if (rowcount == 0)
                    {
                      //do nothing
                    }
                    else
                    {
                        string pwd = dt.Rows[0]["password"].ToString();
                        string type = dt.Rows[0]["type"].ToString();
                        int status = int.Parse(dt.Rows[0]["status"].ToString());
                        if (pwd == txt_pwd.Text)
                        {
                            if (type == "ADMIN")
                            {
                                lbl_message.Text = "";
                                Session["admin_user"] = txt_username.Text;
                                Response.Redirect("Maindmin/home.aspx");
                            }
                           
                        }
                        else
                        {
                            panel_alert.Visible = true;
                            lbl_message.Text = "User Name or Password is incorrect.";
                            scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
              
                        }
                    }
                }
            }
            catch (Exception exc)
            {
                My.submitException(exc, "login.aspx");
                panel_alert.Visible = true;
                lbl_message.Text = "User Name or Password is incorrect.";
                scrpt = "<script>$( function () { $('.notificationpan').hide().slideDown(1000);  $('.notificationpan').delay(10000).show().slideUp(1000);});</script>";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", scrpt, false);
            }
        }

      
        private bool textContainsUnallowedCharacter(string T, char[] UnallowedCharacters)
        {
            for (int i = 0; i < UnallowedCharacters.Length; i++)
                if (T.Contains(UnallowedCharacters[i]))
                    return true;
            return false;
        }
        #endregion
    }
}