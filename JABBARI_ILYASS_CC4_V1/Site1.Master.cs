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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        SqlConnection cnx = new SqlConnection("Data Source=.;Initial Catalog=appuie_pédagogique;Integrated Security=True");
        DataSet ds = new DataSet();
        SqlDataAdapter adapter;
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
            adapter = new SqlDataAdapter("select * from Utilisateurs", cnx);
            adapter.Fill(ds, "Utilisateurs");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int RS = -1;
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                if (ds.Tables[0].Rows[i][0].ToString()==Session["user"].ToString())
                {
                    RS = i;
                    break;
                }
            }

            if (RS!=-1 && ds.Tables[0].Rows[RS][5].ToString()== "administrateure")
            {
                Response.Redirect("inscription.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/partager_documet.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Modifier_lister_document.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/affiche_document_par_date.aspx"); 
        }

        protected void Button6_Click(object sender, EventArgs e)
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
                Response.Redirect("~/afficher_momber_compte.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }
           
        
        }
    }
}