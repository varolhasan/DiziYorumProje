using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje
{
    public partial class YorumGuncelle : System.Web.UI.Page
    {
        DbBlogDiziEntities db = new DbBlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["YORUMID"]);
            if (Page.IsPostBack == false)
            {

                var bloglar = (from x in db.TBLBLOG
                               select new
                               {
                                   x.BLOGBASLIK,
                                   x.BLOGID
                               }).ToList();
                DropDownList1.DataSource = bloglar;
                DropDownList1.DataBind();

                var yorum = db.TBLYORUM.Find(id);
                TextBox1.Text = yorum.KULLANICIAD;
                TextBox2.Text = yorum.MAIL;
                TextBox3.Text = yorum.BASLIK;
                DropDownList1.SelectedValue = yorum.YORUMBLOG.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["YORUMID"]);
            var x = db.TBLYORUM.Find(id);
            x.KULLANICIAD = TextBox1.Text;
            x.MAIL = TextBox2.Text;
            x.BASLIK = TextBox3.Text;
            x.YORUMBLOG = byte.Parse(DropDownList1.SelectedValue);
            db.SaveChanges();
            Response.Redirect("Yorumlar.aspx");
        }
    }
}