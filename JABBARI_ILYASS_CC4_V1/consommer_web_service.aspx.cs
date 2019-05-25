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
    public partial class consommer_web_service : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        WebService1 wbs1 = new WebService1();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            dt = wbs1.afficherDOC(int.Parse(TextBox1.Text));
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}