<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Roya.aspx.cs" Inherits="ReportFiducia.Roya" Title="Report Fiducia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function() {
            $('.tanggal').datepicker({
                dateFormat: 'mm/dd/yy',
                changeMonth: true,
                changeYear: true,
                
                //}
            });

            $('.DateDue').datepicker({
                dateFormat: 'mm/dd/yy',
                changeMonth: true,
                changeYear: true,
               
                //}
            });
        });
        
 </script>
 </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <asp:Label ID="error" runat="server" ForeColor="Red"></asp:Label>
<table class="table">
<tr>
<td colspan="2"><h3> Report Roya Fiducia   </h3></td>
</tr>
  <tr>
    <td > Username</td>
    <td > 

         <asp:Label ID="USERNAME" runat="server"></asp:Label>

    </td>

    </tr>
<tr>
<td > Date From</td>
<td > 
    <asp:TextBox ID="from" runat="server" class="tanggal" AutoComplete="off" 
        Width="200"  ontextchanged="from_TextChanged"></asp:TextBox> &nbsp 
    To &nbsp <asp:TextBox ID="to" runat="server" AutoComplete="off" class="tanggal" 
        Width="200"  ontextchanged="to_TextChanged"></asp:TextBox></td>
</tr>
<style>
        .ui-datepicker select.ui-datepicker-month,
         .ui-datepicker select.ui-datepicker-year{
   background: white;
   border: 1px solid #555;
   color: black;
}
</style>
</td></tr>
<td colspan="2">
    <asp:Button ID="Button2" runat="server" Text="Search" class="btn btn-primary" 
        onclick="Button2_Click"/>
        
        <asp:Button ID="Button1" runat="server" Text="Save Excell" 
        class="btn btn-primary" onclick="Button1_Click" 
         />
    
</td>
</tr>
</table>

<div class="table-responsive" style="height:800px;overflow:scroll">
   <asp:GridView ID="Grid1" runat="server" AutoGenerateColumns="False" AllowPaging=true
        CssClass="table" Width="75%" 
                OnPageIndexChanging="OnPageIndexChanging" >
    <Columns>
                        
                            <asp:TemplateField HeaderText="NO" HeaderStyle-Width="3%" ItemStyle-CssClass="centergv">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex+1 %>
                                </ItemTemplate>

                                <HeaderStyle Width="3%"></HeaderStyle>

                                <ItemStyle CssClass="centergv"></ItemStyle>
                            </asp:TemplateField> 
                            
                            <asp:BoundField DataField="AGRMNT_NO" HeaderText="NOMOR KONTRAK">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="OFFICE_CODE" HeaderText="KODE CABANG">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="OFFICE_NAME" HeaderText="NAMA CABANG">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CUST_NAME" HeaderText="NAMA NASABAH">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CONTRACT_STAT" HeaderText="STATUS KONTRAK">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DEED_NO" HeaderText="NO AKTA">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DEED_DT" HeaderText="TGL AKTA">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DEED_DT" HeaderText="TGL AKTA">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CERT_NO" HeaderText="NO SERTIF">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CERT_DT" HeaderText="TGL SERTIF">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NOTARY_NAME" HeaderText="NAMA NOTARIS">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NOTARY_CITY" HeaderText="WILAYAH NOTARIS">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                        </Columns>
                        <PagerSettings Mode="NumericFirstLast" PageButtonCount="4" FirstPageText="First" LastPageText="Last"/>
                        <EmptyDataTemplate>
                            <span><b>
                                <p style="color: #000">
                                    &nbsp;&nbsp;Sorry. There is no Data</p>
                            </b></span>
                        </EmptyDataTemplate>

                        <HeaderStyle CssClass="bgprimer" ForeColor="Black"></HeaderStyle>

                        <AlternatingRowStyle BackColor="#E5E7E9"></AlternatingRowStyle>
                    </asp:GridView>

</div>
</div>
</asp:Content>
