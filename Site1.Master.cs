using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace ReportFiducia
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack){
                Userlbl.Text = Request.QueryString["USERNAME"].ToString();
                newppd.HRef = "NewPPD.aspx?USERNAME=" + Userlbl.Text;
                oc.HRef = "OverCredit.aspx?USERNAME=" + Userlbl.Text;
                roya.HRef = "Roya.aspx?USERNAME=" + Userlbl.Text;
                aging.HRef = "BucketAging.aspx?USERNAME=" + Userlbl.Text;
                
            }
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    //Request.QueryString.Clear();
        //    Response.Redirect("Login.aspx");
        //}
    }
}
