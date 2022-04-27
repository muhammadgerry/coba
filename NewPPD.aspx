<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NewPPD.aspx.cs" Inherits="ReportFiducia.NewPPD" Title="Report Fiducia" %>
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
<td colspan="2"><h3> Report All Fiducia New PPD   </h3></td>
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
                            
                            <asp:BoundField DataField="PEMBERI FIDUSIA" HeaderText="PEMBERI FIDUSIA">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TEMPAT LAHIR" HeaderText="TEMPAT LAHIR">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TANGGAL LAHIR" HeaderText="TANGGAL LAHIR">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PEKERJAAN" HeaderText="PEKERJAAN">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ALAMAT" HeaderText="ALAMAT">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="RT" HeaderText="RT">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="RW" HeaderText="RW">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="KELURAHAN" HeaderText="KELURAHAN">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="KECAMATAN" HeaderText="KECAMATAN">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="KABUPATEN" HeaderText="KABUPATEN">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PROVINSI" HeaderText="PROVINSI">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IDENTITAS NUMBER" HeaderText="IDENTITAS NUMBER">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TANGGAL KUASA" HeaderText="TANGGAL KUASA">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                              <asp:TemplateField HeaderText="NOMOR KONTRAK">
                                  <ItemTemplate>
                                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("NOMOR_KONTRAK") %>'></asp:Label>
                                  </ItemTemplate>
                                  </asp:TemplateField>
                            <asp:BoundField DataField="NAMA DEBITUR" HeaderText="NAMA DEBITUR">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="JENIS KELAMIN" HeaderText="JENIS KELAMIN">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="HUTANG POKOK" HeaderText="HUTANG POKOK">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NILAI JAMINAN" HeaderText="NILAI JAMINAN">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NILAI BARANG" HeaderText="NILAI BARANG">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MERK" HeaderText="MERK">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TYPE" HeaderText="TYPE">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TAHUN" HeaderText="TAHUN">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="WARNA" HeaderText="WARNA">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NOMOR RANGKA" HeaderText="NOMOR RANGKA">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NOMOR MESIN" HeaderText="NOMOR MESIN">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                              <asp:BoundField DataField="NOMOR BPKB" HeaderText="NOMOR BPKB">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                             <asp:BoundField DataField="NAMA_BPKB" HeaderText="NAMA_BPKB">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                             <asp:BoundField DataField="ATAS NAMA KUITANSI" HeaderText="ATAS NAMA KUITANSI">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                              <asp:BoundField DataField="NO AKTA" HeaderText="NO AKTA">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                               <asp:BoundField DataField="AKTA DATE" HeaderText="AKTA DATE">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                             <asp:BoundField DataField="NO SERTIFIKAT" HeaderText="NO SERTIFIKAT">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                             <asp:BoundField DataField="SERTIFIKAT DATE" HeaderText="SERTIFIKAT DATE">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                              <asp:BoundField DataField="TENOR" HeaderText="TENOR">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                              <asp:BoundField DataField="MULAI ANGSURAN" HeaderText="MULAI ANGSURAN">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                             <asp:BoundField DataField="BERAKHIR ANGSURAN" HeaderText="BERAKHIR ANGSURAN">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                               <asp:BoundField DataField="KODE POS" HeaderText="KODE POS">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>        
                            <asp:BoundField DataField="NO HANDPHONE" HeaderText="NO HANDPHONE">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>                
                            <asp:BoundField DataField="TIPE" HeaderText="TIPE">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="BRANCH_NAME" HeaderText="BRANCH_NAME">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NPWP" HeaderText="NPWP">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NOTARY_CODE" HeaderText="NOTARY CODE">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NAMA NOTARIS" HeaderText="NAMA NOTARIS">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TGL PPD" HeaderText="TGL PPD">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                             <asp:BoundField DataField="TGL KIRIM KE NOTARIS" HeaderText="TGL KIRIM KE NOTARIS">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                             <asp:BoundField DataField="TGL UPLOAD LEGALITAS" HeaderText="TGL UPLOAD LEGALITAS">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                             <asp:BoundField DataField="TGL UPLOAD SERTIFIKAT" HeaderText="TGL UPLOAD SERTIFIKAT">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TGL VERIFIKASI SERTIFIKAT" HeaderText="TGL VERIFIKASI SERTIFIKAT">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="OD DAYS UPLOAD LEGALITAS" HeaderText="OD DAYS UPLOAD LEGALITAS">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="OD DAYS UPLOAD SERTIFIKAT" HeaderText="OD DAYS UPLOAD SERTIFIKAT">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                             <asp:BoundField DataField="OD DAYS VERIFIKASI SERTIFIKAT" HeaderText="OD DAYS VERIFIKASI SERTIFIKAT">
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