using System;
using System.Web.UI;
using Basic;

namespace WebApplication1.DJSys
{
    public partial class DJ_Plan_Rev : Page
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
        void Page_Load(object sender, EventArgs e)
        {
            try
            {
                
                conn = new config();
                //第一次刷页面
                if (!Page.IsPostBack)
                {
                    //if (Session["UserName"] == null)
                    //{
                    //    ViewState["UserName"] = "UserName";
                    //}
                    //else
                    //{
                    //    ViewState["UserName"] = Session["UserName"].ToString();
                    //}

                    ASPxDateEdit_Begin.Date = DateTime.Now.AddDays(-1);
                    ASPxDateEdit_End.Date = DateTime.Now.AddDays(1);

                    LoadDJGroup();
                    LoadDJMan();
                    btnQuery1(null, null);
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }
        /// <summary>
        /// 加载人员信息
        /// </summary>
        void LoadDJMan()
        {
            try
            {
                cmbDJMan.Items.Clear();
                cmbDJMan.Items.Add("张三");
                cmbDJMan.Items.Add("李四");
                cmbDJMan.Items.Add("王五");
                cmbDJMan.Items.Add("赵六");
                if (cmbDJMan.Items.Count > 0)
                    cmbDJMan.Items[0].Selected = true;

            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }
        void LoadDJGroup()
        {
            try
            {
                cbDJGroup.Items.Clear();
                cbDJGroup.Items.Add("甲班");
                cbDJGroup.Items.Add("乙班");
                cbDJGroup.Items.Add("丙班");
                cbDJGroup.Items.Add("丁班");
                if (cbDJGroup.Items.Count > 0)
                    cbDJGroup.Items[0].Selected = true;

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
        protected void btnDlownLodClick(object sender, EventArgs e)
        {
            Console.WriteLine(e.ToString());
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            try
            {
                string strDJGroup = this.cbDJGroup.SelectedItem.Text;
                string strDJMan = this.cmbDJMan.SelectedItem.Text;
                string strDJLJ = this.txbDJLJ.Text;

                string strSQL = string.Format("INSERT INTO DJ_PLAN_INFO VALUES((SELECT MAX(SEQ_NO)+1 FROM DJ_PLAN_INFO),SYSDATE,'DJ'||TO_CHAR(SYSDATE,'YYYYMMDD')||(SELECT COUNT(SEQ_NO)+1 FROM DJ_PLAN_INFO WHERE RECORD_TIME >=TO_DATE('{0}','YYYY-MM-DD')),'{1}','{2}','{3}','U')",DateTime.Now.Date.ToString("yyyy-MM-dd"),strDJLJ,strDJMan,strDJGroup);
                conn.ExeSql(strSQL);

                btnQuery1(null, null);
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }

        }

        protected void btnQuery1(object sender, EventArgs e)
        {
            try
            {
                string str = string.Format("SELECT SEQ_NO AS 序号,RECORD_TIME AS 时间,DJ_PLAN	AS 点检计划号,DJ_LJ	AS 点检路径,DJ_MAN	AS 点检人,DJ_GROUP	AS 班组,DJ_STATUS	AS 计划状态 FROM DJ_PLAN_INFO WHERE RECORD_TIME >=TO_DATE('{0}','YYYY-MM-DD') AND RECORD_TIME<=TO_DATE('{1}','YYYY-MM-DD') ORDER BY RECORD_TIME DESC", ASPxDateEdit_Begin.Text, ASPxDateEdit_End.Text);
                ViewState["str"] = str;
                conn.GetTable(str);
                ASPxGridView.DataSource = conn.dt.DefaultView;
                ASPxGridView.DataBind();
                
            }
            catch(Exception err)
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