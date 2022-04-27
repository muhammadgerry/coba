using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
//using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using System.Data.OleDb;
using System.Collections.Generic;
using System.Drawing;
using System.Data.SqlClient;
using System.Drawing.Imaging;

namespace ReportFiducia
{
    public partial class BucketAging : System.Web.UI.Page
    {
        string dbcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["USERNAME"] == null || Request.QueryString["USERNAME"] == "")
                {

                    Response.Redirect("Denied.aspx");

                }
                else
                {
                    USERNAME.Text = Request.QueryString["USERNAME"].ToString();
                    bind_(DropDownList1);
                    bind_(DropDownList2);
                }
            }
        }
        void bind_(DropDownList D)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(dbcon))
                {
                    using (SqlCommand cmd = new SqlCommand("SP_LIST_CABANG"))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandTimeout = 99999;
                        cmd.Connection = con;
                        con.Open();
                        D.DataSource = cmd.ExecuteReader(); ;
                        D.DataTextField = "CABANG";
                        D.DataValueField = "OFFICE_CODE";
                        D.DataBind();
                        con.Close();
                    }
                }
            }
            catch (Exception x) { error.Text = x.Message.ToString(); }
        }
       
        void rpt()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(dbcon))
                {
                    using (SqlCommand cmd = new SqlCommand("SP_TAUBAT_FIDUCIA_SEND_NOTARY"))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@BRANCHFROM", DropDownList1.SelectedValue);
                        cmd.Parameters.Add("@BRANCHTO", DropDownList2.SelectedValue);
                        cmd.Parameters.Add("@GOLIVE_DT_FROM", from.Text);
                        cmd.Parameters.Add("@GOLIVE_DT_TO", to.Text);
                        cmd.Parameters.Add("@CUST_NAME", cust_name.Text);
                        cmd.Parameters.Add("@NO_KONTRAK", agrmnt_no.Text);
                        cmd.CommandTimeout = 99999;
                        cmd.Connection = con;
                        con.Open();
                        DataTable A = new DataTable();
                        SqlDataAdapter B = new SqlDataAdapter(cmd);
                        B.Fill(A);
                        Grid1.DataSource = A;
                        Grid1.DataBind();
                        con.Close();
                    }
                }
            }
            catch (Exception x) { error.Text = x.Message.ToString(); }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            rpt();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            excell();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        void excell()
        {
            try
            {
                string fileName = "Report_Aging_Fiducia";
                string finalFileNameWithPath = string.Empty;
                fileName = string.Format("{0}_{1}", fileName, DateTime.Now.ToString("dd-MMMM-yyyy"));
                Response.Clear();
                Response.AddHeader("content-disposition", "attachment;filename=" + fileName + ".xls");
                Response.ContentType = "application/vnd.xlxs";
                System.IO.StringWriter stringWrite = new System.IO.StringWriter();
                System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
                Grid1.AllowPaging = false;
                this.rpt();
                Grid1.RenderControl(htmlWrite);
                Response.Write(stringWrite.ToString());
                Response.End();
            }
            catch (Exception ex)
            {
                error.Text = ex.Message.ToString();
            }
        }

        

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Grid1.PageIndex = e.NewPageIndex;
            this.rpt();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void from_TextChanged(object sender, EventArgs e)
        {

        }

        protected void to_TextChanged(object sender, EventArgs e)
        {

        }
        protected void cust_name_TextChanged(object sender, EventArgs e)
        {

        }

        protected void agrmnt_no_TextChanged(object sender, EventArgs e)
        {

        }

    }
}
