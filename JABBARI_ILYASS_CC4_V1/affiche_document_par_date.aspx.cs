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
    public partial class affiche_document_par_date : System.Web.UI.Page
    {
        SqlConnection cnx = new SqlConnection("Data Source=.;Initial Catalog=appuie_pédagogique;Integrated Security=True");
        DataSet ds = new DataSet();
        SqlDataAdapter adapter;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlDataSource2.FilterExpression = "logins='" + DropDownList1.SelectedValue + "'";   
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlDataSource2.FilterExpression = "dateEnvoi between'" + Calendar1.SelectedDate + "' and '"+Calendar2.SelectedDate+"'";

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label lbl = (Label)GridView1.SelectedRow.Cells[7].FindControl("Label1");
            int code = int.Parse(lbl.Text);

            adapter = new SqlDataAdapter("select * from Commentaires where codeDoc = '"+code+"'", cnx);
            adapter.Fill(ds, "Commentaires");

            GridView2.DataSource = ds.Tables[0];
            GridView2.DataBind();
        }
    }
}