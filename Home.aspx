<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ReportFiducia.Home" Title="Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

     <asp:Label ID="USERNAME" runat="server" Visible="false"></asp:Label>
        
    <table class="table table-striped shadow" id="Menu" runat="server" style="display:none">
    
    <tr style="background:gray;color:White">
    <td>MENU</td>
    </tr>
    
    <tr runat="server" id="cra">
    <td><a  id="newppd" runat="server"> Report Fiducia New PPD </a></td>
    </tr>
    
     <tr runat="server" id="Tr1">
    <td><a  id="oc" runat="server"> Report Fiducia Over Credit </a></td>
    </tr>
    
    
    <tr runat="server" id="coll">
    <td><a  id="roya" runat="server"> Report Roya Fiducia </a></td>
    </tr>
    
    <tr runat="server" id="Tr2">
    <td><a  id="aging" runat="server"> Report Aging Fiducia </a></td>
    </tr>
    
     
    </table>
    
    
   
    
    
</div>
</asp:Content>
