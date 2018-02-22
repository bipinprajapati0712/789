using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProductBO;
using ProductDAL;
using System.Data.SqlClient;

namespace Product
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }         

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pname = TextBox1.Text;
            string cat = DropDownList1.SelectedItem.Value;
            double up = Double.Parse(TextBox2.Text);
            int tna = Convert.ToInt32(TextBox3.Text);
            string desc = TextBox4.Text;

            Product123 P = new Product123 (pname, up, tna, cat,desc );
            Productado pado = new Productado();
            int sid=pado.AddProduct(P);

           Label1.Text = "Your Product Id is-"+sid;

            GridView1.DataSource = pado.ViewProduct();
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }

       /* protected void Button2_Click(object sender, EventArgs e)
        {
            Productado pa = new Productado();
           
            SqlDataReader dr = pa.ViewProduct();
            while (dr.Read())
            {

                Response.Write("<script> alert('The id is " + dr[0] + " product name is" + dr[1] + " category is" + dr[2] + " unit price is" + dr[3] + "')</script>");
            }
            //Response.Redirect("WebForm2.aspx");

           // Page.ClientScript.RegisterStartupScript(
 //.GetType(), "OpenWindow", "window.open('WebForm2.aspx','_newtab');", true);
 */
            

        
    //}
}
