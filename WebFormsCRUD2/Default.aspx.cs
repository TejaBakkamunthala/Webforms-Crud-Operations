using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsCRUD2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetProductList();
            }

        }

        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-9LF56231\SQLEXPRESS;Initial Catalog=WEBFORMS;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            int productid=int.Parse(TextBox1.Text);
            string itemName = TextBox2.Text;
            string specification =TextBox3.Text;    
            string unit=DropDownList1.SelectedValue;
            string status = RadioButtonList1.SelectedValue.ToString();
            DateTime cdate=DateTime.Parse(TextBox4.Text);
            con.Open();
            SqlCommand co = new SqlCommand("execute Insert_procedure '"+ productid + "','"+ itemName + "', '"+ specification + "','"+ unit + "','"+ status + "','"+ cdate + "'",con);
            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully Inserted');", true);
            GetProductList();
        }

        void GetProductList()
        {
            SqlCommand cd = new SqlCommand("execute GetAllProducts ", con);
            SqlDataAdapter sda=new SqlDataAdapter(cd);
            DataTable dt=new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Updatee(object sender, EventArgs e)
        {
            int productid = int.Parse(TextBox1.Text);
            string itemName = TextBox2.Text;
            string specification = TextBox3.Text;
            string unit = DropDownList1.SelectedValue;
            string status = RadioButtonList1.SelectedValue.ToString();
            DateTime cdate = DateTime.Parse(TextBox4.Text);
            con.Open();
            SqlCommand co = new SqlCommand("execute update_procedure '" + productid + "','" + itemName + "', '" + specification + "','" + unit + "','" + status + "','" + cdate + "'", con);
            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully Updated');", true);
            GetProductList();
        }

        protected void Delete(object sender, EventArgs e)
        {
            int productid = int.Parse(TextBox1.Text);
           
            con.Open();
            SqlCommand co = new SqlCommand("execute delete_procedure '" + productid + "'", con);
            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully Deleted');", true);
            GetProductList();

        }

        protected void Search(object sender, EventArgs e)
        {
            int productid = int.Parse(TextBox1.Text);

            con.Open();
            SqlCommand co = new SqlCommand("execute search_Procedure '" + productid + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(co);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Load(object sender, EventArgs e)
        {
            GetProductList();
        }
    }
}