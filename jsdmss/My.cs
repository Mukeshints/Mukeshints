using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services.Description;
using System.Web.UI.WebControls;

public class My
{
    public static string conn = @"Data Source=43.255.152.25;Integrated Security=False;User ID=jsdmssdbNEW; Password=Rsgi68?3;Encrypt=False;";
    //public static string conn = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=Data Source=(LocalDB)\v11.0;AttachDbFilename=M:\Project\JSDMSS-PROJECT\jsdmss\jsdmss\jsdmss\App_Data\pmjsy.mdf;Integrated Security=True;Integrated Security=True";
    //public static string conn = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\WorkProject\jsdmss\jsdmss\App_Data\pmjsy.mdf;Integrated Security=True;Integrated Security=True";
    public static string tabletojson(DataTable table)
    {
        JavaScriptSerializer jsSerializer = new JavaScriptSerializer();
        List<Dictionary<string, object>> parentRow = new List<Dictionary<string, object>>();
        Dictionary<string, object> childRow;
        foreach (DataRow row in table.Rows)
        {
            childRow = new Dictionary<string, object>();
            foreach (DataColumn col in table.Columns)
            {
                childRow.Add(col.ColumnName, row[col]);
            }
            parentRow.Add(childRow);
        }
        Object collectionWrapper = new
        {
            success = parentRow
        };
        return jsSerializer.Serialize(collectionWrapper);
    }
    public static DataTable dataTable(string query, String conn)
    {
        SqlDataAdapter ad = new SqlDataAdapter(query, conn);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        return ds.Tables[0];
    }
    public static string date()
    {
        string date = DateTime.UtcNow.AddHours(5).AddMinutes(30).ToString("dd/MM/yyyy");
        return date;
    }
    public static DateTime dates()
    {
        return DateTime.UtcNow.AddHours(5).AddMinutes(30);
    }
    public static int idate()
    {
        int idate = int.Parse(DateTime.UtcNow.AddHours(5).AddMinutes(30).ToString("yyyyMMdd"));
        return idate;
    }
    public static string time()
    {
        string time = DateTime.UtcNow.AddHours(5).AddMinutes(30).ToString("hh:mm tt");
        return time;
    }
    public static void executeQuery(string query)
    {
        try
        {
            SqlDataAdapter ad = new SqlDataAdapter(query, My.conn);
            DataSet ds = new DataSet();
            ad.Fill(ds);

        }
        catch (Exception exc)
        {
            submitException(exc, "My.cs");
        }
    }
    public static string auto_serial(string column)
    {
        string result = "";
        SqlDataAdapter ad = new SqlDataAdapter("select * from GlobalMaster ", conn);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {
            DataTable dt = ds.Tables[0];
            DataRow dr = dt.NewRow();
            dr[column] = "2";
            result = "1";
            dt.Rows.Add(dr);
        }
        else
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (dr[column].ToString() == "")
                {
                    result = "1";
                    dr[column] = "2";
                }
                else
                {
                    result = dr[column].ToString();
                    dr[column] = Convert.ToDouble(dr[column]) + 1;
                }
                break;
            }
        }
        SqlCommandBuilder cb = new SqlCommandBuilder(ad);
        ad.Update(ds.Tables[0]);
        return result;
    }
    public static void fetch_year(DropDownList ddl)
    {
        ArrayList ar = new ArrayList();
        DateTime dt = DateTime.UtcNow.AddHours(5).AddMinutes(30);
        int year = dt.AddYears(1).Year;
        ar.Add("Select");
        for (int i = 1970; i <= year; i++)
        {
            ar.Add(i);
        }
        ddl.DataSource = ar;
        ddl.DataBind();
    }
    public static void fetch_month(DropDownList ddl)
    {
        ArrayList ar = new ArrayList();
        DateTime dt = DateTime.UtcNow.AddHours(5).AddMinutes(30);
        int year = dt.AddYears(1).Year;
        ar.Add("Select");
        for (int i = 1; i <= 12; i++)
        {
            ar.Add(i.ToString("00"));
        }
        ddl.DataSource = ar;
        ddl.DataBind();
    }
    public static void fetch_days(DropDownList ddl)
    {
        ArrayList ar = new ArrayList();
        DateTime dt = DateTime.UtcNow.AddHours(5).AddMinutes(30);
        int year = dt.AddYears(1).Year;
        ar.Add("Select");
        for (int i = 1; i <= 31; i++)
        {
            ar.Add(i.ToString("00"));
        }
        ddl.DataSource = ar;
        ddl.DataBind();
    }
    public static void bind_ddl(DropDownList ddl, string query)
    {
        SqlDataAdapter ad = new SqlDataAdapter(query, My.conn);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        DataTable dt = ds.Tables[0];
        ArrayList ar = new ArrayList();
        ar.Add("Select");
        foreach (DataRow dr in dt.Rows)
        {
            ar.Add(dr[0].ToString());
        }
        ddl.DataSource = ar;
        ddl.DataBind();
    }
    public static void bind_ddl_other(DropDownList ddl, string query)
    {
        SqlDataAdapter ad = new SqlDataAdapter(query, My.conn);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        DataTable dt = ds.Tables[0];
        ArrayList ar = new ArrayList();
        ar.Add("Select");
        foreach (DataRow dr in dt.Rows)
        {
            ar.Add(dr[0].ToString());
        }
        ar.Add("Other");
        ddl.DataSource = ar;
        ddl.DataBind();
    }
    public static void bind_ddl_with_para(DropDownList ddl, string query)
    {

        DataSet ds = new DataSet();
        SqlConnection conn = new SqlConnection(My.conn);
        if (conn.State == ConnectionState.Closed) { conn.Open(); }
        SqlDataAdapter ad = new SqlDataAdapter(query, My.conn);
        ad.Fill(ds, "tests");
        DataTable dt = ds.Tables[0];
        int rowcount = dt.Rows.Count;
        if (rowcount == 0)
        {
            ddl.DataTextField = "Select";
            ddl.DataValueField = "Select";
        }
        else
        {
            ddl.DataTextField = ds.Tables[0].Columns[0].ToString();
            ddl.DataValueField = ds.Tables[0].Columns[1].ToString();
        }

        ddl.DataSource = ds.Tables[0];
        ddl.DataBind();
        ddl.Items.Insert(0, new ListItem("Select", "0"));
        if (conn.State == ConnectionState.Open) { conn.Close(); }

    }
    public static void bind_gridview(GridView gridview, string query)
    {
        SqlConnection conn = new SqlConnection(My.conn);
        SqlDataAdapter ad = new SqlDataAdapter(query, My.conn);
        DataSet ds = new DataSet();
        if (conn.State == ConnectionState.Closed) { conn.Open(); }
        ad.Fill(ds);
        gridview.DataSource = ds;
        gridview.DataBind();
        if (conn.State == ConnectionState.Open) { conn.Close(); }
    }
    public static void bind_datalist(DataList datalist, string query)
    {

        DataSet ds = new DataSet();
        SqlConnection conn = new SqlConnection(My.conn);
        if (conn.State == ConnectionState.Closed) { conn.Open(); }
        SqlDataAdapter adpc = new SqlDataAdapter(query, My.conn);
        adpc.Fill(ds);
        datalist.DataSource = ds;
        datalist.DataBind();
        if (conn.State == ConnectionState.Open) { conn.Close(); }
    }
    public static DataTable FillData(string query)
    {

        DataTable dtc = new DataTable();
        try
        {
            SqlConnection conn = new SqlConnection(My.conn);
            if (conn.State == ConnectionState.Closed) { conn.Open(); }
            SqlDataAdapter adpc = new SqlDataAdapter(query, My.conn);
            adpc.Fill(dtc);
            if (conn.State == ConnectionState.Open) { conn.Close(); }

        }
        catch (Exception ex)
        {

        }
        return dtc;
    }
    public static bool exeSql(string query)
    {
        try
        {
            SqlDataAdapter ad = new SqlDataAdapter(query, My.conn);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            return true;
        }
        catch (Exception esc)
        {
            return false;
        }
    }
    public static bool check_value(string query)
    {
        try
        {
            SqlDataAdapter ad = new SqlDataAdapter(query, My.conn);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DataTable dt = ds.Tables[0];
            if (dt.Rows.Count == 0)
            {
                return false;
            }
            else
            {
                return true;
            }

        }
        catch (Exception esc)
        {
            return false;
        }
    }
    public static DataTable datatable(string query)
    {
        SqlDataAdapter ad = new SqlDataAdapter(query, My.conn);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        DataTable dt = ds.Tables[0];
        return dt;
    }
    public static void submitException(Exception exception, string page)
    {
        SqlDataAdapter ad = new SqlDataAdapter("Select * from ExceptionDetails", My.conn);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        DataTable dt = ds.Tables[0];
        int rowcount = dt.Rows.Count;
        DataRow dr = dt.NewRow();
        dr[0] = exception;
        dr[1] = My.date();
        dr[2] = My.time();
        dr[3] = page;
        dt.Rows.Add(dr);
        SqlCommandBuilder cb = new SqlCommandBuilder(ad);
        ad.Update(dt);

    }
    public static void sendemail(string email, string subject, string message)
    {
        try
        {
            MailMessage msg = new MailMessage();
            msg.To.Add(email);
            msg.From = new MailAddress("anuttarafabrics@gmail.com");
            msg.Subject = subject;
            msg.IsBodyHtml = true;
            msg.Body = message;
            SmtpClient mySmtpClient = new SmtpClient();
            mySmtpClient.Credentials = new System.Net.NetworkCredential("anuttarafabrics@gmail.com", "anuttara@#fabrics2015");
            mySmtpClient.Host = "smtp.gmail.com";
            mySmtpClient.EnableSsl = true;
            mySmtpClient.Send(msg);

        }
        catch (Exception exc)
        {
            My.submitException(exc, "My.cs");
        }
    }
    public static bool sendEmail(string email, string subject, string message)
    {
        try
        {
            MailMessage msg = new MailMessage();
            msg.To.Add(email);
            msg.From = new MailAddress("anuttarafabrics@gmail.com");
            msg.Subject = subject;
            msg.IsBodyHtml = true;
            msg.Body = message;
            SmtpClient mySmtpClient = new SmtpClient();
            mySmtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            mySmtpClient.UseDefaultCredentials = false;
            mySmtpClient.Credentials = new System.Net.NetworkCredential("anuttarafabrics@gmail.com", "anuttara@#fabrics2015");
            mySmtpClient.Host = "smtp.gmail.com";
            mySmtpClient.Port = 587;
            mySmtpClient.EnableSsl = true;
            mySmtpClient.Send(msg);
            return true;

        }
        catch (Exception exc)
        {
            My.submitException(exc, "My.cs");
            return false;
        }
    }
    public static string find_pwd(string email)
    {
        string pwd = "";
        SqlDataAdapter ad = new SqlDataAdapter("Select * from User_registration where Email_id='" + email + "'", My.conn);
        DataSet ds = new DataSet();
        ad.Fill(ds, "User_registration");
        DataTable dt = ds.Tables[0];
        int rowcount = dt.Rows.Count;
        if (rowcount == 0)
        {
            // do nothing
        }
        else
        {
            pwd = dt.Rows[0][4].ToString();
        }
        return pwd;
    }
    public static bool check_emailid(string email)
    {
        try
        {
            SqlDataAdapter ad = new SqlDataAdapter("Select * from User_registration where Email_id='" + email + "'", My.conn);
            DataSet ds = new DataSet();
            ad.Fill(ds, "User_registration");
            DataTable dt = ds.Tables[0];
            int rowcount = dt.Rows.Count;
            if (rowcount == 0)
            {
                return false;
            }
            else
            {
                return true;
            }

        }
        catch (Exception exc)
        {
            My.submitException(exc, "My");
            return false;
        }
    }
    internal static string fetch_plan_description(string plandid)
    {
        string plandescription = "";
        try
        {
            SqlDataAdapter ad = new SqlDataAdapter("Select * from plan_details where plan_id='" + plandid + "'", My.conn);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DataTable dt = ds.Tables[0];
            int rowcount = dt.Rows.Count;
            if (rowcount != 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    plandescription = "<b>Duration</b> :" + dr["planduration"].ToString() + " " + dr["plan_duration_type"].ToString() + "<br/> <b>Rate</b> :" + dr["planrate"].ToString() + "<br/> <b>Discount</b> :" + dr["discount"].ToString() + "<br/> <b>Description</b> :" + dr["description"].ToString();
                }
            }
        }
        catch (Exception exc)
        {
            My.submitException(exc, "my");

        }
        return plandescription;
    }
    public static string fetch_web_counter()
    {
        string result = "";
        SqlDataAdapter ad = new SqlDataAdapter("select * from WebsiteCounter ", conn);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {
            DataTable dt = ds.Tables[0];
            DataRow dr = dt.NewRow();
            dr["counter"] = "101";
            result = "101";
            dt.Rows.Add(dr);
        }
        else
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (dr["counter"].ToString() == "")
                {

                    result = "101";
                    dr["counter"] = "101";
                }
                else
                {
                    result = dr["counter"].ToString();
                    dr["counter"] = Convert.ToDouble(dr["counter"]) + 1;
                }
                break;
            }
        }
        SqlCommandBuilder cb = new SqlCommandBuilder(ad);
        ad.Update(ds.Tables[0]);
        return result;
    }
    public static int countFunction(string query)
    {
        SqlDataAdapter ad = new SqlDataAdapter(query, conn);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        DataTable dt = ds.Tables[0];
        return dt.Rows.Count;
    }
    //------------------------------------------Insert Update Data
    public static Boolean InsertUpdateData(SqlCommand cmd)
    {
        String strConnString = My.conn;
        SqlConnection con = new SqlConnection(strConnString);
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;

        con.Open();
        cmd.ExecuteNonQuery();

        con.Close();
        con.Dispose();
        return true;
    }
    public static string registration_code()
    {

        string result = "";
        SqlDataAdapter ad = new SqlDataAdapter("select * from GlobalMaster", conn);
        DataSet ds = new DataSet();
        ad.Fill(ds, "GlobalMaster");
        DataTable dt = ds.Tables[0];
        if (ds.Tables[0].Rows.Count == 0)
        {
            DataRow dr = dt.NewRow();
            dr["reg_no"] = 1;
            result = "1";
            dt.Rows.Add(dr);

        }
        else
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (dr["reg_no"].ToString() == "")
                {
                    dr["reg_no"] = 1;
                    result = "1";
                }
                else
                {
                    dr["reg_no"] = Convert.ToDouble(dr["reg_no"]) + 1;
                    result = Convert.ToDouble(dr["reg_no"]).ToString("0000000000");
                }
                break;
            }
        }
        SqlCommandBuilder cb = new SqlCommandBuilder(ad);
        ad.Update(ds.Tables[0]);
        return "RMJSY" + result;

    }
}
