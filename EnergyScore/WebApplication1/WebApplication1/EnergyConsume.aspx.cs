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
    public partial class EnergyConsume : System.Web.UI.Page
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
                    UpdateTotal();
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        EnergyConsume:Page_Load          " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        private void UpdateFormView()
        {
            try
            {
                if (ViewState["UserName"] == null)
                    return;
                //

                string str;
                str = "select * from tb_nengyuannenghao where 项目编号 = '" + ViewState["UserName"].ToString() + "' order by 工艺编号,评分条目编号";
                conn.GetTable(str);
                //处理35行*3列的显示
                for (int i = 0; i < conn.dt.Rows.Count; i++)
                {
                    if (i < 8)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6+3).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6+4).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6 + 5).ToString())).Text = conn.dt.Rows[i][5].ToString();
                       
                    }

                    if (i >= 8 && i < 16)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6+ 3).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 4).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 5).ToString())).Text = conn.dt.Rows[i][5].ToString();
                    }
                    if (i >= 16 && i < 27)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 3).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 4).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 5).ToString())).Text = conn.dt.Rows[i][5].ToString();
                    }
                    if (i >= 27 && i < 31)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6+3).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 4).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 5).ToString())).Text = conn.dt.Rows[i][5].ToString();
                    }
                    if (i >= 31 && i < 35)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 6+3).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 6 + 4).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 6 + 5).ToString())).Text = conn.dt.Rows[i][5].ToString();
                    }
                    if (i >= 35)
                        break;
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        EnergyConsume:UpdateFormView()         " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "        EnergyConsume:Page_UnLoad          " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        //更新合计
        private void UpdateTotal()
        {
            try
            {
                txtbox1.Text = (Convert.ToDouble(con53.Text) + Convert.ToDouble(con59.Text) + Convert.ToDouble(con65.Text) + Convert.ToDouble(con71.Text) + Convert.ToDouble(con77.Text) + Convert.ToDouble(con83.Text)).ToString("0.0000");
                txtbox2.Text = (Convert.ToDouble(con89.Text) + Convert.ToDouble(con95.Text)).ToString("0.0000");
                txtbox3.Text = (Convert.ToDouble(con101.Text) + Convert.ToDouble(con107.Text) + Convert.ToDouble(con113.Text) + Convert.ToDouble(con119.Text) + Convert.ToDouble(con125.Text) + Convert.ToDouble(con131.Text) + Convert.ToDouble(con137.Text) + Convert.ToDouble(con143.Text) + Convert.ToDouble(con149.Text) + Convert.ToDouble(con155.Text) + Convert.ToDouble(con161.Text)).ToString("0.0000");
                txtbox4.Text = (Convert.ToDouble(con167.Text) + Convert.ToDouble(con173.Text) + Convert.ToDouble(con179.Text) + Convert.ToDouble(con185.Text)).ToString("0.0000");
                txtbox5.Text = (Convert.ToDouble(con191.Text) + Convert.ToDouble(con197.Text) + Convert.ToDouble(con203.Text) + Convert.ToDouble(con209.Text)).ToString("0.0000");
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        EnergyConsume:UpdateTotal()        " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        protected void ASPxButton_Update_Click(object sender, EventArgs e)
        {
            try
            {
                UpdateResult();
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "           EnergyConsume:con117_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        //更新界面计分结果
        private void UpdateResult()
        {
            if (ViewState["UserName"] == null)
                return;
            //

            string str;
            str = "select * from tb_nenghaopercentage where 项目编号 = '" + ViewState["UserName"].ToString() + "' order by 工艺编号";
            conn.GetTable(str);
            if (conn.dt.Rows.Count <= 0)
                return;
            //处理35行*3列的显示
            for (int i = 0; i < 35; i++)
            {
                if (i < 8)
                {
                    if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6+3).ToString())).Text) < Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6+1).ToString())).Text))
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6 + 4).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6 + 2).ToString())).Text) * 0.5).ToString("0.0000");
                    }
                    else
                    {
                        if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6 + 3).ToString())).Text) > Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6).ToString())).Text))
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6 + 4).ToString())).Text = "0";
                        }
                        else
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6 + 4).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6 + 2).ToString())).Text) * 0.5 * (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6).ToString())).Text) - Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6+3).ToString())).Text)) / (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6).ToString())).Text) - Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6+1).ToString())).Text))).ToString("0.0000");
                        }
                    }
                    if (i < 4)
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i *6 + 5).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6 + 4).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[i][2].ToString()) / 100).ToString("0.0000");
                    if (i == 4 || i == 5)
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6 + 5).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6+ 4).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[4][2].ToString()) / 100).ToString("0.0000");
                    if (i > 5)
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6 + 5).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6 + 4).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[i - 1][2].ToString()) / 100).ToString("0.0000");

                }

                if (i >= 8 && i < 16)
                {
                    if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 3).ToString())).Text) < Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 1).ToString())).Text))
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 4).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 2).ToString())).Text) * 0.5).ToString("0.0000");
                    }
                    else
                    {
                        if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 3).ToString())).Text) > Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6).ToString())).Text))
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 4).ToString())).Text = "0";
                        }
                        else
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 4).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 2).ToString())).Text) * 0.5 * (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6).ToString())).Text) - Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6+ 3).ToString())).Text)) / (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6).ToString())).Text) - Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 1).ToString())).Text))).ToString("0.0000");
                        }
                    }
                    if (i < 14)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 5).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i *6 + 4).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[7][2].ToString()) / 100).ToString("0.0000");
                    }
                    else
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 5).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 4).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[8][2].ToString()) / 100).ToString("0.0000");
                    
                    }
                }
                if (i >= 16 && i < 27)
                {
                    if (i == 25 || i == 26)
                    {
                        if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 3).ToString())).Text) > Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6).ToString())).Text))
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 4).ToString())).Text = "0";
                        }
                        else
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 4).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 2).ToString())).Text) * 0.5).ToString("0.0000");
                        }
                    }
                    else
                    {
                        if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 3).ToString())).Text) < Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 1).ToString())).Text))
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 4).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 2).ToString())).Text) * 0.5).ToString("0.0000");
                        }
                        else
                        {
                            if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 3).ToString())).Text) > Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6).ToString())).Text))
                            {
                                ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 4).ToString())).Text = "0";
                            }
                            else
                            {
                                ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 4).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6+ 2).ToString())).Text) * 0.5 * (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6).ToString())).Text) - Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 3).ToString())).Text)) / (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6).ToString())).Text) - Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 1).ToString())).Text))).ToString("0.0000");
                            }
                        }
                    }
                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 5).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 4).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[9][2].ToString()) / 100).ToString("0.0000");
                }
                if (i >= 27 && i < 31)
                {
                    if (i == 27)
                    {
                        if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 3).ToString())).Text) < Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 1).ToString())).Text))
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 4).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 2).ToString())).Text) * 0.5).ToString("0.0000");
                        }
                        else
                        {
                            if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 3).ToString())).Text) > Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6).ToString())).Text))
                            {
                                ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 4).ToString())).Text = "0";
                            }
                            else
                            {
                                ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 4).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 2).ToString())).Text) * 0.5 * (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6).ToString())).Text) - Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 3).ToString())).Text)) / (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6).ToString())).Text) - Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 1).ToString())).Text))).ToString("0.0000");
                            }
                        }
                    }
                    else
                    {
                        if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 3).ToString())).Text) > Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6).ToString())).Text))
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 4).ToString())).Text = "0";
                        }
                        else
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 4).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 2).ToString())).Text) * 0.5).ToString("0.0000");
                        }
                    }
                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 5).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 4).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[10][2].ToString()) / 100).ToString("0.0000");
                }
                if (i >= 31 && i < 35)
                {
                    if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i *6 + 3).ToString())).Text) > Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 6).ToString())).Text))
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 6 + 4).ToString())).Text = "0";
                    }
                    else
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 6 + 4).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 6+ 2).ToString())).Text) * 0.5).ToString("0.0000");
                    }
                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 6 + 5).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 6 + 4).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[11][2].ToString()) / 100).ToString("0.0000");

                }
                if (i >= 35)
                    break;
            }
            UpdateTotal();

            UpdatePanel_Others.Update();
            UpdatePanel_Hot.Update();
            UpdatePanel_Cold.Update();
            UpdatePanel_Cast.Update();
            UpdatePanel_Coat.Update();
        }

        protected void ASPxButton_Confirm_Click(object sender, EventArgs e)
        {
            try
            {
                UpdateResult();
                UpdateDataSetNengHao();
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          EnergyConsume:ASPxButton_Confirm_Click  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        //更新全厂一数据
        private void UpdateDataSetNengHao()
        {
            try
            {
                string str;
                str = "delete from tb_nengyuannenghao where 项目编号 ='" + ViewState["UserName"].ToString() + "'";
                conn.ExeSql(str);
                //处理35行*3列的显示
                for (int i = 0; i < 35; i++)
                {
                    if (i < 8)
                    {
                        if (i < 5)
                        {
                            str = "insert into tb_nengyuannenghao values('" + ViewState["UserName"].ToString() + "'," + (i + 1) + ",1";
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6+ 4).ToString())).Text);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6+ 3).ToString())).Text);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6 + 5).ToString())).Text) + ")";
                        }
                        else
                        {
                            if (i == 5)
                            {
                                str = "insert into tb_nengyuannenghao values('" + ViewState["UserName"].ToString() + "'," + i + ",2";
                                str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6 + 4).ToString())).Text);
                                str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6 + 3).ToString())).Text);
                                str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6 + 5).ToString())).Text) + ")";
                            }
                            else
                            {
                                str = "insert into tb_nengyuannenghao values('" + ViewState["UserName"].ToString() + "'," + i + ",1";
                                str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6 + 4).ToString())).Text);
                                str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6 + 3).ToString())).Text);
                                str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 6 + 5).ToString())).Text) + ")";
                            }

                        }
                        conn.ExeSql(str);
                    }
                    if (i >= 8 && i < 16)
                    {
                        if (i < 14)
                        {
                            str = "insert into tb_nengyuannenghao values('" + ViewState["UserName"].ToString() + "',8," + (i - 7);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 4).ToString())).Text);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 3).ToString())).Text);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 5).ToString())).Text) + ")";
                        }
                        else
                        {
                            str = "insert into tb_nengyuannenghao values('" + ViewState["UserName"].ToString() + "',9," + (i - 13);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 4).ToString())).Text);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 3).ToString())).Text);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 6 + 5).ToString())).Text) + ")";
                        }
                        conn.ExeSql(str);
                    }
                    if (i >= 16 && i < 27)
                    {
                        str = "insert into tb_nengyuannenghao values('" + ViewState["UserName"].ToString() + "',10," + (i - 15);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 4).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 3).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 6 + 5).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                    if (i >= 27 && i < 31)
                    {
                        str = "insert into tb_nengyuannenghao values('" + ViewState["UserName"].ToString() + "',11," + (i - 26);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 4).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 3).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 6 + 5).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                    if (i >= 31 && i < 35)
                    {
                        str = "insert into tb_nengyuannenghao values('" + ViewState["UserName"].ToString() + "',12," + (i - 30);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 6 + 4).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 6 + 3).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i *6 + 5).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          EnergyConsume:UpdateDataSetOne  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
    }
}