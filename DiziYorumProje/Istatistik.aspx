﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Istatistik.aspx.cs" Inherits="DiziYorumProje.Istatistik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered" style="margin-top:20px;">
        <tr>
            <td>Toplam Blog Sayısı:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>Toplam Yorum Sayısı:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>Film Sayısı:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Dizi Sayısı:<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
            <td>Animasyon Sayısı:<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
            <td>En Fazla Yorumlu Blog:<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
