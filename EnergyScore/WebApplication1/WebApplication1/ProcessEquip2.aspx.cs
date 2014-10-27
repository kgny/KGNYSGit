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
    public partial class ProcessEquip2 : System.Web.UI.Page
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
                string EMseg = DateTime.Now.ToString() + "        ProcessEquip2:Page_Load          " + ex.Source.ToString() + "         " + ex.Message;
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
                DevExpress.Web.ASPxEditors.ASPxComboBox temp;
                for (int i = 0; i < 10; i++)
                {
                    if (i != 0 && i != 1 && i != 4 && i != 5)
                    {
                        temp = ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 1).ToString()));
                        temp.Items.Clear();
                        temp.Items.Add("有");
                        temp.Items.Add("否");
                        temp.SelectedIndex = 1;
                    }
                }
                for (int i = 10; i < 23; i++)
                {
                    if (i != 10 && i != 11)
                    {
                        temp = ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 1).ToString()));
                        temp.Items.Clear();
                        temp.Items.Add("有");
                        temp.Items.Add("否");
                        temp.SelectedIndex = 1;
                    }
                }
                for (int i = 23; i < 28; i++)
                {
                    temp = ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString()));
                    temp.Items.Clear();
                    temp.Items.Add("有");
                    temp.Items.Add("否");
                    temp.SelectedIndex = 1;
                }
                for (int i = 28; i < 31; i++)
                {
                    temp = ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel5.FindControl("con" + (i * 5 + 1).ToString()));
                    temp.Items.Clear();
                    temp.Items.Add("有");
                    temp.Items.Add("否");
                    temp.SelectedIndex = 1;
                }
                for (int i = 31; i < 43; i++)
                {
                    temp = ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel6.FindControl("con" + (i * 5 + 1).ToString()));
                    temp.Items.Clear();
                    temp.Items.Add("有");
                    temp.Items.Add("否");
                    temp.SelectedIndex = 1;
                }
                    

                string str;
                str = "select * from tb_gongyizhuangbei where 项目编号 = '" + ViewState["UserName"].ToString() + "' and 工艺编号 >=6 and 工艺编号 <=10 order by 工艺编号,评分条目编号";
                conn.GetTable(str);
                //处理46行*4列的显示
                for (int i = 0; i < conn.dt.Rows.Count; i++)
                {
                    if (i < 10)
                    {
                        if (i == 0 || i == 1 || i == 4 || i == 5)
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        }
                        else
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        }
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 2).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 3).ToString())).Text = conn.dt.Rows[i][5].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 4).ToString())).Text = conn.dt.Rows[i][6].ToString();
                    }
                    if (i >= 10 && i < 23)
                    {
                        if (i == 10 || i == 11)
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        }
                        else
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        }
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 2).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 3).ToString())).Text = conn.dt.Rows[i][5].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 4).ToString())).Text = conn.dt.Rows[i][6].ToString();
                       
                    }
                    if (i >= 23 && i < 28)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 2).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = conn.dt.Rows[i][5].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 4).ToString())).Text = conn.dt.Rows[i][6].ToString();

                    }
                    if (i >= 28 && i < 31)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel5.FindControl("con" + (i * 5 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 5 + 2).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 5 + 3).ToString())).Text = conn.dt.Rows[i][5].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 5 + 4).ToString())).Text = conn.dt.Rows[i][6].ToString();

                    }
                    if (i >= 31 && i < 43)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel6.FindControl("con" + (i * 5 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 5 + 2).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 5 + 3).ToString())).Text = conn.dt.Rows[i][5].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 5 + 4).ToString())).Text = conn.dt.Rows[i][6].ToString();
                    }
                    if (i >= 43)
                        break;
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        ProcessEquip2:UpdateFormView()         " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "        ProcessEquip2:Page_UnLoad          " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        //更新合计
        private void UpdateTotal()
        {
            try
            {
                double temp=0;
                for (int i = 0; i < 10; i++)
                {
                    temp = temp + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 4).ToString())).Text);
                }
                txtbox1.Text = temp.ToString("0.0000");
                temp = 0;
                for (int i = 10; i < 23; i++)
                {
                    temp = temp + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 4).ToString())).Text);
                }
                txtbox2.Text = temp.ToString("0.0000");
                temp = 0;
                for (int i = 23; i < 28; i++)
                {
                    temp = temp + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 4).ToString())).Text);
                }
                txtbox3.Text = temp.ToString("0.0000");
                temp = 0;
                for (int i = 28; i < 31; i++)
                {
                    temp = temp + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 5 + 4).ToString())).Text);
                }
                txtbox4.Text = temp.ToString("0.0000");
                temp = 0;
                for (int i = 31; i < 43; i++)
                {
                    temp = temp + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 5 + 4).ToString())).Text);
                }
                txtbox5.Text = temp.ToString("0.0000");
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        ProcessEquip2:UpdateTotal()        " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "           ProcessEquip2:con117_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
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
            //处理46行*2列的显示
            for (int i = 0; i < 43; i++)
            {
                if (i < 10)
                {
                    if (i == 0 || i == 1 || i == 4 || i == 5)
                    {
                        if (i == 0)
                        {
                            if (Convert.ToDouble(con1.Text) > 300)
                            {
                                con3.Text = (Convert.ToDouble(con0.Text) * 0.3).ToString("0.0000");
                            }
                            else
                            {
                                if (Convert.ToDouble(con1.Text) < 210)
                                {
                                    con3.Text = "0";
                                }
                                else
                                {
                                    con3.Text = (Convert.ToDouble(con0.Text) * 0.3 * (Convert.ToDouble(con1.Text) - 210) / (300 - 210)).ToString("0.0000");
                                }
                            }
                        }
                        if (i == 1)
                        {
                            if (Convert.ToDouble(con6.Text) <25)
                            {
                                con8.Text = (Convert.ToDouble(con5.Text) * 0.3).ToString("0.0000");
                            }
                            else
                            {
                                if (Convert.ToDouble(con6.Text) >40)
                                {
                                    con8.Text = "0";
                                }
                                else
                                {
                                    con8.Text = (Convert.ToDouble(con5.Text) * 0.3 * (40-Convert.ToDouble(con6.Text)) / (40 - 25)).ToString("0.0000");
                                }
                            }
                        }
                        if (i == 4)
                        {
                            if (Convert.ToDouble(con21.Text) >= 95)
                            {
                                con23.Text = (Convert.ToDouble(con20.Text) * 0.3).ToString("0.0000");
                            }
                            else
                            {
                                con23.Text = "0";
                            }
                        }
                        if (i == 5)
                        {
                            if (Convert.ToDouble(con26.Text) > 93)
                            {
                                con28.Text = (Convert.ToDouble(con25.Text) * 0.3).ToString("0.0000");
                            }
                            else
                            {
                                if (Convert.ToDouble(con26.Text) < 45)
                                {
                                    con28.Text = "0";
                                }
                                else
                                {
                                    con28.Text = (Convert.ToDouble(con25.Text) * 0.3 * (Convert.ToDouble(con26.Text) - 45) / (93 - 45)).ToString("0.0000");
                                }
                            }
                        }
                    }
                    else
                    {
                        if (((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 1).ToString())).Text == "有")
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5).ToString())).Text) * 0.3).ToString("0.0000");
                        }
                        else
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 3).ToString())).Text = "0";
                        }
                    }
                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 4).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 3).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[5][2].ToString()) / 100).ToString("0.0000");
                }
                if (i >= 10 && i < 23)
                {
                    if (i== 10 || i == 11)
                    {
                        if (i == 10)
                        {
                            if (Convert.ToDouble(con51.Text) > 100)
                            {
                                con53.Text = (Convert.ToDouble(con50.Text) * 0.3).ToString("0.0000");
                            }
                            else
                            {
                                if (Convert.ToDouble(con51.Text) < 75)
                                {
                                    con53.Text = "0";
                                }
                                else
                                {
                                    con53.Text = (Convert.ToDouble(con50.Text) * 0.3 * (Convert.ToDouble(con51.Text) -75) / (100 - 75)).ToString("0.0000");
                                }
                            }
                        }
                        if (i == 11)
                        {
                            if (Convert.ToDouble(con56.Text) < 45)
                            {
                                con58.Text = (Convert.ToDouble(con55.Text) * 0.3).ToString("0.0000");
                            }
                            else
                            {
                                if (Convert.ToDouble(con51.Text) > 90)
                                {
                                    con58.Text = "0";
                                }
                                else
                                {
                                    con58.Text = (Convert.ToDouble(con55.Text) * 0.3 * (90 - Convert.ToDouble(con56.Text)) / (90 - 45)).ToString("0.0000");
                                }
                            }
                        }
                    }
                    else
                    {
                        if (((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 1).ToString())).Text == "有")
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5).ToString())).Text) * 0.3).ToString("0.0000");
                        }
                        else
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 3).ToString())).Text = "0";
                        }
                    }
                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 4).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 3).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[6][2].ToString()) / 100).ToString("0.0000");
                }
                if (i >= 23 && i < 28)
                {
                    if (((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text == "有")
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5).ToString())).Text) * 0.3).ToString("0.0000");
                    }
                    else
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = "0";
                    }
                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 4).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[7][2].ToString()) / 100).ToString("0.0000");
                }
                if (i >= 28 && i < 31)
                {
                    if (((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel5.FindControl("con" + (i * 5 + 1).ToString())).Text == "有")
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 5).ToString())).Text) * 0.3).ToString("0.0000");
                    }
                    else
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 5 + 3).ToString())).Text = "0";
                    }
                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 5 + 4).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 5 + 3).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[8][2].ToString()) / 100).ToString("0.0000");
                }
                if (i >= 31 && i < 43)
                {
                    if (((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel6.FindControl("con" + (i * 5 + 1).ToString())).Text == "有")
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 5).ToString())).Text) * 0.3).ToString("0.0000");
                    }
                    else
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 5 + 3).ToString())).Text = "0";
                    }
                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 5 + 4).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 5 + 3).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[9][2].ToString()) / 100).ToString("0.0000");
                }
                if (i >= 43)
                    break;
            }
            UpdateTotal();

            UpdatePanel_BF.Update();
            UpdatePanel_EAF.Update();
            UpdatePanel_LF.Update();
            UpdatePanel_Cast.Update();
            UpdatePanel_Roll.Update();
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
                string EMseg = DateTime.Now.ToString() + "          ProcessEquip2:ASPxButton_Confirm_Click  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        //更新数据
        private void UpdateDataSetNengHao()
        {
            try
            {
                string str;
                str = "delete from tb_gongyizhuangbei where 项目编号 ='" + ViewState["UserName"].ToString() + "' and (工艺编号 = 6 or 工艺编号 = 7 or 工艺编号 = 8 or 工艺编号 = 9 or 工艺编号 = 10)";
                conn.ExeSql(str);
                //处理46行*4列的显示
                for (int i = 0; i < 43; i++)
                {
                    if (i < 10)
                    {
                        if (i == 0 || i == 1 || i == 4 || i == 5)
                        {
                            str = "insert into tb_gongyizhuangbei values('" + ViewState["UserName"].ToString() + "',6," + (i + 1);
                            str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 1).ToString())).Text + "'";
                            str = str + ",1";
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 3).ToString())).Text);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 4).ToString())).Text) + ")";
                        }
                        else
                        {
                            str = "insert into tb_gongyizhuangbei values('" + ViewState["UserName"].ToString() + "',6," + (i + 1);
                            str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 1).ToString())).Text + "'";
                            str = str + ",1";
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 3).ToString())).Text);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 4).ToString())).Text) + ")";
                        }
                        conn.ExeSql(str);
                    }
                    if (i >= 10 && i < 23)
                    {
                        if (i == 10 || i == 11)
                        {
                            str = "insert into tb_gongyizhuangbei values('" + ViewState["UserName"].ToString() + "',7," + (i - 9);
                            str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 1).ToString())).Text + "'";
                            str = str + ",1";
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 3).ToString())).Text);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 4).ToString())).Text) + ")";
                        }
                        else
                        {
                            str = "insert into tb_gongyizhuangbei values('" + ViewState["UserName"].ToString() + "',7," + (i - 9);
                            str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 1).ToString())).Text + "'";
                            str = str + ",1";
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 3).ToString())).Text);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 4).ToString())).Text) + ")";
                        }
                        conn.ExeSql(str);
                    }
                    if (i >= 23 && i < 28)
                    {
                        str = "insert into tb_gongyizhuangbei values('" + ViewState["UserName"].ToString() + "',8," + (i - 22);
                        str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text + "'";
                        str = str + ",1";
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 4).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                    if (i >= 28 && i < 31)
                    {
                        str = "insert into tb_gongyizhuangbei values('" + ViewState["UserName"].ToString() + "',9," + (i - 27);
                        str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel5.FindControl("con" + (i * 5 + 1).ToString())).Text + "'";
                        str = str + ",1";
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 5 + 3).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 5 + 4).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                    if (i >= 31 && i < 43)
                    {
                        str = "insert into tb_gongyizhuangbei values('" + ViewState["UserName"].ToString() + "',10," + (i - 30);
                        str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel6.FindControl("con" + (i * 5 + 1).ToString())).Text + "'";
                        str = str + ",1";
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 5 + 3).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 5 + 4).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          ProcessEquip2:UpdateDataSetOne  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
    }
}