using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje
{
    public partial class Bloglar : System.Web.UI.Page
    {
        DbBlogDiziEntities db = new DbBlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KULLANICI"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("Hoşgeldiniz: " + Session["KULLANICI"].ToString());
            }
            var blog1 = db.TBLBLOG.ToList();
            Repeater1.DataSource = blog1;
            Repeater1.DataBind();


        }
    }
}