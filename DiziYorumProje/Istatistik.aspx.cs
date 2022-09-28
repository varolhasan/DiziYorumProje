using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje
{
    public partial class Istatistik : System.Web.UI.Page
    {
        DbBlogDiziEntities db = new DbBlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Toplam Blog Sayısı
            var blog = db.TBLBLOG.Count();
            Label1.Text = blog.ToString();

            //Toplam Yorum Sayısı
            var yorum = db.TBLYORUM.Count();
            Label2.Text = yorum.ToString();

            //Film Sayısı
            var film = db.TBLBLOG.Where(x => x.BLOGTUR == 2).Count();
            Label3.Text = film.ToString();

            //Dizi Sayısı
            var dizi = db.TBLBLOG.Where(x => x.BLOGTUR == 1).Count();
            Label4.Text = dizi.ToString();

            //Animasyon Sayısı
            var animasyon = db.TBLBLOG.Where(x => x.BLOGTUR == 4).Count();
            Label5.Text = animasyon.ToString();

            //En Fazla Yorum Alan BLog
            var enfazlayorum = db.TBLBLOG.Where(a => a.BLOGID == (db.TBLYORUM.GroupBy(x => x.YORUMBLOG).
            OrderByDescending(x => x.Count()).Select(y => y.Key).FirstOrDefault())).Select(b => b.BLOGBASLIK).
            FirstOrDefault();
            Label6.Text = enfazlayorum.ToString();
        }
    }
}