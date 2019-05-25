using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;

namespace JABBARI_ILYASS_CC4_V1
{
    /// <summary>
    /// Description résumée de WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Pour autoriser l'appel de ce service Web depuis un script à l'aide d'ASP.NET AJAX, supprimez les marques de commentaire de la ligne suivante. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {
        SqlConnection cnx = new SqlConnection("Data Source=.;Initial Catalog=appuie_pédagogique;Integrated Security=True");
        DataTable dt = new DataTable();
        SqlDataAdapter adapter;
        [WebMethod]
        public DataTable afficherDOC(int code)
        {

            adapter = new SqlDataAdapter("select * from Documents where codeTheme = " + code + "", cnx);
            adapter.Fill(dt);
            return dt;
        }
    }
}
