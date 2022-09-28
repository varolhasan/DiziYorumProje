<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="BlogGuncelle.aspx.cs" Inherits="DiziYorumProje.BlogGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button1_Click"/>
    </form>
</asp:Content>
