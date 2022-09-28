<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumGuncelle.aspx.cs" Inherits="DiziYorumProje.YorumGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" class="form-group">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Kullanıcı Adı" required=""
            Style="margin-bottom: 10px;"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Mail" required=""
            Style="margin-bottom: 10px;"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Yorum" required=""
            Style="margin-bottom: 10px;"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" required=""
            Style="margin-bottom: 10px;" DataTextField="BLOGBASLIK" DataValueField="BLOGID">
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button1_Click" />
    </form>
</asp:Content>
