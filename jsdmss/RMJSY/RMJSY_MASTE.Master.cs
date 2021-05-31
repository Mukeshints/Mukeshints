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
    public partial class RMJSY_MASTE : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            try
            {
                login();
            }
            catch (Exception exc)
            {
            }
        }

        private void login()
        {
            string T = txt_userid.Text;
            try
            {
                //Not Allowing Numbers, Underscore or Hash
                char[] UnallowedCharacters = { '-', '#', '\'', '/', '\\', '*', '!', ';', ':', '(', ')', '{', '}', '[', ']', '+', '|', '&', '%', '@', '=' };
                if (textContainsUnallowedCharacter(T, UnallowedCharacters))
                {
                    lblmessage.Text = "Wrong Entry";

                }
                else
                {
                    SqlDataAdapter ad = new SqlDataAdapter("select * from User_master where User_id='" + txt_userid.Text + "' ", My.conn);
                    DataSet ds = new DataSet();
                    ad.Fill(ds, "User_master");
                    DataTable dt = ds.Tables[0];
                    int rowcount = dt.Rows.Count;
                    if (rowcount != 0)
                    {
                        foreach (DataRow dr in dt.Rows)
                        {
                            string pwd = dr["Password"].ToString();
                            string status = dr["status"].ToString();
                            if (pwd == txt_password.Text)
                            {
                                lblmessage.Text = "";
                                Session["user_type"] = dr["user_type"].ToString();
                                Session["user"] = txt_userid.Text;
                                // Session["user_panchCoo"] = dt.Rows[0]["User_id"].ToString();
                                if (status == "ACTIVE")
                                {
                                    Response.Redirect("../BLOCK_COORDINATOR/User_home.aspx");
                                }
                                else
                                {
                                    lblmessage.Text = "You User ID is blocked for some reason. Please contact administrator. Thank You.";
                                }
                            }
                            else
                            {
                                lblmessage.Text = "User Name or Password is incorrect.";
                            }
                        }
                    }
                }
            }
            catch (Exception exc)
            {
                //Console.Write(exc);
                lblmessage.Text = "User Name or Password is incorrect.";
            }
        }

        private bool textContainsUnallowedCharacter(string T, char[] UnallowedCharacters)
        {
            for (int i = 0; i < UnallowedCharacters.Length; i++)

                if (T.Contains(UnallowedCharacters[i]))

                    return true;


            return false;
        }
    }
}