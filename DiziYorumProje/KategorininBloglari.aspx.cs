using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje
{
    public partial class KategorininBloglari : System.Web.UI.Page
    {
        DbBlogDiziEntities db = new DbBlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["BLOGKATEGORI"]);
            var blog = db.TBLBLOG.Where(y => y.BLOGKATEGORI == x).ToList();
            Repeater1.DataSource = blog;
            Repeater1.DataBind();
        }
    }
}