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
    public partial class ResourceRecycle : System.Web.UI.Page
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
                string EMseg = DateTime.Now.ToString() + "        ResourceRecycle:Page_Load          " + ex.Source.ToString() + "         " + ex.Message;
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
                    temp = ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel2.FindControl("con" + (i * 4 + 1).ToString()));
                    temp.Items.Clear();
                    temp.Items.Add("有");
                    temp.Items.Add("否");
                    temp.SelectedIndex = 1;
                }
                //11
                temp = con45;
                temp.Items.Clear();
                temp.Items.Add("有");
                temp.Items.Add("否");
                temp.SelectedIndex = 1;
                //12
                temp = con49;
                temp.Items.Clear();
                temp.Items.Add("≤0.35");
                temp.Items.Add("≤0.7");
                temp.Items.Add("≤1.2");
                temp.SelectedIndex = 0;
                for (int i = 13; i < 16; i++)
                {
                    temp = ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel4.FindControl("con" + (i * 4 + 1).ToString()));
                    temp.Items.Clear();
                    temp.Items.Add("有");
                    temp.Items.Add("否");
                    temp.SelectedIndex = 1;
                }
                //16
                temp = con65;
                temp.Items.Clear();
                temp.Items.Add("≥97.0");
                temp.Items.Add("100");
                temp.SelectedIndex = 0;
                //17
                temp = con69;
                temp.Items.Clear();
                temp.Items.Add("≤0.10");
                temp.Items.Add("≤0.20");
                temp.Items.Add("≤0.30");
                temp.SelectedIndex = 0;
                //18
                temp = con73;
                temp.Items.Clear();
                temp.Items.Add("≥99.0");
                temp.Items.Add("100");
                temp.SelectedIndex = 0;
                //19
                temp = con77;
                temp.Items.Clear();
                temp.Items.Add("≤0.01");
                temp.Items.Add("≤0.02");
                temp.Items.Add("≤0.05");
                temp.SelectedIndex = 0;
                //20
                temp = con81;
                temp.Items.Clear();
                temp.Items.Add("≥40");
                temp.Items.Add("无");
                temp.SelectedIndex = 1;
                //21
                temp = con85;
                temp.Items.Clear();
                temp.Items.Add("≥40");
                temp.Items.Add("无");
                temp.SelectedIndex = 1;
                for (int i = 22; i < 24; i++)
                {
                    temp = ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel5.FindControl("con" + (i * 4 + 1).ToString()));
                    temp.Items.Clear();
                    temp.Items.Add("有");
                    temp.Items.Add("否");
                    temp.SelectedIndex = 1;
                }
                //24
                temp = con97;
                temp.Items.Clear();
                temp.Items.Add("≥90");
                temp.Items.Add("≥95");
                temp.Items.Add("100");
                temp.SelectedIndex = 0;
                //25
                temp = con101;
                temp.Items.Clear();
                temp.Items.Add("0");
                temp.Items.Add("100");
                temp.SelectedIndex = 0;
                //26
                temp = con105;
                temp.Items.Clear();
                temp.Items.Add("有");
                temp.Items.Add("否");
                temp.SelectedIndex = 1;
                //27
                temp = con109;
                temp.Items.Clear();
                temp.Items.Add("≤0.008");
                temp.Items.Add("≤0.015");
                temp.Items.Add("≤0.030");
                temp.SelectedIndex = 0;
                //28
                temp = con113;
                temp.Items.Clear();
                temp.Items.Add("有");
                temp.Items.Add("否");
                temp.SelectedIndex = 1;
                //29
                temp = con117;
                temp.Items.Clear();
                temp.Items.Add("≤0.06");
                temp.Items.Add("≤0.09");
                temp.Items.Add("≤0.18");
                temp.SelectedIndex = 0;
                //30
                temp = con121;
                temp.Items.Clear();
                temp.Items.Add("≤0.150");
                temp.Items.Add("≤0.225");
                temp.Items.Add("≤0.750");
                temp.SelectedIndex = 0;
                //31
                temp = con125;
                temp.Items.Clear();
                temp.Items.Add("≥90");
                temp.Items.Add("≥95");
                temp.Items.Add("100");
                temp.SelectedIndex = 0;
                //32
                temp = con129;
                temp.Items.Clear();
                temp.Items.Add("0");
                temp.Items.Add("100");
                temp.SelectedIndex = 0;
                //33
                temp = con133;
                temp.Items.Clear();
                temp.Items.Add("有");
                temp.Items.Add("否");
                temp.SelectedIndex = 1;
                //34
                temp = con137;
                temp.Items.Clear();
                temp.Items.Add("≤0.006");
                temp.Items.Add("≤0.012");
                temp.Items.Add("≤0.024");
                temp.SelectedIndex = 0;
                //35
                temp = con141;
                temp.Items.Clear();
                temp.Items.Add("≤0.4");
                temp.Items.Add("≤0.5");
                temp.Items.Add("≤0.6");
                temp.SelectedIndex = 0;
                //36
                temp = con145;
                temp.Items.Clear();
                temp.Items.Add("≤0.120");
                temp.Items.Add("≤0.180");
                temp.Items.Add("≤0.60");
                temp.SelectedIndex = 0;
                //37
                temp = con149;
                temp.Items.Clear();
                temp.Items.Add("有");
                temp.Items.Add("否");
                temp.SelectedIndex = 1;

                for (int i = 38; i < 44; i++)
                {
                    temp = ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel9.FindControl("con" + (i * 4 + 1).ToString()));
                    temp.Items.Clear();
                    temp.Items.Add("有");
                    temp.Items.Add("否");
                    temp.SelectedIndex = 1;
                }
                //44
                temp = con177;
                temp.Items.Clear();
                temp.Items.Add("≥95");
                temp.Items.Add("100");
                temp.SelectedIndex = 0;
                //45
                temp = con181;
                temp.Items.Clear();
                temp.Items.Add("≥90");
                temp.Items.Add("≥95");
                temp.Items.Add("100");
                temp.SelectedIndex = 0;
                //46
                temp = con185;
                temp.Items.Clear();
                temp.Items.Add("≤0.005");
                temp.Items.Add("≤0.01");
                temp.Items.Add("≤0.05");
                temp.SelectedIndex = 0;
                //47
                temp = con189;
                temp.Items.Clear();
                temp.Items.Add("≤0.005");
                temp.Items.Add("≤0.01");
                temp.Items.Add("≤0.05");
                temp.SelectedIndex = 0;
                //48
                temp = con193;
                temp.Items.Clear();
                temp.Items.Add("有");
                temp.Items.Add("否");
                temp.SelectedIndex = 1;

                for (int i = 49; i < 56; i++)
                {
                    temp = ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel11.FindControl("con" + (i * 4 + 1).ToString()));
                    temp.Items.Clear();
                    temp.Items.Add("有");
                    temp.Items.Add("否");
                    temp.SelectedIndex = 1;
                }
                for (int i = 56; i < 59; i++)
                {
                    temp = ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel12.FindControl("con" + (i * 4 + 1).ToString()));
                    temp.Items.Clear();
                    temp.Items.Add("有");
                    temp.Items.Add("否");
                    temp.SelectedIndex = 1;
                }
                    

                string str;
                str = "select * from tb_ziyuanxunhuan where 项目编号 = '" + ViewState["UserName"].ToString() + "' and 工艺编号 >=1 and 工艺编号 <=12 order by 工艺编号,评分条目编号";
                conn.GetTable(str);
                //处理59行*3列的显示
                for (int i = 0; i < conn.dt.Rows.Count; i++)
                {
                    if (i >=6 && i<=15)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel2.FindControl("con" + (i * 4 - 24 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 4 - 24 + 2).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 4 - 24 + 3).ToString())).Text = conn.dt.Rows[i][5].ToString();
                    }
                    if (i >= 0 && i <= 2)
                    {
                        if (i == 0)
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 4 + 40 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        }
                        else
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel3.FindControl("con" + (i * 4 + 40 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        }            
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 4 + 40 + 2).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 4 + 40 + 3).ToString())).Text = conn.dt.Rows[i][5].ToString();
                       
                    }
                    if (i >= 3 && i <= 5)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel4.FindControl("con" + (i * 4 + 40 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 4 + 40 + 2).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 4 + 40 + 3).ToString())).Text = conn.dt.Rows[i][5].ToString();
                    }
                    if (i >= 16 && i <= 23)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel5.FindControl("con" + (i * 4 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 4+ 2).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 4+ 3).ToString())).Text = conn.dt.Rows[i][5].ToString();
                    }
                    if (i >= 24 && i <= 30)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel6.FindControl("con" + (i * 4 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 4 + 2).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 4 + 3).ToString())).Text = conn.dt.Rows[i][5].ToString();
                    }
                    if (i >= 31 && i <= 36)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel7.FindControl("con" + (i * 4 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel7.FindControl("con" + (i * 4 + 2).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel7.FindControl("con" + (i * 4 + 3).ToString())).Text = conn.dt.Rows[i][5].ToString();
                    }
                    if (i== 37)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel8.FindControl("con" + (i * 4 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel8.FindControl("con" + (i * 4 + 2).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel8.FindControl("con" + (i * 4 + 3).ToString())).Text = conn.dt.Rows[i][5].ToString();
                    }
                    if (i >= 38 && i <= 43)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel9.FindControl("con" + (i * 4 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel9.FindControl("con" + (i * 4 + 2).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel9.FindControl("con" + (i * 4 + 3).ToString())).Text = conn.dt.Rows[i][5].ToString();
                    }
                    if (i >= 44 && i <= 48)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel10.FindControl("con" + (i * 4 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel10.FindControl("con" + (i * 4 + 2).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel10.FindControl("con" + (i * 4 + 3).ToString())).Text = conn.dt.Rows[i][5].ToString();
                    }
                    if (i >= 49 && i <= 55)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel11.FindControl("con" + (i * 4 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel11.FindControl("con" + (i * 4 + 2).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel11.FindControl("con" + (i * 4 + 3).ToString())).Text = conn.dt.Rows[i][5].ToString();
                    }
                    if (i >= 56 && i <= 58)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel12.FindControl("con" + (i * 4 + 1).ToString())).Text = conn.dt.Rows[i][3].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel12.FindControl("con" + (i * 4 + 2).ToString())).Text = conn.dt.Rows[i][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel12.FindControl("con" + (i * 4 + 3).ToString())).Text = conn.dt.Rows[i][5].ToString();
                    }
                    if (i >= 59)
                        break;
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        ResourceRecycle:UpdateFormView()         " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "        ResourceRecycle:Page_UnLoad          " + ex.Source.ToString() + "         " + ex.Message;
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
                    temp = temp + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 4 + 3).ToString())).Text);
                }
                txtbox1.Text = temp.ToString("0.0000");
                temp = 0;
                for (int i = 10; i < 13; i++)
                {
                    temp = temp + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 4 + 3).ToString())).Text);
                }
                txtbox2.Text = temp.ToString("0.0000");
                temp = 0;
                for (int i = 13; i < 16; i++)
                {
                    temp = temp + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 4 + 3).ToString())).Text);
                }
                txtbox3.Text = temp.ToString("0.0000");
                temp = 0;
                for (int i = 16; i < 24; i++)
                {
                    temp = temp + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 4 + 3).ToString())).Text);
                }
                txtbox4.Text = temp.ToString("0.0000");
                temp = 0;
                for (int i = 24; i < 31; i++)
                {
                    temp = temp + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 4 + 3).ToString())).Text);
                }
                txtbox5.Text = temp.ToString("0.0000");
                temp = 0;
                for (int i = 31; i < 37; i++)
                {
                    temp = temp + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel7.FindControl("con" + (i * 4 + 3).ToString())).Text);
                }
                txtbox6.Text = temp.ToString("0.0000");
                temp = Convert.ToDouble(con151.Text);
                txtbox7.Text = temp.ToString("0.0000");
                temp = 0;
                for (int i = 38; i < 44; i++)
                {
                    temp = temp + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel9.FindControl("con" + (i * 4 + 3).ToString())).Text);
                }
                txtbox8.Text = temp.ToString("0.0000");
                temp = 0;
                for (int i = 44; i < 49; i++)
                {
                    temp = temp + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel10.FindControl("con" + (i * 4 + 3).ToString())).Text);
                }
                txtbox9.Text = temp.ToString("0.0000");
                temp = 0;
                for (int i = 49; i < 56; i++)
                {
                    temp = temp + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel11.FindControl("con" + (i * 4 + 3).ToString())).Text);
                }
                txtbox10.Text = temp.ToString("0.0000");
                temp = 0;
                for (int i = 56; i < 59; i++)
                {
                    temp = temp + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel12.FindControl("con" + (i * 4 + 3).ToString())).Text);
                }
                txtbox11.Text = temp.ToString("0.0000");
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        ResourceRecycle:UpdateTotal()        " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "           ResourceRecycle:con117_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
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
            //处理59行*2列的显示
            for (int i = 0; i < 59; i++)
            {
                if (i < 10)
                {
                    if (((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel2.FindControl("con" + (i * 4 + 1).ToString())).Text == "有")
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 4 + 2).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 4).ToString())).Text) * 0.1).ToString("0.0000");
                    }
                    else
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 4 + 2).ToString())).Text = "0";
                    }
                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 4 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 4 + 2).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[2][2].ToString()) / 100).ToString("0.0000");
                }
              
                if (i >= 10 && i < 13)
                {
                    if (i == 10)
                    {
                        con42.Text = (Convert.ToDouble(con40.Text) * Convert.ToDouble(con41.Text) * 0.1 / 100).ToString("0.0000");
                        con43.Text = (Convert.ToDouble(con42.Text) * Convert.ToDouble(conn.dt.Rows[0][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 11)
                    {
                        if (con45.Text == "有")
                        {
                            con46.Text = (Convert.ToDouble(con44.Text) * 0.1).ToString("0.0000");
                        }
                        else
                        {
                            con46.Text = "0";
                        }
                        con47.Text = (Convert.ToDouble(con46.Text) * Convert.ToDouble(conn.dt.Rows[0][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 12)
                    {
                        if (con49.Text == "≤0.35")
                        {
                            con50.Text = (Convert.ToDouble(con48.Text) * 0.1).ToString("0.0000");
                        }
                        if (con49.Text == "≤0.7")
                        {
                            con50.Text = (Convert.ToDouble(con48.Text) * 0.1*0.8).ToString("0.0000");
                        }
                        if (con49.Text == "≤1.2")
                        {
                            con50.Text = (Convert.ToDouble(con48.Text) * 0.1 * 0.6).ToString("0.0000");
                        }
                        con51.Text = (Convert.ToDouble(con50.Text) * Convert.ToDouble(conn.dt.Rows[0][2].ToString()) / 100).ToString("0.0000");
                    }
                }
                if (i >= 13 && i <16)
                {
                    if (((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel4.FindControl("con" + (i * 4 + 1).ToString())).Text == "有")
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 4 + 2).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 4).ToString())).Text) * 0.1).ToString("0.0000");
                    }
                    else
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 4 + 2).ToString())).Text = "0";
                    }
                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 4 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 4 + 2).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[1][2].ToString()) / 100).ToString("0.0000");
                }
                if (i >= 16 && i < 24)
                {
                    if (i == 16)
                    {
                        if (con65.Text == "100")
                        {
                            con66.Text = (Convert.ToDouble(con64.Text) * 0.1).ToString("0.0000");
                        }
                        if (con65.Text == "≥97.0")
                        {
                            con66.Text = (Convert.ToDouble(con64.Text) * 0.1*0.6).ToString("0.0000");
                        }
                        con67.Text = (Convert.ToDouble(con66.Text) * Convert.ToDouble(conn.dt.Rows[3][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 17)
                    {
                        if (con69.Text == "≤0.10")
                        {
                            con70.Text = (Convert.ToDouble(con68.Text) * 0.1).ToString("0.0000");
                        }
                        if (con69.Text == "≤0.20")
                        {
                            con70.Text = (Convert.ToDouble(con68.Text) * 0.1*0.8).ToString("0.0000");
                        }
                        if (con69.Text == "≤0.30")
                        {
                            con70.Text = (Convert.ToDouble(con68.Text) * 0.1 * 0.6).ToString("0.0000");
                        }
                        con71.Text = (Convert.ToDouble(con70.Text) * Convert.ToDouble(conn.dt.Rows[3][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 18)
                    {
                        if (con73.Text == "100")
                        {
                            con74.Text = (Convert.ToDouble(con72.Text) * 0.1).ToString("0.0000");
                        }
                        if (con73.Text == "≥99.0")
                        {
                            con74.Text = (Convert.ToDouble(con72.Text) * 0.1*0.6).ToString("0.0000");
                        }
                        con75.Text = (Convert.ToDouble(con74.Text) * Convert.ToDouble(conn.dt.Rows[3][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 19)
                    {
                        if (con77.Text == "≤0.01")
                        {
                            con78.Text = (Convert.ToDouble(con76.Text) * 0.1).ToString("0.0000");
                        }
                        if (con77.Text == "≤0.02")
                        {
                            con78.Text = (Convert.ToDouble(con76.Text) * 0.1 * 0.8).ToString("0.0000");
                        }
                        if (con77.Text == "≤0.05")
                        {
                            con78.Text = (Convert.ToDouble(con76.Text) * 0.1 * 0.6).ToString("0.0000");
                        }
                        con79.Text = (Convert.ToDouble(con78.Text) * Convert.ToDouble(conn.dt.Rows[3][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 20)
                    {
                        if (con81.Text == "≥40")
                        {
                            con82.Text = (Convert.ToDouble(con80.Text) * 0.1).ToString("0.0000");
                        }
                        else
                        {
                            con82.Text = "0";
                        }
                        con83.Text = (Convert.ToDouble(con82.Text) * Convert.ToDouble(conn.dt.Rows[3][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 21)
                    {
                        if (con85.Text == "≥40")
                        {
                            con86.Text = (Convert.ToDouble(con84.Text) * 0.1).ToString("0.0000");
                        }
                        else
                        {
                            con86.Text = "0";
                        }
                        con87.Text = (Convert.ToDouble(con86.Text) * Convert.ToDouble(conn.dt.Rows[3][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 22)
                    {
                        if (con89.Text == "有")
                        {
                            con90.Text = (Convert.ToDouble(con88.Text) * 0.1).ToString("0.0000");
                        }
                        else
                        {
                            con90.Text = "0";
                        }
                        con91.Text = (Convert.ToDouble(con90.Text) * Convert.ToDouble(conn.dt.Rows[3][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 23)
                    {
                        if (con93.Text == "有")
                        {
                            con94.Text = (Convert.ToDouble(con92.Text) * 0.1).ToString("0.0000");
                        }
                        else
                        {
                            con94.Text = "0";
                        }
                        con95.Text = (Convert.ToDouble(con94.Text) * Convert.ToDouble(conn.dt.Rows[3][2].ToString()) / 100).ToString("0.0000");
                    }
                }
                if (i >= 24&& i < 31)
                {
                    if (i == 24)
                    {
                        if (con97.Text == "100")
                        {
                            con98.Text = (Convert.ToDouble(con96.Text) * 0.1).ToString("0.0000");
                        }
                        if (con97.Text == "≥95")
                        {
                            con98.Text = (Convert.ToDouble(con96.Text) * 0.1 * 0.8).ToString("0.0000");
                        }
                        if (con97.Text == "≥90")
                        {
                            con98.Text = (Convert.ToDouble(con96.Text) * 0.1 * 0.6).ToString("0.0000");
                        }
                        con99.Text = (Convert.ToDouble(con98.Text) * Convert.ToDouble(conn.dt.Rows[5][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 25)
                    {
                        if (con101.Text == "100")
                        {
                            con102.Text = (Convert.ToDouble(con100.Text) * 0.1).ToString("0.0000");
                        }
                        else
                        {
                            con102.Text = (Convert.ToDouble(con100.Text) * 0.1 * 0.6).ToString("0.0000");
                        }
                        con103.Text = (Convert.ToDouble(con102.Text) * Convert.ToDouble(conn.dt.Rows[5][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 26)
                    {
                        if (con105.Text == "有")
                        {
                            con106.Text = (Convert.ToDouble(con104.Text) * 0.1).ToString("0.0000");
                        }
                        else
                        {
                            con106.Text = "0";
                        }
                        con107.Text = (Convert.ToDouble(con106.Text) * Convert.ToDouble(conn.dt.Rows[5][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 27)
                    {
                        if (con109.Text == "≤0.008")
                        {
                            con110.Text = (Convert.ToDouble(con108.Text) * 0.1).ToString("0.0000");
                        }
                        if (con109.Text == "≤0.015")
                        {
                            con110.Text = (Convert.ToDouble(con108.Text) * 0.1*0.8).ToString("0.0000");
                        }
                        if (con109.Text == "≤0.030")
                        {
                            con110.Text = (Convert.ToDouble(con108.Text) * 0.1 * 0.6).ToString("0.0000");
                        }
                        con111.Text = (Convert.ToDouble(con110.Text) * Convert.ToDouble(conn.dt.Rows[5][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 28)
                    {
                        if (con113.Text == "有")
                        {
                            con114.Text = (Convert.ToDouble(con112.Text) * 0.1).ToString("0.0000");
                        }
                        else
                        {
                            con114.Text = "0";
                        }
                        con115.Text = (Convert.ToDouble(con114.Text) * Convert.ToDouble(conn.dt.Rows[5][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 29)
                    {
                        if (con117.Text == "≤0.06")
                        {
                            con118.Text = (Convert.ToDouble(con116.Text) * 0.1).ToString("0.0000");
                        }
                        if (con117.Text == "≤0.09")
                        {
                            con118.Text = (Convert.ToDouble(con116.Text) * 0.1*0.8).ToString("0.0000");
                        }
                        if (con117.Text == "≤0.18")
                        {
                            con118.Text = (Convert.ToDouble(con116.Text) * 0.1*0.6).ToString("0.0000");
                        }
                        con119.Text = (Convert.ToDouble(con118.Text) * Convert.ToDouble(conn.dt.Rows[5][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 30)
                    {
                        if (con121.Text == "≤0.150")
                        {
                            con122.Text = (Convert.ToDouble(con120.Text) * 0.1).ToString("0.0000");
                        }
                        if (con121.Text == "≤0.225")
                        {
                            con122.Text = (Convert.ToDouble(con120.Text) * 0.1*0.8).ToString("0.0000");
                        }
                        if (con121.Text == "≤0.750")
                        {
                            con122.Text = (Convert.ToDouble(con120.Text) * 0.1 * 0.6).ToString("0.0000");
                        }
                        con123.Text = (Convert.ToDouble(con122.Text) * Convert.ToDouble(conn.dt.Rows[5][2].ToString()) / 100).ToString("0.0000");
                    }
                }
                if (i >= 31 && i < 37)
                {
                    if (i == 31)
                    {
                        if (con125.Text == "100")
                        {
                            con126.Text = (Convert.ToDouble(con124.Text) * 0.1).ToString("0.0000");
                        }
                        if (con125.Text == "≥95")
                        {
                            con126.Text = (Convert.ToDouble(con124.Text) * 0.1 * 0.8).ToString("0.0000");
                        }
                        if (con125.Text == "≥90")
                        {
                            con126.Text = (Convert.ToDouble(con124.Text) * 0.1 * 0.6).ToString("0.0000");
                        }
                        con127.Text = (Convert.ToDouble(con126.Text) * Convert.ToDouble(conn.dt.Rows[6][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 32)
                    {
                        if (con129.Text == "100")
                        {
                            con130.Text = (Convert.ToDouble(con128.Text) * 0.1).ToString("0.0000");
                        }
                        else
                        {
                            con130.Text = (Convert.ToDouble(con128.Text) * 0.1 * 0.6).ToString("0.0000");
                        }
                        con131.Text = (Convert.ToDouble(con130.Text) * Convert.ToDouble(conn.dt.Rows[6][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 33)
                    {
                        if (con133.Text == "有")
                        {
                            con134.Text = (Convert.ToDouble(con132.Text) * 0.1).ToString("0.0000");
                        }
                        else
                        {
                            con134.Text = "0";
                        }
                        con135.Text = (Convert.ToDouble(con134.Text) * Convert.ToDouble(conn.dt.Rows[6][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i ==34)
                    {
                        if (con137.Text == "≤0.006")
                        {
                            con138.Text = (Convert.ToDouble(con136.Text) * 0.1).ToString("0.0000");
                        }
                        if (con137.Text == "≤0.012")
                        {
                            con138.Text = (Convert.ToDouble(con136.Text) * 0.1 * 0.8).ToString("0.0000");
                        }
                        if (con137.Text == "≤0.024")
                        {
                            con138.Text = (Convert.ToDouble(con136.Text) * 0.1 * 0.6).ToString("0.0000");
                        }
                        con139.Text = (Convert.ToDouble(con138.Text) * Convert.ToDouble(conn.dt.Rows[6][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 35)
                    {
                        if (con141.Text == "≤0.4")
                        {
                            con142.Text = (Convert.ToDouble(con140.Text) * 0.1).ToString("0.0000");
                        }
                        if (con141.Text == "≤0.5")
                        {
                            con142.Text = (Convert.ToDouble(con140.Text) * 0.1*0.8).ToString("0.0000");
                        }
                        if (con141.Text == "≤0.6")
                        {
                            con142.Text = (Convert.ToDouble(con140.Text) * 0.1*0.6).ToString("0.0000");
                        }
                        con143.Text = (Convert.ToDouble(con142.Text) * Convert.ToDouble(conn.dt.Rows[6][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 36)
                    {
                        if (con145.Text == "≤0.120")
                        {
                            con146.Text = (Convert.ToDouble(con144.Text) * 0.1).ToString("0.0000");
                        }
                        if (con145.Text == "≤0.180")
                        {
                            con146.Text = (Convert.ToDouble(con144.Text) * 0.1 * 0.8).ToString("0.0000");
                        }
                        if (con145.Text == "≤0.60")
                        {
                            con146.Text = (Convert.ToDouble(con144.Text) * 0.1 * 0.6).ToString("0.0000");
                        }
                        con147.Text = (Convert.ToDouble(con146.Text) * Convert.ToDouble(conn.dt.Rows[6][2].ToString()) / 100).ToString("0.0000");
                    }
                }
                if (i == 37)
                {
                    if (con149.Text == "有")
                    {
                        con150.Text = (Convert.ToDouble(con148.Text) * 0.1).ToString("0.0000");
                    }
                    else
                    {
                        con150.Text = "0";
                    }
                    con151.Text = (Convert.ToDouble(con150.Text) * Convert.ToDouble(conn.dt.Rows[7][2].ToString()) / 100).ToString("0.0000");
                }
                if (i >= 38 && i<44)
                {
                    if (((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel9.FindControl("con" + (i * 4 + 1).ToString())).Text == "有")
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel9.FindControl("con" + (i * 4 + 2).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel9.FindControl("con" + (i * 4).ToString())).Text) * 0.1).ToString("0.0000");
                    }
                    else
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel9.FindControl("con" + (i * 4 + 2).ToString())).Text = "0";
                    }
                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel9.FindControl("con" + (i * 4 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel9.FindControl("con" + (i * 4 + 2).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[8][2].ToString()) / 100).ToString("0.0000");
                }
                if (i >= 44 && i < 49)
                {
                    if (i == 44)
                    {
                        if (con177.Text == "100")
                        {
                            con178.Text = (Convert.ToDouble(con176.Text) * 0.1).ToString("0.0000");
                        }
                        if (con177.Text == "≥95")
                        {
                            con178.Text = (Convert.ToDouble(con176.Text) * 0.1*0.6).ToString("0.0000");
                        }
                        con179.Text = (Convert.ToDouble(con178.Text) * Convert.ToDouble(conn.dt.Rows[9][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 45)
                    {
                        if (con181.Text == "100")
                        {
                            con182.Text = (Convert.ToDouble(con180.Text) * 0.1).ToString("0.0000");
                        }
                        if (con181.Text == "≥95")
                        {
                            con182.Text = (Convert.ToDouble(con180.Text) * 0.1 * 0.8).ToString("0.0000");
                        }
                        if (con181.Text == "≥90")
                        {
                            con182.Text = (Convert.ToDouble(con180.Text) * 0.1 * 0.6).ToString("0.0000");
                        }
                        con183.Text = (Convert.ToDouble(con182.Text) * Convert.ToDouble(conn.dt.Rows[9][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 46)
                    {
                        if (con185.Text == "≤0.005")
                        {
                            con186.Text = (Convert.ToDouble(con184.Text) * 0.1).ToString("0.0000");
                        }
                        if (con185.Text == "≤0.01")
                        {
                            con186.Text = (Convert.ToDouble(con184.Text) * 0.1*0.8).ToString("0.0000");
                        }
                        if (con185.Text == "≤0.05")
                        {
                            con186.Text = (Convert.ToDouble(con184.Text) * 0.1*0.6).ToString("0.0000");
                        }
                        con187.Text = (Convert.ToDouble(con186.Text) * Convert.ToDouble(conn.dt.Rows[9][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 47)
                    {
                        if (con189.Text == "≤0.005")
                        {
                            con190.Text = (Convert.ToDouble(con188.Text) * 0.1).ToString("0.0000");
                        }
                        if (con189.Text == "≤0.01")
                        {
                            con190.Text = (Convert.ToDouble(con188.Text) * 0.1 * 0.8).ToString("0.0000");
                        }
                        if (con189.Text == "≤0.05")
                        {
                            con190.Text = (Convert.ToDouble(con188.Text) * 0.1 * 0.6).ToString("0.0000");
                        }
                        con191.Text = (Convert.ToDouble(con190.Text) * Convert.ToDouble(conn.dt.Rows[9][2].ToString()) / 100).ToString("0.0000");
                    }
                    if (i == 48)
                    {
                        if (con193.Text == "有")
                        {
                            con194.Text = (Convert.ToDouble(con192.Text) * 0.1).ToString("0.0000");
                        }
                        else
                        {
                            con194.Text = "0";
                        }
                        con195.Text = (Convert.ToDouble(con194.Text) * Convert.ToDouble(conn.dt.Rows[9][2].ToString()) / 100).ToString("0.0000");
                    }
                }
                if (i >= 49 && i < 56)
                {
                    if (((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel11.FindControl("con" + (i * 4 + 1).ToString())).Text == "有")
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel11.FindControl("con" + (i * 4 + 2).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel11.FindControl("con" + (i * 4).ToString())).Text) * 0.1).ToString("0.0000");
                    }
                    else
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel11.FindControl("con" + (i * 4 + 2).ToString())).Text = "0";
                    }
                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel11.FindControl("con" + (i * 4 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel11.FindControl("con" + (i * 4 + 2).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[10][2].ToString()) / 100).ToString("0.0000");
                }
                if (i >= 56 && i < 59)
                {
                    if (((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel12.FindControl("con" + (i * 4 + 1).ToString())).Text == "有")
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel12.FindControl("con" + (i * 4 + 2).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel12.FindControl("con" + (i * 4).ToString())).Text) * 0.1).ToString("0.0000");
                    }
                    else
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel12.FindControl("con" + (i * 4 + 2).ToString())).Text = "0";
                    }
                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel12.FindControl("con" + (i * 4 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel12.FindControl("con" + (i * 4 + 2).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[11][2].ToString()) / 100).ToString("0.0000");
                }
                if (i >= 59)
                    break;
            }
            UpdateTotal();

            UpdatePanel_Scorch.Update();
            UpdatePanel_Cake.Update();
            UpdatePanel_Pellets.Update();
            UpdatePanel_Blast.Update();
            UpdatePanel_BF.Update();
            UpdatePanel_EAF.Update();
            UpdatePanel_LF.Update();
            UpdatePanel_Cast.Update();
            UpdatePanel_Hot.Update();
            UpdatePanel_Cold.Update();
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
                string EMseg = DateTime.Now.ToString() + "          ResourceRecycle:ASPxButton_Confirm_Click  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        //更新数据
        private void UpdateDataSetNengHao()
        {
            try
            {
                string str;
                str = "delete from tb_ziyuanxunhuan where 项目编号 ='" + ViewState["UserName"].ToString() + "'";
                conn.ExeSql(str);
                //处理59行*4列的显示
                for (int i = 0; i < 59; i++)
                {
                    if (i < 10)
                    {
                        str = "insert into tb_ziyuanxunhuan values('" + ViewState["UserName"].ToString() + "',3," + (i + 1);
                        str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel2.FindControl("con" + (i * 4 + 1).ToString())).Text + "'";
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 4+ 2).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 4 + 3).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                    if (i >= 10 && i < 13)
                    {
                        if (i == 10)
                        {
                            str = "insert into tb_ziyuanxunhuan values('" + ViewState["UserName"].ToString() + "',1," + (i -9);
                            str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 4 + 1).ToString())).Text + "'";
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 4 + 2).ToString())).Text);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 4 + 3).ToString())).Text) + ")";
                        }
                        else
                        {
                            str = "insert into tb_ziyuanxunhuan values('" + ViewState["UserName"].ToString() + "',1," + (i - 9);
                            str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel3.FindControl("con" + (i * 4 + 1).ToString())).Text + "'";
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 4 + 2).ToString())).Text);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 4 + 3).ToString())).Text) + ")";
                        }
                        conn.ExeSql(str);
                    }
                    if (i >= 13 && i < 16)
                    {
                        str = "insert into tb_ziyuanxunhuan values('" + ViewState["UserName"].ToString() + "',2," + (i-12);
                        str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel4.FindControl("con" + (i * 4 + 1).ToString())).Text + "'";
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 4 + 2).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 4 + 3).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                    if (i >= 16 && i < 24)
                    {
                        str = "insert into tb_ziyuanxunhuan values('" + ViewState["UserName"].ToString() + "',4," + (i-15);
                        str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel5.FindControl("con" + (i * 4 + 1).ToString())).Text + "'";
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 4 + 2).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 4 + 3).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                    if (i >= 24 && i < 31)
                    {
                        str = "insert into tb_ziyuanxunhuan values('" + ViewState["UserName"].ToString() + "',6," + (i - 23);
                        str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel6.FindControl("con" + (i * 4 + 1).ToString())).Text + "'";
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 4 + 2).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 4 + 3).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                    if (i >= 31 && i < 37)
                    {
                        str = "insert into tb_ziyuanxunhuan values('" + ViewState["UserName"].ToString() + "',7," + (i - 30);
                        str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel7.FindControl("con" + (i * 4 + 1).ToString())).Text + "'";
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel7.FindControl("con" + (i * 4 + 2).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel7.FindControl("con" + (i * 4 + 3).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                    if (i ==37)
                    {
                        str = "insert into tb_ziyuanxunhuan values('" + ViewState["UserName"].ToString() + "',8," + (i -36);
                        str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel8.FindControl("con" + (i * 4 + 1).ToString())).Text + "'";
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel8.FindControl("con" + (i * 4 + 2).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel8.FindControl("con" + (i * 4 + 3).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                    if (i >= 38 && i < 44)
                    {
                        str = "insert into tb_ziyuanxunhuan values('" + ViewState["UserName"].ToString() + "',9," + (i - 37);
                        str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel9.FindControl("con" + (i * 4 + 1).ToString())).Text + "'";
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel9.FindControl("con" + (i * 4 + 2).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel9.FindControl("con" + (i * 4 + 3).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                    if (i >= 44 && i < 49)
                    {
                        str = "insert into tb_ziyuanxunhuan values('" + ViewState["UserName"].ToString() + "',10," + (i - 43);
                        str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel10.FindControl("con" + (i * 4 + 1).ToString())).Text + "'";
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel10.FindControl("con" + (i * 4 + 2).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel10.FindControl("con" + (i * 4 + 3).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                    if (i >= 49 && i < 56)
                    {
                        str = "insert into tb_ziyuanxunhuan values('" + ViewState["UserName"].ToString() + "',11," + (i - 48);
                        str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel11.FindControl("con" + (i * 4 + 1).ToString())).Text + "'";
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel11.FindControl("con" + (i * 4 + 2).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel11.FindControl("con" + (i * 4 + 3).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                    if (i >= 56 && i < 59)
                    {
                        str = "insert into tb_ziyuanxunhuan values('" + ViewState["UserName"].ToString() + "',12," + (i - 55);
                        str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel12.FindControl("con" + (i * 4 + 1).ToString())).Text + "'";
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel12.FindControl("con" + (i * 4 + 2).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel12.FindControl("con" + (i * 4 + 3).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          ResourceRecycle:UpdateDataSetOne  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
    }
}