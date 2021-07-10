using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlTarwadaWebStore
{
    public partial class Default : System.Web.UI.Page
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
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

    }
}