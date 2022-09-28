using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        DbBlogDiziEntities db = new DbBlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var bloglar1 = db.TBLBLOG.OrderByDescending(x => x.BLOGID).Take(5).ToList();
            Repeater2.DataSource = bloglar1;
            Repeater2.DataBind();

            var bloglar2 = db.TBLYORUM.OrderByDescending(x => x.YORUMID).Take(5).ToList();
            Repeater1.DataSource = bloglar2;
            Repeater1.DataBind();

            var bloglar3 = db.TBLBLOG.OrderBy(x => x.BLOGTARIH).Take(5).ToList();
            Repeater3.DataSource = bloglar3;
            Repeater3.DataBind();

            var bloglar4 = db.TBLKATEGORI.OrderBy(x => x.KATEGORIAD).ToList();
            Repeater4.DataSource = bloglar4;
            Repeater4.DataBind();
        }
    }
}