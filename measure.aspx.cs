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
    public partial class measure : System.Web.UI.Page
    {
        int modified;
        Int64 id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt64(Request.QueryString["id"]);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(@"Data Source=DHANYA-SUDHA\SQLEXPRESS01;Initial Catalog=Database_class_Data;Integrated Security=True"))
            {
                string sql = "INSERT INTO Measurement VALUES(@ses_id_mob,@m_length,@sholder,@arm_hole,@arm,@wrist,@bust,@waist,@hip)";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    conn.Open();
                    cmd.Parameters.AddWithValue("@ses_id_mob", Session["User"].ToString());
                    cmd.Parameters.AddWithValue("@m_length", int.Parse(length.Text));
                    cmd.Parameters.AddWithValue("@sholder", int.Parse(shoulder.Text));
                    cmd.Parameters.AddWithValue("@arm_hole", int.Parse(arm.Text));
                    cmd.Parameters.AddWithValue("@arm", int.Parse(sleeve.Text));
                    cmd.Parameters.AddWithValue("@wrist", int.Parse(wrist.Text));
                    cmd.Parameters.AddWithValue("@bust", int.Parse(bust.Text));
                    cmd.Parameters.AddWithValue("@waist", int.Parse(waist.Text));
                    cmd.Parameters.AddWithValue("@hip", int.Parse(hip.Text));
                    cmd.ExecuteNonQuery();
                    modified = (int)cmd.ExecuteScalar();
                }
            }
            using (SqlConnection connection = new SqlConnection(@"Data Source=DHANYA-SUDHA\SQLEXPRESS01;Initial Catalog=Database_class_Data;Integrated Security=True"))
            {
                string sql = "INSERT INTO bill VALUES(@measure) WHERE b_id='" + id+ "'";
                using (SqlCommand cmd = new SqlCommand(sql, connection))
                {
                    connection.Open();
                    
                    cmd.Parameters.AddWithValue("@measure",modified);

                    cmd.ExecuteNonQuery();
                }
            }
            Response.Redirect("Order.aspx?id="+id);
        }
    }
}