﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="DiziYorumProje.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="margin:25px;">Yorumlar Listesi</h2>
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>KULLANICI ADI</th>
            <th>MAİL</th>
            <th>YORUM</th>
            <th>YORUMBLOG</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("KULLANICIAD") %></td>
                    <td><%# Eval("MAIL") %></td>
                    <td><%# Eval("BASLIK") %></td>
                    <td><%# Eval("BLOGBASLIK") %></td>
                    <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "YorumSil.aspx?YORUMID=" + 
                                Eval("YORUMID") %>' CssClass="btn btn-danger">
                        SİL</asp:HyperLink></td>
                    <td><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "YorumGuncelle.aspx?YORUMID=" + 
                                Eval("YORUMID") %>' CssClass="btn btn-warning">GÜNCELLE</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>
