using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

namespace ReportFiducia
{
    public partial class Home : System.Web.UI.Page
    {
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
                    newppd.HRef = "NewPPD.aspx?USERNAME=" + USERNAME.Text;
                    oc.HRef = "OverCredit.aspx?USERNAME=" + USERNAME.Text;
                    roya.HRef = "Roya.aspx?USERNAME=" + USERNAME.Text;
                    aging.HRef = "BucketAging.aspx?USERNAME=" + USERNAME.Text;
                    //menulistverifikasifinal.HRef = "List_Verifikasi_Final.aspx?USERNAME=" + USERNAME.Text;

                    // Nama.Text = Request.QueryString["USERNAME"].ToString();// +" " + Request.QueryString["ROLE"].ToString();

                }
            }
        }
    }
}
