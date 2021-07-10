using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;



namespace AlTarwadaWebStore
{
    public partial class ProductView : System.Web.UI.Page
    {
        int selectedCloth = 0;
        public Int64 Pid;
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCartNumber();
            Pid = Convert.ToInt64(Request.QueryString["PID"]);
            if (Session["PID"] == null)
            {
                Session["PID"] = Pid;
            }
            if (!IsPostBack)
            {
                SqlConnection myconnect = new SqlConnection(@"Data Source=DHANYA-SUDHA\SQLEXPRESS01;Initial Catalog=Database_class_Data;Integrated Security=True");
                myconnect.Open();
                string query = @"SELECT * FROM [Product_det] WHERE p_id='" + Session["PID"] + "'";
                SqlCommand myconn = new SqlCommand(query, myconnect);
                using (SqlDataAdapter sadap = new SqlDataAdapter(myconn))
                {
                    DataTable dt = new DataTable();
                    sadap.Fill(dt);
                    rpPro.DataSource = dt;
                    rpPro.DataBind();
                    rpPro1.DataSource = dt;
                    rpPro1.DataBind();
                }
                myconnect.Close();
            }
            cloth_color.SelectedIndex = 0;
            design_color.SelectedIndex = 0;
            

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

        
        protected void cloth_color_Load(object sender, EventArgs e)
        {
            SqlConnection myconnect = new SqlConnection(@"Data Source=DHANYA-SUDHA\SQLEXPRESS01;Initial Catalog=Database_class_Data;Integrated Security=True");

            string query = @"SELECT *FROM [c_color]";
            using (SqlCommand cmd = new SqlCommand(query))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Connection = myconnect;
                myconnect.Open();
                cloth_color.DataSource = cmd.ExecuteReader();
                cloth_color.DataTextField = "clr_name";
                cloth_color.DataValueField = "clr_id";
                cloth_color.DataBind();
                myconnect.Close();
            }
        }

        protected void cloth_color_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            string colr = cloth_color.SelectedItem.Text;
            cloth_color.BackColor = System.Drawing.Color.FromName(colr);
            //TextBox1.BackColor = Color.FromName(co); 
        }

        protected void design_color_Load(object sender, EventArgs e)
        {
            SqlConnection myconnect = new SqlConnection(@"Data Source=DHANYA-SUDHA\SQLEXPRESS01;Initial Catalog=Database_class_Data;Integrated Security=True");

            string query = @"SELECT *FROM [c_color]";
            using (SqlCommand cmd = new SqlCommand(query))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Connection = myconnect;
                myconnect.Open();
                design_color.DataSource = cmd.ExecuteReader();
                design_color.DataTextField = "clr_name";
                design_color.DataValueField = "clr_id";
                design_color.DataBind();
                myconnect.Close();
            }
        }

        protected void addcart_Click(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("Customer.aspx");
            }
            
            if (cloth_type.SelectedValue == null)
            {
                err.Text = "Select your preferent cloth type!!";
            }
            else
            {
                selectedCloth = Convert.ToInt32(cloth_type.SelectedValue);
                string sc = cloth_type.SelectedValue;
                err.Text = "";
               
                if (Request.Cookies["CartPID"] != null)
                {
                    string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                    CookiePID = CookiePID + "," + Pid + "-" + sc;

                    HttpCookie CartProducts = new HttpCookie("CartPID");
                    CartProducts.Values["CartPID"] = Pid.ToString();
                    CartProducts.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(CartProducts);
                }
                else
                {
                    HttpCookie CartProducts = new HttpCookie("CartPID");
                    CartProducts.Values["CartPID"] = Pid.ToString() + "-" + sc; 
                    CartProducts.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(CartProducts);
                }

                using (SqlConnection connection = new SqlConnection(@"Data Source=DHANYA-SUDHA\SQLEXPRESS01;Initial Catalog=Database_class_Data;Integrated Security=True"))
                {
                    string sql = "INSERT INTO Order_Cart VALUES(@session_details,@pro,@clr_cl,@clr_des,@cloth_type,@date_order)";
                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        connection.Open();
                        cmd.Parameters.AddWithValue("@session_details", Session["User"]);
                        cmd.Parameters.AddWithValue("@pro", Convert.ToInt64(Session["PID"]));
                        cmd.Parameters.AddWithValue("@clr_cl", cloth_color.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@clr_des", design_color.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@cloth_type", cloth_type.SelectedValue);
                        cmd.Parameters.AddWithValue("@date_order", DateTime.UtcNow.Date);
                      
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            Session["PID"] = null;
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


     