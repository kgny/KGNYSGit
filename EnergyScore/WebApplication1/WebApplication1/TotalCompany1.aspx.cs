using System;
using System.Web.UI;
using Basic;
namespace QCA
{
    public partial class TotalCompany1 : System.Web.UI.Page
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
                    UpdateTotal1();
                    UpdateTotal2();
                    UpdateTotal3();
                    UpdateTotal4();
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        TotalCompany1:Page_Load          " + ex.Source.ToString() + "         " + ex.Message;
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
                str = "select * from tb_quanchangone where 项目编号 = '" + ViewState["UserName"].ToString() + "' order by 评分条目编号";
                conn.GetTable(str);
                //处理30行*4列的显示
                Control myControl;
                for (int i = 0; i < conn.dt.Rows.Count; i++)
                {
                    if (i < 8)
                    {
                        for (int j = 0; j < 4; j++)
                        {
                            myControl = ASPxRoundPanel2.FindControl("con" + (i * 4 + j).ToString());
                            if (myControl != null)
                            {
                                ((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text = conn.dt.Rows[i][j + 2].ToString();
                            }
                        }
                    }

                    if (i >= 8 && i < 11)
                    {
                        for (int j = 0; j < 4; j++)
                        {
                            myControl = ASPxRoundPanel3.FindControl("con" + (i * 4 + j).ToString());
                            if (myControl != null)
                            {
                                ((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text = conn.dt.Rows[i][j + 2].ToString();
                            }
                        }
                    }

                    if (i >= 11 && i < 22)
                    {
                        for (int j = 0; j < 4; j++)
                        {
                            myControl = ASPxRoundPanel4.FindControl("con" + (i * 4 + j).ToString());
                            if (myControl != null)
                            {
                                ((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text = conn.dt.Rows[i][j + 2].ToString();
                            }
                        }
                    }
                    if (i >= 22 && i < 26)
                    {
                        for (int j = 0; j < 4; j++)
                        {
                            myControl = ASPxRoundPanel5.FindControl("con" + (i * 4 + j).ToString());
                            if (myControl != null)
                            {
                                ((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text = conn.dt.Rows[i][j + 2].ToString();
                            }
                        }
                    }
                    if (i >= 26 && i < 30)
                    {
                        for (int j = 0; j < 4; j++)
                        {
                            myControl = ASPxRoundPanel6.FindControl("con" + (i * 4 + j).ToString());
                            if (myControl != null)
                            {
                                ((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text = conn.dt.Rows[i][j + 2].ToString();
                            }
                        }
                    }
                    if (i >= 30)
                        break;
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        TotalCompany1:UpdateFormView()         " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        //更新连铸合计
        private void UpdateTotal1()
        {
            try
            {
                ASPxTextBox26.Text = (Convert.ToDouble(con34.Text) + Convert.ToDouble(con38.Text) + Convert.ToDouble(con42.Text)).ToString("0.0000");
                ASPxTextBox27.Text = (Convert.ToDouble(con35.Text) + Convert.ToDouble(con39.Text) + Convert.ToDouble(con43.Text)).ToString("0.0000");
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        TotalCompany1:UpdateTotal1()        " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        //更新热轧合计
        private void UpdateTotal2()
        {
            try
            {
                ASPxTextBox34.Text = (Convert.ToDouble(con46.Text) + Convert.ToDouble(con50.Text) + Convert.ToDouble(con54.Text) + Convert.ToDouble(con58.Text) + Convert.ToDouble(con62.Text) + Convert.ToDouble(con66.Text) + Convert.ToDouble(con70.Text) + Convert.ToDouble(con74.Text) + Convert.ToDouble(con78.Text) + Convert.ToDouble(con82.Text) + Convert.ToDouble(con86.Text)).ToString("0.0000");
                ASPxTextBox35.Text = (Convert.ToDouble(con47.Text) + Convert.ToDouble(con51.Text) + Convert.ToDouble(con55.Text) + Convert.ToDouble(con59.Text) + Convert.ToDouble(con63.Text) + Convert.ToDouble(con67.Text) + Convert.ToDouble(con71.Text) + Convert.ToDouble(con75.Text) + Convert.ToDouble(con79.Text) + Convert.ToDouble(con83.Text) + Convert.ToDouble(con87.Text)).ToString("0.0000");
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        TotalCompany1:UpdateTotal2()        " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        //更新冷轧合计
        private void UpdateTotal3()
        {
            try
            {
                ASPxTextBox39.Text = (Convert.ToDouble(con90.Text) + Convert.ToDouble(con94.Text) + Convert.ToDouble(con98.Text) + Convert.ToDouble(con102.Text)).ToString("0.0000");
                ASPxTextBox40.Text = (Convert.ToDouble(con91.Text) + Convert.ToDouble(con95.Text) + Convert.ToDouble(con99.Text) + Convert.ToDouble(con103.Text)).ToString("0.0000");
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        TotalCompany1:UpdateTotal3()        " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        //更新镀层合计
        private void UpdateTotal4()
        {
            try
            {
                ASPxTextBox59.Text = (Convert.ToDouble(con106.Text) + Convert.ToDouble(con110.Text) + Convert.ToDouble(con114.Text) + Convert.ToDouble(con118.Text)).ToString("0.0000");
                ASPxTextBox60.Text = (Convert.ToDouble(con107.Text) + Convert.ToDouble(con111.Text) + Convert.ToDouble(con115.Text) + Convert.ToDouble(con119.Text)).ToString("0.0000");
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        TotalCompany1:UpdateTotal4()        " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "        TotalCompany1:Page_UnLoad          " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        //protected void con0_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con2.Text = (Convert.ToDouble(con0.Text) * Convert.ToDouble(con1.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con0_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con1_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con2.Text = (Convert.ToDouble(con0.Text) * Convert.ToDouble(con1.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con1_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con4_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con6.Text = (Convert.ToDouble(con4.Text) * Convert.ToDouble(con5.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con4_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con5_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con6.Text = (Convert.ToDouble(con4.Text) * Convert.ToDouble(con5.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con5_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con8_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con10.Text = (Convert.ToDouble(con8.Text) * Convert.ToDouble(con9.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con8_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con9_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con10.Text = (Convert.ToDouble(con8.Text) * Convert.ToDouble(con9.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con9_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con12_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con14.Text = (Convert.ToDouble(con12.Text) * Convert.ToDouble(con13.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con12_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con13_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con14.Text = (Convert.ToDouble(con12.Text) * Convert.ToDouble(con13.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con13_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con16_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con18.Text = (Convert.ToDouble(con16.Text) * Convert.ToDouble(con17.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con16_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con17_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con18.Text = (Convert.ToDouble(con16.Text) * Convert.ToDouble(con17.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con17_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con20_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con22.Text = (Convert.ToDouble(con20.Text) * Convert.ToDouble(con21.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con20_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con21_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con22.Text = (Convert.ToDouble(con20.Text) * Convert.ToDouble(con21.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con21_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con24_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con26.Text = (Convert.ToDouble(con24.Text) * Convert.ToDouble(con25.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con24_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con25_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con26.Text = (Convert.ToDouble(con24.Text) * Convert.ToDouble(con25.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con25_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con28_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con30.Text = (Convert.ToDouble(con28.Text) * Convert.ToDouble(con29.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con28_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con29_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con30.Text = (Convert.ToDouble(con28.Text) * Convert.ToDouble(con29.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con29_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con32_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con34.Text = (Convert.ToDouble(con32.Text) * Convert.ToDouble(con33.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con32_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con33_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con34.Text = (Convert.ToDouble(con32.Text) * Convert.ToDouble(con33.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con33_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con36_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con38.Text = (Convert.ToDouble(con36.Text) * Convert.ToDouble(con37.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con36_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con37_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con38.Text = (Convert.ToDouble(con36.Text) * Convert.ToDouble(con37.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con37_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con40_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con42.Text = (Convert.ToDouble(con40.Text) * Convert.ToDouble(con41.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con40_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con41_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con42.Text = (Convert.ToDouble(con40.Text) * Convert.ToDouble(con41.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con41_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con44_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con46.Text = (Convert.ToDouble(con44.Text) * Convert.ToDouble(con45.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con44_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con45_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con46.Text = (Convert.ToDouble(con44.Text) * Convert.ToDouble(con45.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con45_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con48_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con50.Text = (Convert.ToDouble(con48.Text) * Convert.ToDouble(con49.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con48_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con49_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con50.Text = (Convert.ToDouble(con48.Text) * Convert.ToDouble(con49.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con49_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con52_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con54.Text = (Convert.ToDouble(con52.Text) * Convert.ToDouble(con53.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con52_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con53_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con54.Text = (Convert.ToDouble(con52.Text) * Convert.ToDouble(con53.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con53_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con56_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con58.Text = (Convert.ToDouble(con56.Text) * Convert.ToDouble(con57.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con56_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con57_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con58.Text = (Convert.ToDouble(con56.Text) * Convert.ToDouble(con57.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con57_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con60_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con62.Text = (Convert.ToDouble(con60.Text) * Convert.ToDouble(con61.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con60_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con61_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con62.Text = (Convert.ToDouble(con60.Text) * Convert.ToDouble(con61.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con62_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con64_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con66.Text = (Convert.ToDouble(con64.Text) * Convert.ToDouble(con65.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con64_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con65_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con66.Text = (Convert.ToDouble(con64.Text) * Convert.ToDouble(con65.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con65_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con68_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con70.Text = (Convert.ToDouble(con68.Text) * Convert.ToDouble(con69.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con68_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con69_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con70.Text = (Convert.ToDouble(con68.Text) * Convert.ToDouble(con69.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con69_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con72_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con74.Text = (Convert.ToDouble(con72.Text) * Convert.ToDouble(con73.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con72_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con73_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con74.Text = (Convert.ToDouble(con72.Text) * Convert.ToDouble(con73.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con73_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con76_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con78.Text = (Convert.ToDouble(con76.Text) * Convert.ToDouble(con77.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con76_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con77_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con78.Text = (Convert.ToDouble(con76.Text) * Convert.ToDouble(con77.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con77_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con80_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con82.Text = (Convert.ToDouble(con80.Text) * Convert.ToDouble(con81.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con80_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con81_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con82.Text = (Convert.ToDouble(con80.Text) * Convert.ToDouble(con81.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con81_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con84_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con86.Text = (Convert.ToDouble(con84.Text) * Convert.ToDouble(con85.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con84_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con85_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con86.Text = (Convert.ToDouble(con84.Text) * Convert.ToDouble(con85.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con85_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con88_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con90.Text = (Convert.ToDouble(con88.Text) * Convert.ToDouble(con89.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con88_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con89_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con90.Text = (Convert.ToDouble(con88.Text) * Convert.ToDouble(con89.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con89_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con92_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con94.Text = (Convert.ToDouble(con92.Text) * Convert.ToDouble(con93.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con92_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con93_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con94.Text = (Convert.ToDouble(con92.Text) * Convert.ToDouble(con93.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con93_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con96_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con98.Text = (Convert.ToDouble(con96.Text) * Convert.ToDouble(con97.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con96_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con97_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con98.Text = (Convert.ToDouble(con96.Text) * Convert.ToDouble(con97.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con97_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con100_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con102.Text = (Convert.ToDouble(con100.Text) * Convert.ToDouble(con101.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con100_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con101_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con102.Text = (Convert.ToDouble(con100.Text) * Convert.ToDouble(con101.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con101_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con104_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con106.Text = (Convert.ToDouble(con104.Text) * Convert.ToDouble(con105.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con104_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con105_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con106.Text = (Convert.ToDouble(con104.Text) * Convert.ToDouble(con105.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con105_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con108_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con110.Text = (Convert.ToDouble(con108.Text) * Convert.ToDouble(con109.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con108_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con109_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con110.Text = (Convert.ToDouble(con108.Text) * Convert.ToDouble(con109.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con109_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con112_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con114.Text = (Convert.ToDouble(con112.Text) * Convert.ToDouble(con113.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con112_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con113_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con114.Text = (Convert.ToDouble(con112.Text) * Convert.ToDouble(con113.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con113_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con116_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con118.Text = (Convert.ToDouble(con116.Text) * Convert.ToDouble(con117.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con116_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        //protected void con117_TextChanged(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        con118.Text = (Convert.ToDouble(con116.Text) * Convert.ToDouble(con117.Text)).ToString("0.0000");
        //    }
        //    catch (Exception ex)
        //    {
        //        string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con117_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
        //        FileBlog.WriteFile(EMseg);
        //    }
        //}

        protected void ASPxButton_Update_Click(object sender, EventArgs e)
        {
            try
            {
                UpdatePercent();
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "           TotalCompany1:con117_TextChanged " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        //更新界面工艺能耗及能耗百分比
        private void UpdatePercent()
        {
            double sum = 0;
            Control myControl;
            for (int i = 0; i < 30; i++)
            {
                if (i < 8)
                {
                    myControl = ASPxRoundPanel2.FindControl("con" + (i * 4 + 2).ToString());
                    if (myControl != null)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 4).ToString())).Text) * Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 4 + 1).ToString())).Text)).ToString("0.0000");
                        sum += Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text);
                    }
                }
                if (i >= 8 && i < 11)
                {
                    myControl = ASPxRoundPanel3.FindControl("con" + (i * 4 + 2).ToString());
                    if (myControl != null)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 4).ToString())).Text) * Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 4 + 1).ToString())).Text)).ToString("0.0000");
                        sum += Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text);
                    }
                }
                if (i >= 11 && i < 22)
                {
                    myControl = ASPxRoundPanel4.FindControl("con" + (i * 4 + 2).ToString());
                    if (myControl != null)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 4).ToString())).Text) * Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 4 + 1).ToString())).Text)).ToString("0.0000");
                        sum += Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text);
                    }
                }
                if (i >= 22 && i < 26)
                {
                    myControl = ASPxRoundPanel5.FindControl("con" + (i * 4 + 2).ToString());
                    if (myControl != null)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 4).ToString())).Text) * Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 4 + 1).ToString())).Text)).ToString("0.0000");
                        sum += Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text);
                    }
                }
                if (i >= 26 && i < 30)
                {
                    myControl = ASPxRoundPanel6.FindControl("con" + (i * 4 + 2).ToString());
                    if (myControl != null)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 4).ToString())).Text) * Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 4 + 1).ToString())).Text)).ToString("0.0000");
                        sum += Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text);
                    }
                }
            }
            if (sum == 0)
                return;
            for (int i = 0; i < 30; i++)
            {
                if (i < 8)
                {
                    myControl = ASPxRoundPanel2.FindControl("con" + (i * 4 + 3).ToString());
                    if (myControl != null)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 4 + 2).ToString())).Text) / sum*100).ToString("0.0000");
                    }
                }
                if (i >= 8 && i < 11)
                {
                    myControl = ASPxRoundPanel3.FindControl("con" + (i * 4 + 3).ToString());
                    if (myControl != null)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 4 + 2).ToString())).Text) / sum * 100).ToString("0.0000");
                    }
                }
                if (i >= 11 && i < 22)
                {
                    myControl = ASPxRoundPanel4.FindControl("con" + (i * 4 + 3).ToString());
                    if (myControl != null)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 4 + 2).ToString())).Text) / sum * 100).ToString("0.0000");
                    }
                }
                if (i >= 22 && i < 26)
                {
                    myControl = ASPxRoundPanel5.FindControl("con" + (i * 4 + 3).ToString());
                    if (myControl != null)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 4 + 2).ToString())).Text) / sum * 100).ToString("0.0000");
                    }
                }
                if (i >= 26 && i < 30)
                {
                    myControl = ASPxRoundPanel6.FindControl("con" + (i * 4 + 3).ToString());
                    if (myControl != null)
                    {
                        ((DevExpress.Web.ASPxEditors.ASPxTextBox)myControl).Text = (Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 4 + 2).ToString())).Text) / sum * 100).ToString("0.0000");
                    }
                }
            }
            UpdateTotal1();
            UpdateTotal2();
            UpdateTotal3();
            UpdateTotal4();

            UpdatePanel_Others.Update();
            UpdatePanel_Cast.Update();
            UpdatePanel_Hot.Update();
            UpdatePanel_Cold.Update();
            UpdatePanel_Coat.Update();
        }

        protected void ASPxButton_Confirm_Click(object sender, EventArgs e)
        {
            try
            {
                UpdatePercent();
                UpdateDataSetOne();
                UpdateDataSetPercentage();
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          TotalCompany1:ASPxButton_Confirm_Click  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        //更新全厂一数据
        private void UpdateDataSetOne()
        {
            try
            {
                string str;
                str = "delete from tb_quanchangone where 项目编号 ='" + ViewState["UserName"].ToString() + "'";
                conn.ExeSql(str);
                //处理30行*4列的显示
                for (int i = 0; i < 30; i++)
                {
                    if (i < 8)
                    {
                        str = "insert into tb_quanchangone values('" + ViewState["UserName"].ToString() + "'," + (i + 1) + ","+Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 4).ToString())).Text);
                        str = str+ "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 4+1).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 4 + 2).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel2.FindControl("con" + (i * 4 + 3).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }

                    if (i >= 8 && i < 11)
                    {
                        str = "insert into tb_quanchangone values('" + ViewState["UserName"].ToString() + "'," + (i + 1) + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 4).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 4 + 1).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 4 + 2).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel3.FindControl("con" + (i * 4 + 3).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }

                    if (i >= 11 && i < 22)
                    {
                        str = "insert into tb_quanchangone values('" + ViewState["UserName"].ToString() + "'," + (i + 1) + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 4).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 4 + 1).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 4 + 2).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel4.FindControl("con" + (i * 4 + 3).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                    if (i >= 22 && i < 26)
                    {
                        str = "insert into tb_quanchangone values('" + ViewState["UserName"].ToString() + "'," + (i + 1) + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 4).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 4 + 1).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 4 + 2).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel5.FindControl("con" + (i * 4 + 3).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                    if (i >= 26 && i < 30)
                    {
                        str = "insert into tb_quanchangone values('" + ViewState["UserName"].ToString() + "'," + (i + 1) + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 4).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 4 + 1).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 4 + 2).ToString())).Text);
                        str = str + "," + Convert.ToDouble(((DevExpress.Web.ASPxEditors.ASPxTextBox)ASPxRoundPanel6.FindControl("con" + (i * 4 + 3).ToString())).Text) + ")";
                        conn.ExeSql(str);
                    }
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          TotalCompany1:UpdateDataSetOne  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        //更新工艺装备能耗百分比和能源能耗百分比
        private void UpdateDataSetPercentage()
        {
            try
            {
                if (ViewState["UserName"] == null)
                    return;
                string str;
                //工艺装备百分比（焦化、烧结、高炉、转炉、电炉、精炼、连铸、轧钢）
                double sum1 = 0;
                sum1 = Convert.ToDouble(con10.Text) + Convert.ToDouble(con2.Text) + Convert.ToDouble(con14.Text) + Convert.ToDouble(con22.Text) + Convert.ToDouble(con26.Text) + Convert.ToDouble(con30.Text) + Convert.ToDouble(ASPxTextBox26.Text) + Convert.ToDouble(ASPxTextBox34.Text) + Convert.ToDouble(ASPxTextBox39.Text);
                if (sum1 == 0)
                    return;
                str = "delete from tb_nenghaopercentage where 项目编号 ='" + ViewState["UserName"].ToString() + "'";
                conn.ExeSql(str);
                str = "insert into tb_nenghaopercentage values('" + ViewState["UserName"].ToString() + "',1," + Convert.ToDouble(con3.Text) + "," + Double.Parse((Convert.ToDouble(con2.Text) / sum1 * 100).ToString("0.0000")) + ")";
                conn.ExeSql(str);
                str = "insert into tb_nenghaopercentage values('" + ViewState["UserName"].ToString() + "',2," + Convert.ToDouble(con7.Text) + ",0)";
                conn.ExeSql(str);
                str = "insert into tb_nenghaopercentage values('" + ViewState["UserName"].ToString() + "',3," + Convert.ToDouble(con11.Text) + "," + Double.Parse((Convert.ToDouble(con10.Text) / sum1 * 100).ToString("0.0000")) + ")";
                conn.ExeSql(str);
                str = "insert into tb_nenghaopercentage values('" + ViewState["UserName"].ToString() + "',4," + Convert.ToDouble(con15.Text) + "," + Double.Parse((Convert.ToDouble(con14.Text) / sum1 * 100).ToString("0.0000")) + ")";
                conn.ExeSql(str);
                str = "insert into tb_nenghaopercentage values('" + ViewState["UserName"].ToString() + "',5," + Convert.ToDouble(con19.Text) + ",0)";
                conn.ExeSql(str);
                str = "insert into tb_nenghaopercentage values('" + ViewState["UserName"].ToString() + "',6," + Convert.ToDouble(con23.Text) + "," + Double.Parse((Convert.ToDouble(con22.Text) / sum1 * 100).ToString("0.0000")) + ")";
                conn.ExeSql(str);
                str = "insert into tb_nenghaopercentage values('" + ViewState["UserName"].ToString() + "',7," + Convert.ToDouble(con27.Text) + "," + Double.Parse((Convert.ToDouble(con26.Text) / sum1 * 100).ToString("0.0000")) + ")";
                conn.ExeSql(str);
                str = "insert into tb_nenghaopercentage values('" + ViewState["UserName"].ToString() + "',8," + Convert.ToDouble(con31.Text) + "," + Double.Parse((Convert.ToDouble(con30.Text) / sum1 * 100).ToString("0.0000")) + ")";
                conn.ExeSql(str);
                str = "insert into tb_nenghaopercentage values('" + ViewState["UserName"].ToString() + "',9," + Convert.ToDouble(ASPxTextBox27.Text) + "," + Double.Parse((Convert.ToDouble(ASPxTextBox26.Text) / sum1 * 100).ToString("0.0000")) + ")";
                conn.ExeSql(str);
                str = "insert into tb_nenghaopercentage values('" + ViewState["UserName"].ToString() + "',10," + Convert.ToDouble(ASPxTextBox35.Text) + ",0)";
                conn.ExeSql(str);
                str = "insert into tb_nenghaopercentage values('" + ViewState["UserName"].ToString() + "',11," + Convert.ToDouble(ASPxTextBox40.Text) + ",0)";
                conn.ExeSql(str);
                str = "insert into tb_nenghaopercentage values('" + ViewState["UserName"].ToString() + "',12," + Convert.ToDouble(ASPxTextBox60.Text) + ",0)";
                conn.ExeSql(str);
                str = "insert into tb_nenghaopercentage values('" + ViewState["UserName"].ToString() + "',13,0," + Double.Parse(((Convert.ToDouble(ASPxTextBox34.Text) + Convert.ToDouble(ASPxTextBox39.Text)) / sum1 * 100).ToString("0.0000")) + ")";
                conn.ExeSql(str);
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          TotalCompany1:UpdateDataSetPercentage  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
    }
}