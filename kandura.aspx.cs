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
    public partial class kandura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCartNumber();
            if (!IsPostBack)
            {
                SqlConnection myconnect = new SqlConnection(@"Data Source=DHANYA-SUDHA\SQLEXPRESS01;Initial Catalog=Database_class_Data;Integrated Security=True");
                myconnect.Open();
                string query = "SELECT * FROM Product_det where p_category= 'Women'";
                //SqlDataReader result = myconn1.ExecuteReader();
                SqlCommand myconn = new SqlCommand(query, myconnect);
                using (SqlDataAdapter sda = new SqlDataAdapter(myconn))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptPro.DataSource = dt;
                    rptPro.DataBind();
                }
                myconnect.Close();
            }
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
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }
    }
}