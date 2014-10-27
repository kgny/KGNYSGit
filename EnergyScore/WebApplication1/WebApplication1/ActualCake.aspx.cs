using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Basic;
using System.IO;
using System.Text;
namespace QCA
{
    public partial class ActualCake : System.Web.UI.Page
    {
        config conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                conn = new config();

                //第一次刷页面
                if (!Page.IsPostBack)
                {
                    if (Session["UserName"] == null)
                    {
                        ViewState["UserName"] = "UserName";
                    }
                    else
                    {
                        ViewState["UserName"] = Session["UserName"].ToString();
                    }
                    /////////////////////////////
                    UpdateFormView();
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        ActualCake:Page_Load          " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        private void UpdateFormView()
        {
            try
            {
                if (ViewState["UserName"] == null)
                    return;
                string str;
                str = "select * from tb_ActualCake where 项目编号 = '" + ViewState["UserName"].ToString() + "' order by 条目编号";
                conn.GetTable(str);
                //处理20行*1列的显示
                Control myControl;
                for (int i = 0; i < conn.dt.Rows.Count; i++)
                {
                    if (i < 11)
                    {
                        myControl = ASPxRoundPanel2.FindControl("con" + (i+1).ToString());
                        if (myControl != null)
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text = conn.dt.Rows[i][2].ToString();
                        }
                    }

                    if (i >= 11 && i < 12)
                    {
                        myControl = ASPxRoundPanel3.FindControl("con" + (i + 1).ToString());
                        if (myControl != null)
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text = conn.dt.Rows[i][2].ToString();
                        }
                    }
                    if (i >=12 && i < 20)
                    {
                        myControl = ASPxRoundPanel4.FindControl("con" + (i + 1).ToString());
                        if (myControl != null)
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text = conn.dt.Rows[i][2].ToString();
                        }
                    }
                    if (i >= 20)
                        break;
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        ActualCake:UpdateFormView()         " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        protected void Page_UnLoad(object sender, EventArgs e)
        {
            try
            {
                conn.Close();
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        ActualCake:Page_UnLoad          " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        protected void ASPxButton_Confirm_Click(object sender, EventArgs e)
        {
            try
            {
                UpdateDataSet();
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          ActualCake:ASPxButton_Confirm_Click  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        //更新数据
        private void UpdateDataSet()
        {
            try
            {
                string str;
                str = "delete from tb_ActualCake where 项目编号 ='" + ViewState["UserName"].ToString() + "'";
                conn.ExeSql(str);
                //处理44行*1列的显示
                for (int i = 0; i < 44; i++)
                {
                    if (i < 11)
                    {
                        str = "insert into tb_ActualCake values('" + ViewState["UserName"].ToString() + "'," + (i + 1);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i +1).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }

                    if (i >=11 && i < 12)
                    {
                        str = "insert into tb_ActualCake values('" + ViewState["UserName"].ToString() + "'," + (i + 1);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i + 1).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                    if (i >= 12 && i < 20)
                    {
                        str = "insert into tb_ActualCake values('" + ViewState["UserName"].ToString() + "'," + (i + 1);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i + 1).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          ActualCake:UpdateDataSetOne  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
    }
}