using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        DbBlogDiziEntities db = new DbBlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //var blog = db.TBLYORUM.ToList();
            //Repeater1.DataSource = blog;
            //Repeater1.DataBind();

            var deger = (from x in db.TBLYORUM
                         select new
                         {
                             x.YORUMID,
                             x.KULLANICIAD,
                             x.MAIL,
                             x.BASLIK,
                             x.TBLBLOG.BLOGBASLIK
                         }).ToList();
            Repeater1.DataSource = deger;
            Repeater1.DataBind();

        }
    }
}