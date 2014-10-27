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
    public partial class TotalCompany2 : System.Web.UI.Page
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
                string EMseg = DateTime.Now.ToString() + "        TotalCompany2:Page_Load          " + ex.Source.ToString() + "         " + ex.Message;
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
                con0.Items.Clear();
                con0.Items.Add("有");
                con0.Items.Add("否");
                con0.SelectedIndex = 1;

                con2.Items.Clear();
                con2.Items.Add("有");
                con2.Items.Add("否");
                con2.SelectedIndex = 1;

                con4.Items.Clear();
                con4.Items.Add("有");
                con4.Items.Add("否");
                con4.SelectedIndex = 1;

                con6.Items.Clear();
                con6.Items.Add("有");
                con6.Items.Add("否");
                con6.SelectedIndex = 1;

                string str;
                str = "select * from tb_quanchangtwo where 项目编号 = '" + ViewState["UserName"].ToString() + "' order by 评分条目编号";
                conn.GetTable(str);
                //处理19行*2列的显示
                for (int i = 0; i < conn.dt.Rows.Count; i++)
                {
                    if (i < 4)
                    {
                        if (conn.dt.Rows[i][2].ToString() == "0")
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel2.FindControl("con" + (i * 2).ToString())).Text = "否";
                        }
                        else
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel2.FindControl("con" + (i * 2).ToString())).Text = "有";
                        }
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 2 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                    }

                    if (i >= 4 && i < 19)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 2).ToString())).Text = conn.dt.Rows[i][2].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 2 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                    }
                    if (i >= 19)
                        break;
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        TotalCompany2:UpdateFormView()         " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "        TotalCompany2:Page_UnLoad          " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "           TotalCompany2:con117_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        //更新界面计分结果
        private void UpdateResult()
        {
            if (con0.Text == "有")
                con1.Text = (Convert.ToDouble(tbox1.Text) * 0.1).ToString("0.0000");
            else
                con1.Text = "0";

            if (con2.Text == "有")
                con3.Text = (Convert.ToDouble(tbox2.Text) * 0.1).ToString("0.0000");
            else
                con3.Text = "0";

            if (con4.Text == "有")
                con5.Text = (Convert.ToDouble(tbox3.Text) * 0.1).ToString("0.0000");
            else
                con5.Text = "0";

            if (con6.Text == "有")
                con7.Text = (Convert.ToDouble(tbox4.Text) * 0.1).ToString("0.0000");
            else
                con7.Text = "0";

            if (Convert.ToDouble(con8.Text)<650)
            {
                con9.Text = (Convert.ToDouble(tbox5.Text) * 0.1).ToString("0.0000");
            }
            else
            {
                if (Convert.ToDouble(con8.Text) > 700)
                {
                    con9.Text = "0";
                }
                else
                {
                    con9.Text = (Convert.ToDouble(tbox5.Text) * 0.1 * (700-Convert.ToDouble(con8.Text))/(700-650)).ToString("0.0000");
                }
            }

            if (Convert.ToDouble(con10.Text)>=97.8)
            {
                con11.Text = (Convert.ToDouble(tbox6.Text) * 0.1).ToString("0.0000");
            }
            else
            {
                con11.Text = "0";
            }

            if (Convert.ToDouble(con12.Text) >= 95)
            {
                con13.Text = (Convert.ToDouble(tbox7.Text) * 0.1).ToString("0.0000");
            }
            else
            {
                con13.Text = "0";
            }

            if (Convert.ToDouble(con14.Text) >= 95)
            {
                con15.Text = (Convert.ToDouble(tbox8.Text) * 0.1).ToString("0.0000");
            }
            else
            {
                con15.Text = "0";
            }

            if (Convert.ToDouble(con16.Text) >= 95)
            {
                con17.Text = (Convert.ToDouble(tbox9.Text) * 0.1).ToString("0.0000");
            }
            else
            {
                con17.Text = "0";
            }

            if (Convert.ToDouble(con18.Text) >= 31)
            {
                con19.Text = (Convert.ToDouble(tbox10.Text) * 0.1).ToString("0.0000");
            }
            else
            {
                con19.Text = "0";
            }

            if (Convert.ToDouble(con20.Text) <3)
            {
                con21.Text = (Convert.ToDouble(tbox11.Text) * 0.1).ToString("0.0000");
            }
            else
            {
                if (Convert.ToDouble(con20.Text) >6)
                {
                    con21.Text = "0";
                }
                else
                {
                    con21.Text = (Convert.ToDouble(tbox11.Text) * 0.1 * (6 - Convert.ToDouble(con20.Text)) / (6 - 3)).ToString("0.0000");
                }
            }

            if (Convert.ToDouble(con22.Text) < 0.5)
            {
                con23.Text = (Convert.ToDouble(tbox12.Text) * 0.1).ToString("0.0000");
            }
            else
            {
                if (Convert.ToDouble(con22.Text) > 1.3)
                {
                    con23.Text = "0";
                }
                else
                {
                    con23.Text = (Convert.ToDouble(tbox12.Text) * 0.1 * (1.3 - Convert.ToDouble(con22.Text)) / (1.3 - 0.5)).ToString("0.0000");
                }
            }

            if (Convert.ToDouble(con24.Text) < 1.5)
            {
                con25.Text = (Convert.ToDouble(tbox13.Text) * 0.1).ToString("0.0000");
            }
            else
            {
                if (Convert.ToDouble(con24.Text) > 1.9)
                {
                    con25.Text = "0";
                }
                else
                {
                    con25.Text = (Convert.ToDouble(tbox13.Text) * 0.1 * (1.9 - Convert.ToDouble(con24.Text)) / (1.9 - 1.5)).ToString("0.0000");
                }
            }

            if (Convert.ToDouble(con26.Text) < 0.5)
            {
                con27.Text = (Convert.ToDouble(tbox14.Text) * 0.1).ToString("0.0000");
            }
            else
            {
                if (Convert.ToDouble(con26.Text) > 1)
                {
                    con27.Text = "0";
                }
                else
                {
                    con27.Text = (Convert.ToDouble(tbox14.Text) * 0.1 * (1 - Convert.ToDouble(con26.Text)) / (1 - 0.5)).ToString("0.0000");
                }
            }

            if (Convert.ToDouble(con28.Text) < 0.05)
            {
                con29.Text = (Convert.ToDouble(tbox15.Text) * 0.1).ToString("0.0000");
            }
            else
            {
                if (Convert.ToDouble(con28.Text) > 0.2)
                {
                    con29.Text = "0";
                }
                else
                {
                    con29.Text = (Convert.ToDouble(tbox15.Text) * 0.1 * (0.2 - Convert.ToDouble(con28.Text)) / (0.2 - 0.05)).ToString("0.0000");
                }
            }


            if (Convert.ToDouble(con30.Text) < 0.5)
            {
                con31.Text = (Convert.ToDouble(tbox16.Text) * 0.1).ToString("0.0000");
            }
            else
            {
                if (Convert.ToDouble(con30.Text) > 1.11)
                {
                    con31.Text = "0";
                }
                else
                {
                    con31.Text = (Convert.ToDouble(tbox16.Text) * 0.1 * (1.11 - Convert.ToDouble(con30.Text)) / (1.11 - 0.5)).ToString("0.0000");
                }
            }

            if (Convert.ToDouble(con32.Text) < 0.5)
            {
                con33.Text = (Convert.ToDouble(tbox17.Text) * 0.1).ToString("0.0000");
            }
            else
            {
                if (Convert.ToDouble(con32.Text) > 3)
                {
                    con33.Text = "0";
                }
                else
                {
                    con33.Text = (Convert.ToDouble(tbox17.Text) * 0.1 * (3 - Convert.ToDouble(con32.Text)) / (3 - 0.5)).ToString("0.0000");
                }
            }

            if (Convert.ToDouble(con34.Text) < 0.7)
            {
                con35.Text = (Convert.ToDouble(tbox18.Text) * 0.1).ToString("0.0000");
            }
            else
            {
                if (Convert.ToDouble(con34.Text) > 2)
                {
                    con35.Text = "0";
                }
                else
                {
                    con35.Text = (Convert.ToDouble(tbox18.Text) * 0.1 * (2 - Convert.ToDouble(con34.Text)) / (2 - 0.7)).ToString("0.0000");
                }
            }

            if (Convert.ToDouble(con36.Text) < 5)
            {
                con37.Text = (Convert.ToDouble(tbox19.Text) * 0.1).ToString("0.0000");
            }
            else
            {
                if (Convert.ToDouble(con36.Text) > 42.7)
                {
                    con37.Text = "0";
                }
                else
                {
                    con37.Text = (Convert.ToDouble(tbox19.Text) * 0.1 * (42.7 - Convert.ToDouble(con36.Text)) / (42.7 - 5)).ToString("0.0000");
                }
            }

            UpdatePanel1.Update();
            UpdatePanel2.Update();
        }

        protected void ASPxButton_Confirm_Click(object sender, EventArgs e)
        {
            try
            {
                UpdateResult();
                UpdateDataSetTwo();
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          TotalCompany2:ASPxButton_Confirm_Click  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        //更新全厂一数据
        private void UpdateDataSetTwo()
        {
            try
            {
                string str;
                str = "delete from tb_quanchangtwo where 项目编号 ='" + ViewState["UserName"].ToString() + "'";
                conn.ExeSql(str);
                //处理19行*2列的显示
                for (int i = 0; i < 19; i++)
                {
                    if (i < 4)
                    {
                        if (((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel2.FindControl("con" + (i * 2).ToString())).Text == "有")
                        {
                            str = "insert into tb_quanchangtwo values('" + ViewState["UserName"].ToString() + "'," + (i + 1) + ",1";
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 2 + 1).ToString())).Text) + ")";
                        }
                        else
                        {
                            str = "insert into tb_quanchangtwo values('" + ViewState["UserName"].ToString() + "'," + (i + 1) + ",0";
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 2 + 1).ToString())).Text) + ")";
                        }
                        conn.ExeSql(str);
                    }
                    if (i >=4 && i < 19)
                    {
                        str = "insert into tb_quanchangtwo values('" + ViewState["UserName"].ToString() + "'," + (i + 1) + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 2).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 2 + 1).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          TotalCompany2:UpdateDataSetOne  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
    }
}