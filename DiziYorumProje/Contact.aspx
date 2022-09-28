<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="DiziYorumProje.Contact" %>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
    <title>Personal Blog a Blogging Category Flat Bootstarp  Responsive Website Template | Contact :: w3layouts</title>
    <link href="/web/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="/web/css/style.css" rel='stylesheet' type='text/css' />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Personal Blog Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!----webfonts---->
    <link href='http://fonts.googleapis.com/css?family=Oswald:100,400,300,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic' rel='stylesheet' type='text/css'>
    <!----//webfonts---->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <!--end slider -->
    <!--script-->
    <script type="text/javascript" src="/web/js/move-top.js"></script>
    <script type="text/javascript" src="/web/js/easing.js"></script>
    <!--/script-->
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 900);
            });
        });
    </script>
    <!---->

</head>
<body>
    <!---header---->
    <div class="header">
        <div class="container">
            <div class="logo">
                <a href="index.html">
                    <img src="/web/images/logo.jpg" title="" /></a>
            </div>
            <!---start-top-nav---->
            <div class="top-menu">
                <div class="search">
                    <form>
                        <input type="text" placeholder="" required="">
                        <input type="submit" value="" />
                    </form>
                </div>
                <span class="menu"></span>
                <ul>
                    <li><a href="Default.aspx">BLOGLAR</a></li>
                    <li><a href="About.aspx">HAKKIMIZDA</a></li>
                    <li><a href="Contact.aspx">İLETİŞİM</a></li>
                    <div class="clearfix"></div>
                </ul>
            </div>
            <div class="clearfix"></div>
            <script>
                $("span.menu").click(function () {
                    $(".top-menu ul").slideToggle("slow", function () {
                    });
                });
            </script>
            <!---//End-top-nav---->
        </div>
    </div>
    <!--/header-->
    <div class="contact-content">
        <div class="container">
            <div class="contact-info">
                <h2>İLETİŞİM</h2>
                <p>
                    Blog sayfamızda bulunan film ve dizilere eklemek istedikleriniz için veya yorumlarda yaşacağınız herhangi bir problem
				 olursa bu panelden bizlere mesaj gönderebilirsiniz. Mesaj gönderme sırasında mail adresinizi doğru yazmanızı öneririz. 
                 Geri dönüşler için önemlidir.
                </p>
                <div class="contact-details">
                    <form runat="server">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Ad Soyad" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Mail" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Telefon" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Konu" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Mesajınız" required="" Height="100px" TextMode="MultiLine"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click" />
                    </form>
                </div>
                <div class="contact-details">
                    <div class="col-md-6 contact-map">
                        <h4>BİZ BURADAYIZ</h4>
                        <div class="mapouter"><div class="gmap_canvas"><iframe width="600" height="500" id="gmap_canvas" 
                            src="https://maps.google.com/maps?q=yenimahalle%20teleferik&t=&z=13&ie=UTF8&iwloc=&output=embed" 
                            frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                            <a href="https://putlocker-is.org">putlocker</a><br><style>.mapouter{position:relative;
                            text-align:right;height:500px;width:600px;}</style><a href="https://www.embedgooglemap.net">
                            google map codes for website</a><style>.gmap_canvas {overflow:hidden;background:none!important;
                            height:500px;width:600px;}</style></div></div>
                    </div>
                    <div class="col-md-6 company_address">
                        <h4>GET IN TOUCH</h4>
                        <p>500 Lorem Ipsum Dolor Sit,</p>
                        <p>22-56-2-9 Sit Amet, Lorem,</p>
                        <p>USA</p>
                        <p>Phone:(00) 222 666 444</p>
                        <p>Fax: (000) 123 456 78 0</p>
                        <p>Email: <a href="mailto:info@example.com">info@mycompany.com</a></p>
                        <p>Follow on: <a href="#">Facebook</a>, <a href="#">Twitter</a></p>
                    </div>
                    <div class="clearfix"></div>
                </div>


            </div>
        </div>
    </div>
    <!---->
    <div class="footer">
        <div class="container">
            <p>Copyrights © 2020 Dizi Blog Tüm Hakları Saklıdır | Template by <a href="http://w3layouts.com/">W3layouts</a></p>
        </div>
    </div>
