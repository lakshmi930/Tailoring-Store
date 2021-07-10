using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace AlTarwadaWebStore
{
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
       
        public void click_submit_cus(object sender, EventArgs e)
        {
            string PID = Request.QueryString["PID"];
            string Fname=fname.Text;
            string Lname = lname.Text;
            string tell = telno.Text;
            string mail = email.Text;
            string emi = city.Text;
            string add1 = addr1.Text;
            string add2 = addr2.Text;
            string contr = cntry.Text;
            Session["User"] = tell;
            using (SqlConnection connection = new SqlConnection(@"Data Source=DHANYA-SUDHA\SQLEXPRESS01;Initial Catalog=Database_class_Data;Integrated Security=True"))
            {
                string sql = "INSERT INTO customer_details VALUES(@cust_First_name, @cust_Last_name, @cust_mob, @cust_email, @emirate, @cust_Address1, @cust_Address2, @country)";
                using (SqlCommand cmd = new SqlCommand(sql, connection))
                {
                    connection.Open();
                    cmd.Parameters.AddWithValue("@cust_First_name", Fname);
                    cmd.Parameters.AddWithValue("@cust_Last_name", Lname);
                    cmd.Parameters.AddWithValue("@cust_mob", tell);
                    cmd.Parameters.AddWithValue("@cust_email", mail);
                    cmd.Parameters.AddWithValue("@emirate", emi);
                    cmd.Parameters.AddWithValue("@cust_Address1", add1);
                    cmd.Parameters.AddWithValue("@cust_Address2", add2);
                    cmd.Parameters.AddWithValue("@country", contr);
                    cmd.ExecuteNonQuery();
                }
            }
            Response.Redirect("~/ProductView.aspx");
        }
        
    }
}