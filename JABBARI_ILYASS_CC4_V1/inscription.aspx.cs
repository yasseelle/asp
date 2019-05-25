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
    public partial class inscription : System.Web.UI.Page
    {
        SqlConnection cnx = new SqlConnection("Data Source=.;Initial Catalog=appuie_pédagogique;Integrated Security=True");
        DataSet ds = new DataSet();
        SqlDataAdapter adapter;
        SqlCommandBuilder build;
        protected void Page_Load(object sender, EventArgs e)
        {
            adapter = new SqlDataAdapter("select * from Utilisateurs", cnx);
            adapter.Fill(ds, "Utilisateurs");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataRow ligne = ds.Tables[0].NewRow();
            ligne[0] = TextBox1.Text;
            ligne[1] = TextBox2.Text;
            ligne[2] = TextBox3.Text;
            ligne[3] = TextBox4.Text;
            ligne[4] = TextBox5.Text;
            ligne[5] = DropDownList1.SelectedValue.ToString();
            ds.Tables[0].Rows.Add(ligne);
            build = new SqlCommandBuilder(adapter);
            adapter.Update(ds, "Utilisateurs");
            Label1.Text = "bien ajouter";
            

        }
    }
}