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
    public partial class Order : System.Web.UI.Page
    {
        Int64 id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt64(Request.QueryString["id"]);
            BindCartNumber();
            SqlConnection myconnect1 = new SqlConnection(@"Data Source=DHANYA-SUDHA\SQLEXPRESS01;Initial Catalog=Database_class_Data;Integrated Security=True");
            myconnect1.Open();
            String q2 = "SELECT * FROM bill WHERE b_id= '" + id+ "'";
            SqlCommand myconn1 = new SqlCommand(q2, myconnect1);
            myconn1.ExecuteReader();
            myconnect1.Close();
    
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