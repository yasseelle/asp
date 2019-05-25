using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace JABBARI_ILYASS_CC4_V1
{
    public partial class partager_documet : System.Web.UI.Page
    {
        SqlConnection cnx = new SqlConnection("Data Source=.;Initial Catalog=appuie_pédagogique;Integrated Security=True");
        DataSet ds = new DataSet();
        SqlDataAdapter adapter;
        SqlCommandBuilder builder;
        protected void Page_Load(object sender, EventArgs e)
        {
            adapter = new SqlDataAdapter("select * from Documents", cnx);
            adapter.Fill(ds, "Documents");
            Label1.Text = Session["user"].ToString();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            DataRow ligne = ds.Tables[0].NewRow();
            ligne[0] = int.Parse(TextBox1.Text);
            ligne[1] = TextBox2.Text;
            ligne[2] = TextBox3.Text;
            ligne[3] = Calendar1.SelectedDate;
            ligne[4] = TextBox4.Text;
            ligne[5] = DropDownList1.SelectedValue.ToString();
            ligne[6] = Label1.Text;
            ds.Tables[0].Rows.Add(ligne);
           builder  = new SqlCommandBuilder(adapter);
            adapter.Update(ds, "Documents");
            Label2.Text = "bien partager";
        }
    }
}