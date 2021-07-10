using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AlTarwadaWebStore
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCartNumber();
        }
        protected void lwork(object sender, EventArgs e)
        {
            Session["query"] = "Lace";
            Response.Redirect("Products.aspx");
        }
        protected void ework(object sender, EventArgs e)
        {
            Session["query"] = "Embroidery";
            Response.Redirect("Products.aspx");
        }
        protected void bwork(object sender, EventArgs e)
        {
            Session["query"] = "Baby bag ";
            Response.Redirect("Products.aspx");
        }
        protected void fwork(object sender, EventArgs e)
        {
            Session["query"] = "Baby full set";
            Response.Redirect("Products.aspx");
        }
        protected void cwork(object sender, EventArgs e)
        {
            Session["query"] = "Cradle";
            Response.Redirect("Products.aspx");
        }
        public void BindCartNumber()
        {
            if (Request.Cookies["CartPID"] != null)
            {
                string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                string[] ProductArray = CookiePID.Split(',');
                int ProductCount = ProductArray.Length;
                pcount.InnerText = ProductCount.ToString();
            }
            else
            {
                pcount.InnerText = 0.ToString();
            }
        }
        public void dbsend(object sender, EventArgs e)
        {
            string name = fname.Text;
            string num = tel.Text;
            //int num = int.Parse(tel.Text);
            string mail = email.Text;
            string comments = com.Text.ToString();

            using (SqlConnection connection = new SqlConnection(@"Data Source=DHANYA-SUDHA\SQLEXPRESS01;Initial Catalog=Database_class_Data;Integrated Security=True"))
            {
                string sql = "INSERT INTO comments VALUES (@com_name,@mob,@c_email,@comts)";
                using (SqlCommand cmd = new SqlCommand(sql, connection))
                {

                    connection.Open();
                    cmd.Parameters.AddWithValue("@com_name", name);
                    cmd.Parameters.AddWithValue("@mob", num);
                    cmd.Parameters.AddWithValue("@c_email", mail);
                    cmd.Parameters.AddWithValue("@comts", comments);

                    cmd.ExecuteNonQuery();
                }
            }
            com.Text = "";
            fname.Text = "";
            email.Text = "";
            tel.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }
    }
}