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
    public partial class Cart : System.Web.UI.Page
    {
        Int64 CartTotal = 0;
        int newv = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["measure"] = 0.ToString();
            BindCartNumber();
            if (Request.Cookies["CartPID"] != null)
            {
                SqlConnection myconnect = new SqlConnection(@"Data Source=DHANYA-SUDHA\SQLEXPRESS01;Initial Catalog=Database_class_Data;Integrated Security=True");
                myconnect.Open();
                DataTable dt = new DataTable();
                string CookieData = Request.Cookies["CartPID"].Value.Split('=')[1];
                string[] CookieDataArray = CookieData.Split(',');
                if (CookieDataArray.Length > 0)
                {
                    h4Noitem.InnerText = "Cart (" + CookieDataArray.Length + ") items";
                   
                    

                    for (int i = 0; i > CookieDataArray.Length; i++)
                    {
                        
                        string q = "SELECT Product_det.*, Order_Cart.*, c_color.*FROMc_color INNER JOIN Order_Cart ON c_color.clr_id = Order_Cart.clr_cl AND c_color.clr_id = Order_Cart.clr_des INNER JOIN Product_det ON Order_Cart.pro = Product_det.p_id WHERE Order_Cart.session_details='" + Session["tell"] + "'AND Order_Cart.date_order= '" + DateTime.UtcNow.Date + "'";
                        
                        SqlCommand myconn = new SqlCommand(q, myconnect);
                        using (SqlDataAdapter sadap = new SqlDataAdapter(myconn))
                        {
                            sadap.Fill(dt);
                            SqlDataReader result = myconn.ExecuteReader();
                            
                            while (result.Read())
                            {
                                if (result.GetString(2) == "Women")
                                {
                                    Session["measure"] = 1.ToString();
                                }
                            }
                        }

                        CartTotal += Convert.ToInt64(dt.Rows[i]["p_price"]);
                    }
                    spanCartTotal.InnerText = CartTotal.ToString();
                    spantotal.InnerText = "Dhs. " + CartTotal.ToString();
                    divtotal.Visible = true;
                    Repeater1.DataSource = dt;
                    Repeater1.DataBind();
                }
                else 
                {
                    h4Noitem.InnerText = "Your cart is Empty";
                    divtotal.Visible = false;
                }
                
            }
            
            
        }
        
        protected void remove_Click(object sender, EventArgs e)
        {
            string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
            Button btn = (Button)(sender);
            string PIDSIZE = btn.CommandArgument;
            List<string> CookiePIDList = CookiePID.Split(',').Select(i => i.Trim()).Where(i => i!= string.Empty).ToList();
            CookiePIDList.Remove(PIDSIZE);
            string CookiePIDUpdate = String.Join(",", CookiePIDList.ToArray());
            if (CookiePIDUpdate == "")
            {
                HttpCookie CartProducts = Request.Cookies["CartPID"];
                CartProducts.Values["CartPID"] = null;
                CartProducts.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(CartProducts);
            }
            else
            {
                HttpCookie CartProducts = Request.Cookies["CartPID"];
                CartProducts.Values["CartPID"] = CookiePIDUpdate;
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);
            }
            SqlConnection myconnect = new SqlConnection(@"Data Source=DHANYA-SUDHA\SQLEXPRESS01;Initial Catalog=Database_class_Data;Integrated Security=True");
            myconnect.Open();
            string q = "DELETE FROM Order_Cart WHERE session_details='" + Session["tell"] + "'AND pro= '" + Eval("p_id") + "'";

            SqlCommand myconn = new SqlCommand(q, myconnect);
            using (SqlDataAdapter sadap = new SqlDataAdapter(myconn))
            {
                DataTable dd = new DataTable();
                sadap.Fill(dd);
                SqlDataReader result = myconn.ExecuteReader();
                while (result.Read())
                {
                    if (result.GetString(2) == "Women")
                    {
                        Session["measure"] = 1.ToString();
                    }
                }
            }
            Response.Redirect("Cart.aspx");
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

        protected void buy_Click(object sender, EventArgs e)
        {
            if (Session["measure"].Equals(1.ToString()))
            {
                using (SqlConnection connection = new SqlConnection(@"Data Source=DHANYA-SUDHA\SQLEXPRESS01;Initial Catalog=Database_class_Data;Integrated Security=True"))
                {
                    string sql = "INSERT INTO bill VALUES(@date_order,@session_details, @tot_price,@measure)";
                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        connection.Open();
                        cmd.Parameters.AddWithValue("@session_details", Session["User"]);
                        cmd.Parameters.AddWithValue("@date_order", DateTime.UtcNow.Date);
                        cmd.Parameters.AddWithValue("@tot_price", CartTotal);

                        cmd.ExecuteNonQuery();

                        newv = (int)cmd.ExecuteScalar();
                    }
                }
                Response.Redirect("measure.aspx?id="+ newv);
            }
            else
            {
                using (SqlConnection connection = new SqlConnection(@"Data Source=DHANYA-SUDHA\SQLEXPRESS01;Initial Catalog=Database_class_Data;Integrated Security=True"))
                {
                    string sql = "INSERT INTO bill VALUES(@date_order,@session_details, @tot_price)";
                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        connection.Open();
                        cmd.Parameters.AddWithValue("@session_details", Session["User"]);
                        cmd.Parameters.AddWithValue("@date_order", DateTime.UtcNow.Date);
                        cmd.Parameters.AddWithValue("@tot_price", CartTotal);

                        cmd.ExecuteNonQuery();

                        newv = (int)cmd.ExecuteScalar();
                    }
                }
                Response.Redirect("Order.aspx?id=" + newv);
            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }
    }
}