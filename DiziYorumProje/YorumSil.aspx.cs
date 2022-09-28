using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje
{
    public partial class YorumSil : System.Web.UI.Page
    {
        DbBlogDiziEntities db = new DbBlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["YORUMID"]);
            var deger = db.TBLYORUM.Find(id);
            db.TBLYORUM.Remove(deger);
            db.SaveChanges();
            Response.Redirect("Yorumlar.aspx");
        }
    }
}