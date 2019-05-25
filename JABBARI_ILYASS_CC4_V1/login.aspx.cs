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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection cnx = new SqlConnection("Data Source=.;Initial Catalog=appuie_pédagogique;Integrated Security=True");
        DataSet ds = new DataSet();
        SqlDataAdapter adapter;
        protected void Page_Load(object sender, EventArgs e)
        {
             adapter = new SqlDataAdapter("select * from Utilisateurs", cnx);
            adapter.Fill(ds, "Utilisateurs");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int RS = -1;
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                if (ds.Tables[0].Rows[i][0].ToString() == Session["user"].ToString())
                {
                    RS = i;
                    break;
                }
            }

            if (RS != -1 && ds.Tables[0].Rows[RS][5].ToString() == "administrateure")
            {
                Response.Redirect("inscription.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            int RS = -1;
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                if (ds.Tables[0].Rows[i][0].ToString() == Login1.UserName && ds.Tables[0].Rows[i][4].ToString()== Login1.Password)
                {
                    RS = i;
                    break;
                }
            }

            if (RS != -1)
            {
                Session["user"] = Login1.UserName;
                Response.Redirect("inscription.aspx");
            }
            else
            {
                Login1.FailureText = "login ou mot de pass incorect";
                
            }
        }
    }
}