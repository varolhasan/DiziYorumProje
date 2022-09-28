<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategorininBloglari.aspx.cs" Inherits="DiziYorumProje.KategorininBloglari" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="col-md-8 content-main">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="content-grid">
                    <div class="content-grid-info">
                        <img src="<%# Eval("BLOGGORSEL") %>" alt="" style="width: 90%; height: 350px; position: relative; left: 30px;" />
                        <div class="post-info">
                            <h4><a href="BlogDetay.aspx?BLOGID=<%# Eval("BLOGID") %>">
                                <%# Eval("BLOGBASLIK") %>
                            </a><%# Eval("BLOGTARIH") %></h4>
                            <p><%# Eval("BLOGICERIK") %></p>
                            <a href="BlogDetay.aspx?BLOGID=<%# Eval("BLOGID") %>"><span></span>DEVAMINI OKU</a>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
