using System;
using System.Web.UI;
using Basic;

namespace WebApplication1.DJSys
{
    public partial class DJ_Act_Info : System.Web.UI.Page
    {
        protected config conn;

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

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                conn = new config();
                //第一次刷页面
                if (!Page.IsPostBack)
                {
                    ASPxDateEdit_Begin.Date = DateTime.Now.AddDays(-1);
                    ASPxDateEdit_End.Date = DateTime.Now.AddDays(1);

                    LoadDJActInfo();
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
               
            }
        }
        
        protected void btnQuery(object sender, EventArgs e)
        {
            LoadDJActInfo();
        }

        private void LoadDJActInfo()
        {
            try
            {
                string str = string.Format("SELECT T.SEQ_NO AS 序号,T.RECORD_TIME AS 时间,T.DJ_POSITION AS 点检部位,T.DJ_PROJECT AS 点检项目,T.DJ_DETAIL AS 点检内容,T.DJ_TIME AS 点检周期,T.DJ_SB_STATUS AS 设备状态,T.DJ_METHOD AS 点检方法,T.DJ_STANDARD AS 点检标准,T.DJ_RECORD AS 点检记录,T.DJ_NOTE AS 记事,T.DJ_EWM AS 二维码,T.DJ_PLAN AS 点检计划号 FROM DJ_ACT_INFO T WHERE RECORD_TIME >=TO_DATE('{0}','YYYY-MM-DD') AND RECORD_TIME<=TO_DATE('{1}','YYYY-MM-DD') ORDER BY RECORD_TIME DESC", ASPxDateEdit_Begin.Text, ASPxDateEdit_End.Text);
                //str = "SELECT * FROM DJ_ACT_INFO";
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