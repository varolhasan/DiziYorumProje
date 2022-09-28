using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje
{
    public partial class BlogGuncelle : System.Web.UI.Page
    {
        DbBlogDiziEntities db = new DbBlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            if (Page.IsPostBack == false)
            {

                var turler = (from x in db.TBLTUR
                              select new
                              {
                                  x.TURAD,
                                  x.TURID
                              }).ToList();
                DropDownList1.DataSource = turler;
                DropDownList1.DataBind();

                var kategoriler = (from x in db.TBLKATEGORI
                                   select new
                                   {
                                       x.KATEGORIAD,
                                       x.KATEGORIID
                                   }).ToList();
                DropDownList2.DataSource = kategoriler;
                DropDownList2.DataBind();

                var deger = db.TBLBLOG.Find(id);
                TextBox1.Text = deger.BLOGBASLIK;
                TextBox2.Text = deger.BLOGTARIH.ToString();
                TextBox3.Text = deger.BLOGGORSEL;
                TextBox4.Text = deger.BLOGICERIK;
                DropDownList1.SelectedValue = deger.BLOGTUR.ToString();
                DropDownList2.SelectedValue = deger.BLOGKATEGORI.ToString();
            }            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            var x = db.TBLBLOG.Find(id);
            x.BLOGBASLIK = TextBox1.Text;
            x.BLOGICERIK = TextBox4.Text;
            x.BLOGTARIH = DateTime.Parse(TextBox2.Text);
            x.BLOGGORSEL = TextBox3.Text;
            x.BLOGTUR = byte.Parse(DropDownList1.SelectedValue);
            x.BLOGKATEGORI = byte.Parse(DropDownList2.SelectedValue);
            db.SaveChanges();
            Response.Redirect("Bloglar.aspx");
        }
    }
}