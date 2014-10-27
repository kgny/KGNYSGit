using System;
using System.Collections.Generic;
using System.Web.UI;
using Basic;

namespace WebApplication1.DJSys
{
    public partial class DJ_Plan_Send : Page
    {
        protected config conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                conn = new config();
                if (!Page.IsPostBack)
                {
                    ASPxDateEdit_Begin.Date = DateTime.Now.AddDays(-1);
                    ASPxDateEdit_End.Date = DateTime.Now.AddDays(1);

                    LoadDJPlanInfo();
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);

            }
        }

        private void LoadDJPlanInfo()
        {
            try
            {
                string str = string.Format("SELECT * FROM DJ_PLAN_INFO T WHERE RECORD_TIME >=TO_DATE('{0}','YYYY-MM-DD') AND RECORD_TIME<=TO_DATE('{1}','YYYY-MM-DD') ORDER BY RECORD_TIME DESC", ASPxDateEdit_Begin.Text, ASPxDateEdit_End.Text);
                ViewState["str"] = str;
                conn.GetTable(str);
                ASPxGridView.DataSource = conn.dt.DefaultView;
                ASPxGridView.DataBind();

            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }
        
        protected void Page_UnLoad()
        {
            try
            {
                conn.Close();
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }

        protected void btnDlownLodClick(object sender, EventArgs e)
        {
            List<object> listSeqNo = ASPxGridView.GetSelectedFieldValues(new string[] { ASPxGridView.KeyFieldName });
            for (int i = 0; i < listSeqNo.Count; i++)
            {
                string strDJPlanNO = GetDJPlanNOWithSeqNO(listSeqNo[i].ToString());
                string strDJPlan_Status = GetDJPlanStatusWithSeqNO(listSeqNo[i].ToString());
                if (string.Compare("U", strDJPlan_Status) == 0 )
                {
                    conn.ExeSql(string.Format("UPDATE DJ_PLAN_INFO T SET DJ_STATUS='A' WHERE SEQ_NO={0}",listSeqNo[i].ToString()));
                    ShowTip(string.Format("点检计划:{0}下发成功！", strDJPlanNO));
                    LoadDJPlanInfo();
                }
                else
                {
                    ShowTip(string.Format("计划号:{0}已下发，无需再次下发！", strDJPlanNO));
                }

            }
            //ClientScript.RegisterClientScriptBlock(typeof(Page), "test", data, true);
        }

        private string GetDJPlanStatusWithSeqNO(string seqNO)
        {
            try
            {
                conn.GetTable("SELECT DJ_STATUS FROM DJ_PLAN_INFO WHERE SEQ_NO=" + seqNO);
                return conn.dt.Rows[0][0].ToString();
            }
            catch (Exception err)
            {
                ShowTip(err.Message);
            }
            return null;
        }

        private void ShowTip(string infor)
        {
            //Page.RegisterStartupScript("alert", " <script> alert('" + infor + "') </script> ");
            //Alert.ShowAlert(infor);
            //RegisterStartupScript("hello", "<script>alert('你好!')</script>");
            //ClientScript.RegisterClientScriptBlock(typeof(DJ_Plan_Send), "test", infor, true);
            //Response.Write(string.Format("<script language=javascript>alert(\'{0}\');</script>", infor));
            //ClientScript.RegisterStartupScript(this.GetType(), "SayHello", "<script>alert('" + infor + "')</script>");
        }

        private string GetDJPlanNOWithSeqNO(string seqNO)
        {
            try
            {
                conn.GetTable("SELECT DJ_PLAN FROM DJ_PLAN_INFO WHERE SEQ_NO="+seqNO);
                return conn.dt.Rows[0][0].ToString();
            }
            catch(Exception err)
            {
                ShowTip(err.Message);
            }
            return null;
        }

        protected void btnQuery(object sender, EventArgs e)
        {
            LoadDJPlanInfo();
        }

        protected void ASPxGridView_BeforeColumnSortingGrouping(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewBeforeColumnGroupingSortingEventArgs e)
        {
            try
            {//重新绑定数据
                if (ViewState["str"] != null)
                {
                    string str;
                    str = ViewState["str"].ToString();
                    conn.GetTable(str);
                    ASPxGridView.DataSource = conn.dt.DefaultView;
                    ASPxGridView.DataBind();
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }

        protected void ASPxGridView_PageIndexChanged(object sender, EventArgs e)
        {
            try
            {//重新绑定数据
                if (ViewState["str"] != null)
                {
                    string str;
                    str = ViewState["str"].ToString();
                    conn.GetTable(str);
                    ASPxGridView.DataSource = conn.dt.DefaultView;
                    ASPxGridView.DataBind();
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }
    }
}
public class Alert
{
 public static void ShowAlert(string message)
 {
        if(message==null)
            message = "";

  message=message.Replace("  ","''");
  System.Web.HttpContext.Current.Response.Write("<script>alert('"+message+"');</script>");
 }
 public static void ShowAlert(string message,string url)
 {
        if(message==null)
            message = "";
        message = message.Replace("  ", "''");
  System.Web.HttpContext.Current.Response.Write("<script>alert('"+message+"');location='"+url+"';</script>");
 }
    public static void ShowConfirmAlert(string message, string confirmurl, string cancelurl)
   {
        if (message == null)
            message = "";
        message = message.Replace("  ", "''");
        System.Web.HttpContext.Current.Response.Write("<script Language=Javascript>if( confirm('" + message + "') ) {document.location.href='" + confirmurl + "'; } else { document.location.href='" + cancelurl + "' }</script>");
    }
    public static void ShowConfirmAlert(string message, string confirmurl)
   {
        if (message == null)
            message = "";
        message = message.Replace("  ", "''");
        System.Web.HttpContext.Current.Response.Write("<script Language=Javascript>if( confirm('" + message + "') ) {document.location.href='" + confirmurl + "'; } else { window.history.back(); }</script>");
    }
    public static void Redirect(string url)
{// 
  //
  if(url==null||url.Length<1)
   ShowAlert("重定向地址不能为空");
  else
     System.Web.HttpContext.Current.Response.Write("<script>location='"+url+"';</script>");
 }
 public static void SSOLoginRedirect(string url)
 {
   Redirect(url);
//   if(url==null||url.Length<1)
//    ShowAlert("重定向地址不能为空");
//   else
//    System.Web.HttpContext.Current.Response.Write("<script>if(window.parent!=window) window.parent.location=window.location; location='"+url+"';</script>");
 
 }
    public static void ShowAlert(string message,string url,bool IsRedirect)
    {
        
        if(message==null)
            message = "";
        if(IsRedirect)
            ShowAlert(message,url);
        else
            ShowAlert(message);
    }
}