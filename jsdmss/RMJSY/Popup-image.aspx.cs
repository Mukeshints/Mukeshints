
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
    public partial class Popup_image : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    fatch_popup();
            //}
        }

        //private void fatch_popup()
        //{
        //    Connection con = new Connection();
        //    string connectionstring = con.connect_method();
        //    SqlConnection conn = new SqlConnection(connectionstring);
        //    SqlDataAdapter ad = new SqlDataAdapter("Select * from pop_up_window ", conn);
        //    DataSet ds = new DataSet();
        //    ad.Fill(ds, "pop_up_window");
        //    DataTable dt = ds.Tables[0];
        //    int rowcount = dt.Rows.Count;
        //    if (rowcount == 0)
        //    {

        //    }
        //    else
        //    {
        //        Image1.ImageUrl = dt.Rows[0][0].ToString();
        //    }
        //}
    }
}