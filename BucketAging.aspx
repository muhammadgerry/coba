<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BucketAging.aspx.cs" Inherits="ReportFiducia.BucketAging" Title="Report Fiducia" %>
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
<td colspan="2"><h3> Report Bucket Aging Fiducia   </h3></td>
</tr>
  <tr>
    <td > Username</td>
    <td > 

         <asp:Label ID="USERNAME" runat="server"></asp:Label>

    </td>

    </tr>
<tr>
<td > Branch From</td>
<td > 
    <asp:DropDownList ID="DropDownList1" runat="server" Width="200" Height="25">
    </asp:DropDownList>
    &nbsp 
    To 
    &nbsp 
    <asp:DropDownList ID="DropDownList2" runat="server" Width="200" Height="25">
    </asp:DropDownList>
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
<tr>
<td > Customer Name</td>
<td > 
    <asp:TextBox ID="cust_name" runat="server"  AutoComplete="off" 
        Width="200"  ontextchanged="cust_name_TextChanged"></asp:TextBox></td></tr>
<tr>
<td > No Contract</td>
<td > 
    <asp:TextBox ID="agrmnt_no" runat="server"  AutoComplete="off" 
        Width="200"  ontextchanged="agrmnt_no_TextChanged"></asp:TextBox></td></tr>        
<tr>       
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
                            
                            <asp:BoundField DataField="BRANCHID" HeaderText="BRANCH CODE">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="BRANCHNAME" HeaderText="BRANCH NAME">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NOMOR KONTRAK" HeaderText="NO KONTRAK">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NAMA DEBITUR" HeaderText="NAMA DEBITUR">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NOTARY_CODE" HeaderText="ID NOTARIS">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="GO_LIVE_DT" HeaderText="TGL GO LIVE">
                                <HeaderStyle CssClass="centergv" />
                                <ItemStyle CssClass="centergv" />
                            </asp:BoundField>
                            <asp:BoundField DataField="BUCKET_OD" HeaderText="BUCKET AGING">
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
