<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YeniBlog.aspx.cs" Inherits="DiziYorumProje.YeniBlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="margin:25px;">Yeni Blog Ekleme Sayfası</h2>
    <form runat="server" class="form-group">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Blog Başık" required="" 
            style="margin-bottom:10px;"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Blog Tarih" required="" 
            style="margin-bottom:10px;"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Blog Görsel" required="" 
            style="margin-bottom:10px;"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Blog İçerik" required="" 
            style="margin-bottom:10px;" Height="100px" TextMode="MultiLine"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" required=""
            style="margin-bottom:10px;" DataTextField="TURAD" DataValueField="TURID"></asp:DropDownList>
       <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" required=""
            style="margin-bottom:10px;" DataTextField="KATEGORIAD" DataValueField="KATEGORIID"></asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="Button1_Click" />
    </form>
</asp:Content>
