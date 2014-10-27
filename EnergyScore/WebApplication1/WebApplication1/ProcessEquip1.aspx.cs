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
    public partial class ProcessEquip1 : System.Web.UI.Page
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
                string EMseg = DateTime.Now.ToString() + "        ProcessEquip1:Page_Load          " + ex.Source.ToString() + "         " + ex.Message;
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
                con1.Items.Clear();
                con1.Items.Add("<6m");
                con1.Items.Add("<6.9m");
                con1.Items.Add("<7.63m");
                con1.Items.Add("≥7.63m");
                con1.SelectedIndex = 1;

                con11.Items.Clear();
                con11.Items.Add("有");
                con11.Items.Add("否");
                con11.SelectedIndex = 1;

                con16.Items.Clear();
                con16.Items.Add("有");
                con16.Items.Add("否");
                con16.SelectedIndex = 1;

                con21.Items.Clear();
                con21.Items.Add("有");
                con21.Items.Add("否");
                con21.SelectedIndex = 1;

                con26.Items.Clear();
                con26.Items.Add("有");
                con26.Items.Add("否");
                con26.SelectedIndex = 1;

                con31.Items.Clear();
                con31.Items.Add("有");
                con31.Items.Add("否");
                con31.SelectedIndex = 1;

                con36.Items.Clear();
                con36.Items.Add("有");
                con36.Items.Add("否");
                con36.SelectedIndex = 1;

                con41.Items.Clear();
                con41.Items.Add("有");
                con41.Items.Add("否");
                con41.SelectedIndex = 1;

                con46.Items.Clear();
                con46.Items.Add("有");
                con46.Items.Add("否");
                con46.SelectedIndex = 1;

                con51.Items.Clear();
                con51.Items.Add("有");
                con51.Items.Add("否");
                con51.SelectedIndex = 1;

                con56.Items.Clear();
                con56.Items.Add("有");
                con56.Items.Add("否");
                con56.SelectedIndex = 1;

                con76.Items.Clear();
                con76.Items.Add("有");
                con76.Items.Add("否");
                con76.SelectedIndex = 1;

                con81.Items.Clear();
                con81.Items.Add("有");
                con81.Items.Add("否");
                con81.SelectedIndex = 1;

                con86.Items.Clear();
                con86.Items.Add("有");
                con86.Items.Add("否");
                con86.SelectedIndex = 1;

                con91.Items.Clear();
                con91.Items.Add("有");
                con91.Items.Add("否");
                con91.SelectedIndex = 1;

                con96.Items.Clear();
                con96.Items.Add("有");
                con96.Items.Add("否");
                con96.SelectedIndex = 1;

                con101.Items.Clear();
                con101.Items.Add("有");
                con101.Items.Add("否");
                con101.SelectedIndex = 1;

                con106.Items.Clear();
                con106.Items.Add("有");
                con106.Items.Add("否");
                con106.SelectedIndex = 1;

                con111.Items.Clear();
                con111.Items.Add("有");
                con111.Items.Add("否");
                con111.SelectedIndex = 1;

                con116.Items.Clear();
                con116.Items.Add("有");
                con116.Items.Add("否");
                con116.SelectedIndex = 1;

                con121.Items.Clear();
                con121.Items.Add("有");
                con121.Items.Add("否");
                con121.SelectedIndex = 1;

                con126.Items.Clear();
                con126.Items.Add("有");
                con126.Items.Add("否");
                con126.SelectedIndex = 1;

                con131.Items.Clear();
                con131.Items.Add("有");
                con131.Items.Add("否");
                con131.SelectedIndex = 1;

                con136.Items.Clear();
                con136.Items.Add("有");
                con136.Items.Add("否");
                con136.SelectedIndex = 1;

                con141.Items.Clear();
                con141.Items.Add("有");
                con141.Items.Add("否");
                con141.SelectedIndex = 1;

                con146.Items.Clear();
                con146.Items.Add("有");
                con146.Items.Add("否");
                con146.SelectedIndex = 1;

                con151.Items.Clear();
                con151.Items.Add("有");
                con151.Items.Add("否");
                con151.SelectedIndex = 1;

                con166.Items.Clear();
                con166.Items.Add("有");
                con166.Items.Add("否");
                con166.SelectedIndex = 1;
                
                con171.Items.Clear();
                con171.Items.Add("有");
                con171.Items.Add("否");
                con171.SelectedIndex = 1;

                con176.Items.Clear();
                con176.Items.Add("有");
                con176.Items.Add("否");
                con176.SelectedIndex = 1;

                con181.Items.Clear();
                con181.Items.Add("有");
                con181.Items.Add("否");
                con181.SelectedIndex = 1;

                con186.Items.Clear();
                con186.Items.Add("有");
                con186.Items.Add("否");
                con186.SelectedIndex = 1;

                con191.Items.Clear();
                con191.Items.Add("有");
                con191.Items.Add("否");
                con191.SelectedIndex = 1;

                con201.Items.Clear();
                con201.Items.Add("有");
                con201.Items.Add("否");
                con201.SelectedIndex = 1;

                con206.Items.Clear();
                con206.Items.Add("有");
                con206.Items.Add("否");
                con206.SelectedIndex = 1;

                con216.Items.Clear();
                con216.Items.Add("有");
                con216.Items.Add("否");
                con216.SelectedIndex = 1;

                con226.Items.Clear();
                con226.Items.Add("有");
                con226.Items.Add("否");
                con226.SelectedIndex = 1;

                string str;
                str = "select * from tb_gongyizhuangbei where 项目编号 = '" + ViewState["UserName"].ToString() + "' and 工艺编号 = 3 order by 工艺编号,评分条目编号";
                conn.GetTable(str);
                //处理46行*4列的显示
                for (int i = 0; i < conn.dt.Rows.Count; i++)
                {
                    if (i < 13)
                    {
                        if (i == 1 || i == 12)
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
                    if (i >= 13)
                        break;
                }
                str = "select * from tb_gongyizhuangbei where 项目编号 = '" + ViewState["UserName"].ToString() + "' and (工艺编号 = 1 or 工艺编号 = 4 ) order by 工艺编号,评分条目编号";
                conn.GetTable(str);
                //处理46行*4列的显示
                for (int i = 13; i < conn.dt.Rows.Count+13; i++)
                {
                    if (i <31)
                    {
                        if (i == 13 || i == 14)
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 1).ToString())).Text = conn.dt.Rows[i-13][3].ToString();
                        }
                        else
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 1).ToString())).Text = conn.dt.Rows[i-13][3].ToString();
                        }
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 2).ToString())).Text = conn.dt.Rows[i-13][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 3).ToString())).Text = conn.dt.Rows[i-13][5].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 4).ToString())).Text = conn.dt.Rows[i-13][6].ToString();
                    }
                    if (i >= 31 && i < 46)
                    {
                        if (i == 31 || i == 32 || i == 39 || i == 42 || i == 44)
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text = conn.dt.Rows[i-13][3].ToString();
                        }
                        else
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text = conn.dt.Rows[i-13][3].ToString();
                        }
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 2).ToString())).Text = conn.dt.Rows[i-13][4].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = conn.dt.Rows[i-13][5].ToString();
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 4).ToString())).Text = conn.dt.Rows[i-13][6].ToString();
                    }
                    if (i >= 46)
                        break;
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        ProcessEquip1:UpdateFormView()         " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "        ProcessEquip1:Page_UnLoad          " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        //更新合计
        private void UpdateTotal()
        {
            try
            {
                double temp=0;
                for (int i = 0; i < 13; i++)
                {
                    temp = temp + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 4).ToString())).Text);
                }
                txtbox1.Text = temp.ToString("0.0000");
                temp = 0;
                for (int i = 13; i < 31; i++)
                {
                    temp = temp + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 4).ToString())).Text);
                }
                txtbox2.Text = temp.ToString("0.0000");
                temp = 0;
                for (int i = 31; i < 46; i++)
                {
                    temp = temp + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 4).ToString())).Text);
                }
                txtbox3.Text = temp.ToString("0.0000");
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        ProcessEquip1:UpdateTotal()        " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "           ProcessEquip1:con117_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
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
            for (int i = 0; i < 46; i++)
            {
                if (i < 13)
                {
                    if (i == 1 || i == 12)
                    {
                        if (i == 1)
                        {
                            if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 1).ToString())).Text) < 17)
                            {
                                ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5).ToString())).Text) * 0.3).ToString("0.0000");
                            }
                            else
                            {
                                if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 1).ToString())).Text) > 22)
                                {
                                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 3).ToString())).Text = "0";
                                }
                                else
                                {
                                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5).ToString())).Text) * 0.3 * (22 - Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 1).ToString())).Text)) / (22 - 17)).ToString("0.0000");
                                }
                            }
                        }
                        else
                        {
                            if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 1).ToString())).Text) > 430)
                            {
                                ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5).ToString())).Text) * 0.3).ToString("0.0000");
                            }
                            else
                            {
                                if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 1).ToString())).Text) <350)
                                {
                                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 3).ToString())).Text = "0";
                                }
                                else
                                {
                                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5).ToString())).Text) * 0.3 * (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 1).ToString())).Text) - 350) / (430 - 350)).ToString("0.0000");
                                }
                            }
                        }
                    }
                    else
                    {
                        if (i == 0)
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 3).ToString())).Text = "0";
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
                    }
                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 4).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 3).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[2][2].ToString()) / 100).ToString("0.0000");
                }
                if (i >= 13 && i < 31)
                {
                    if (i == 13 || i == 14)
                    {
                        if (i == 13)
                        {
                            if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 1).ToString())).Text) > 600)
                            {
                                ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5).ToString())).Text) * 0.3).ToString("0.0000");
                            }
                            else
                            {
                                if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 1).ToString())).Text) < 180)
                                {
                                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 3).ToString())).Text = "0";
                                }
                                else
                                {
                                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5).ToString())).Text) * 0.3 * (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 1).ToString())).Text) - 180) / (600 - 180)).ToString("0.0000");
                                }
                            }
                        }
                        else
                        {
                            if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 1).ToString())).Text) > 2.0)
                            {
                                ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5).ToString())).Text) * 0.3).ToString("0.0000");
                            }
                            else
                            {
                                if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 1).ToString())).Text) < 1.1)
                                {
                                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 3).ToString())).Text = "0";
                                }
                                else
                                {
                                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5).ToString())).Text) * 0.3 * (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 1).ToString())).Text) - 1.1) / (2.0 - 1.1)).ToString("0.0000");
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
                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 4).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 3).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[0][2].ToString()) / 100).ToString("0.0000");
                }
                if (i >= 31 && i < 46)
                {
                    if (i == 31 || i == 32 || i == 39 || i == 42 || i == 44)
                    {
                        if (i == 31)
                        {
                            if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text) > 4000)
                            {
                                ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5).ToString())).Text) * 0.3).ToString("0.0000");
                            }
                            else
                            {
                                if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text) < 1000)
                                {
                                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = "0";
                                }
                                else
                                {
                                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5).ToString())).Text) * 0.3 * (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text) - 1000) / (4000 - 1000)).ToString("0.0000");
                                }
                            }
                        }
                        if (i == 32)
                        {
                            if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text) > 2.5)
                            {
                                ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5).ToString())).Text) * 0.3).ToString("0.0000");
                            }
                            else
                            {
                                if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text) < 2.0)
                                {
                                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = "0";
                                }
                                else
                                {
                                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5).ToString())).Text) * 0.3 * (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text) - 2.0) / (2.5 - 2.0)).ToString("0.0000");
                                }
                            }
                        }
                        if (i == 39)
                        {
                            if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text) > 200)
                            {
                                ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5).ToString())).Text) * 0.3).ToString("0.0000");
                            }
                            else
                            {
                                if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text) < 150)
                                {
                                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = "0";
                                }
                                else
                                {
                                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5).ToString())).Text) * 0.3 * (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text) - 150) / (200 - 150)).ToString("0.0000");
                                }
                            }
                        }
                        if (i == 42)
                        {
                            if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text) > 40)
                            {
                                ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5).ToString())).Text) * 0.3).ToString("0.0000");
                            }
                            else
                            {
                                if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text) < 20)
                                {
                                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = "0";
                                }
                                else
                                {
                                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5).ToString())).Text) * 0.3 * (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text) - 20) / (40- 20)).ToString("0.0000");
                                }
                            }
                        }
                        if (i == 44)
                        {
                            if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text) > 2000)
                            {
                                ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5).ToString())).Text) * 0.3).ToString("0.0000");
                            }
                            else
                            {
                                if (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text) < 1700)
                                {
                                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = "0";
                                }
                                else
                                {
                                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5).ToString())).Text) * 0.3 * (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text) - 1700) / (2000 - 1700)).ToString("0.0000");
                                }
                            }
                        }
                    }
                    else
                    {
                        if (((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text == "有")
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5).ToString())).Text) * 0.3).ToString("0.0000");
                        }
                        else
                        {
                            ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text = "0";
                        }
                    }
                    ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 4).ToString())).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text) * Convert.ToDouble(conn.dt.Rows[3][2].ToString()) / 100).ToString("0.0000");
                
                }
                if (i >= 46)
                    break;
            }
            UpdateTotal();

            UpdatePanel_Scorch.Update();
            UpdatePanel_Cake.Update();
            UpdatePanel_Blast.Update();
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
                string EMseg = DateTime.Now.ToString() + "          ProcessEquip1:ASPxButton_Confirm_Click  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        //更新数据
        private void UpdateDataSetNengHao()
        {
            try
            {
                string str;
                str = "delete from tb_gongyizhuangbei where 项目编号 ='" + ViewState["UserName"].ToString() + "' and (工艺编号 = 1 or 工艺编号 = 3 or 工艺编号 = 4 )";
                conn.ExeSql(str);
                //处理46行*4列的显示
                for (int i = 0; i < 46; i++)
                {
                    if (i < 13)
                    {
                        if (i == 1 || i == 12)
                        {
                            str = "insert into tb_gongyizhuangbei values('" + ViewState["UserName"].ToString() + "',3," + (i + 1);
                            str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 1).ToString())).Text + "'";
                            str = str + ",1";
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 3).ToString())).Text);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 4).ToString())).Text) + ")";
                        }
                        else
                        {
                            str = "insert into tb_gongyizhuangbei values('" + ViewState["UserName"].ToString() + "',3," + (i + 1);
                            str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 1).ToString())).Text + "'";
                            str = str + ",1";
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 3).ToString())).Text);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 5 + 4).ToString())).Text) + ")";
                        }
                        conn.ExeSql(str);
                    }
                    if (i >= 13 && i < 31)
                    {
                        if (i == 13 || i == 14)
                        {
                            str = "insert into tb_gongyizhuangbei values('" + ViewState["UserName"].ToString() + "',1," + (i - 12);
                            str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 1).ToString())).Text + "'";
                            str = str + ",1";
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 3).ToString())).Text);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 4).ToString())).Text) + ")";
                        }
                        else
                        {
                            str = "insert into tb_gongyizhuangbei values('" + ViewState["UserName"].ToString() + "',1," + (i - 12);
                            str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 1).ToString())).Text + "'";
                            str = str + ",1";
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 3).ToString())).Text);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 5 + 4).ToString())).Text) + ")";
                        }
                        conn.ExeSql(str);
                    }
                    if (i >= 31 && i < 46)
                    {
                        if (i == 31 || i == 32 || i == 39 || i == 42 || i == 44)
                        {
                            str = "insert into tb_gongyizhuangbei values('" + ViewState["UserName"].ToString() + "',4," + (i - 30);
                            str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text + "'";
                            str = str + ",1";
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 4).ToString())).Text) + ")";
                        }
                        else
                        {
                            str = "insert into tb_gongyizhuangbei values('" + ViewState["UserName"].ToString() + "',4," + (i - 30);
                            str = str + ",'" + ((DevExpress.Web.ASPxEditors.ASPxComboBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 1).ToString())).Text + "'";
                            str = str + ",1";
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 3).ToString())).Text);
                            str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 5 + 4).ToString())).Text) + ")";
                        }
                        conn.ExeSql(str);
                    }
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          ProcessEquip1:UpdateDataSetOne  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
    }
}