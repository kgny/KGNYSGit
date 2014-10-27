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
    public partial class GasMod : System.Web.UI.Page
    {
        //config conn;
        modelCalculate mymode;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //conn = new config();
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
                    ////////////初始化datagrid/////////////////
                    DataTable tb = new DataTable();
                    tb.Columns.Add("编号");
                    tb.Columns.Add("用户名");
                    tb.Columns.Add("最小热值");
                    tb.Columns.Add("最大热值");
                    tb.Columns.Add("最小压力煤气量");
                    tb.Columns.Add("最大压力煤气量");
                    tb.Columns.Add("最小高炉煤气量");
                    tb.Columns.Add("最大高炉煤气量");
                    tb.Columns.Add("最小焦炉煤气量");
                    tb.Columns.Add("最大焦炉煤气量");
                    tb.Columns.Add("最小转炉煤气量");
                    tb.Columns.Add("最大转炉煤气量");
                    tb.Columns.Add("高气的经济系数");
                    tb.Columns.Add("焦气的经济系数");
                    tb.Columns.Add("转气的经济系数");
                    DataRow newRow;

                    newRow = tb.NewRow();
                    newRow[0] = "1";
                    newRow[1] = "热风炉";
                    newRow[2] = "0";
                    newRow[3] = "1.0E+25";
                    newRow[4] = "0";
                    newRow[5] = "1.0E+25";
                    newRow[6] = "100000";
                    newRow[7] = "250000";
                    newRow[8] = "0";
                    newRow[9] = "0";
                    newRow[10] = "0";
                    newRow[11] = "0";
                    newRow[12] = "105";
                    newRow[13] = "125";
                    newRow[14] = "110";
                    tb.Rows.Add(newRow);

                    newRow = tb.NewRow();
                    newRow[0] = "2";
                    newRow[1] = "烧结";
                    newRow[2] = "0";
                    newRow[3] = "1.0E+25";
                    newRow[4] = "0";
                    newRow[5] = "1.0E+25";
                    newRow[6] = "0";
                    newRow[7] = "0";
                    newRow[8] = "1000";
                    newRow[9] = "3200";
                    newRow[10] = "0";
                    newRow[11] = "0";
                    newRow[12] = "100";
                    newRow[13] = "121";
                    newRow[14] = "108";
                    tb.Rows.Add(newRow);

                    newRow = tb.NewRow();
                    newRow[0] = "3";
                    newRow[1] = "炼钢";
                    newRow[2] = "0";
                    newRow[3] = "1.0E+25";
                    newRow[4] = "0";
                    newRow[5] = "1.0E+25";
                    newRow[6] = "10000";
                    newRow[7] = "40000";
                    newRow[8] = "200";
                    newRow[9] = "600";
                    newRow[10] = "0";
                    newRow[11] = "0";
                    newRow[12] = "110";
                    newRow[13] = "130";
                    newRow[14] = "120";
                    tb.Rows.Add(newRow);

                    newRow = tb.NewRow();
                    newRow[0] = "4";
                    newRow[1] = "焦炉";
                    newRow[2] = "0";
                    newRow[3] = "1.0E+25";
                    newRow[4] = "0";
                    newRow[5] = "1.0E+25";
                    newRow[6] = "50000";
                    newRow[7] = "100000";
                    newRow[8] = "10000";
                    newRow[9] = "20000";
                    newRow[10] = "0";
                    newRow[11] = "0";
                    newRow[12] = "102";
                    newRow[13] = "115";
                    newRow[14] = "105";
                    tb.Rows.Add(newRow);

                    newRow = tb.NewRow();
                    newRow[0] = "5";
                    newRow[1] = "加热炉";
                    newRow[2] = "8000";
                    newRow[3] = "10000";
                    newRow[4] = "95000";
                    newRow[5] = "100000";
                    newRow[6] = "0";
                    newRow[7] = "1.0E+25";
                    newRow[8] = "0";
                    newRow[9] = "1.0E+25";
                    newRow[10] = "0";
                    newRow[11] = "0";
                    newRow[12] = "105";
                    newRow[13] = "125";
                    newRow[14] = "110";
                    tb.Rows.Add(newRow);

                    newRow = tb.NewRow();
                    newRow[0] = "6";
                    newRow[1] = "石灰窑";
                    newRow[2] = "0";
                    newRow[3] = "1.0E+25";
                    newRow[4] = "0";
                    newRow[5] = "1.0E+25";
                    newRow[6] = "0";
                    newRow[7] = "0";
                    newRow[8] = "0";
                    newRow[9] = "0";
                    newRow[10] = "8000";
                    newRow[11] = "12000";
                    newRow[12] = "55";
                    newRow[13] = "65";
                    newRow[14] = "40";
                    tb.Rows.Add(newRow);

                    newRow = tb.NewRow();
                    newRow[0] = "7";
                    newRow[1] = "热电厂";
                    newRow[2] = "0";
                    newRow[3] = "1.0E+25";
                    newRow[4] = "0";
                    newRow[5] = "1.0E+25";
                    newRow[6] = "0";
                    newRow[7] = "100000";
                    newRow[8] = "0";
                    newRow[9] = "12000";
                    newRow[10] = "0";
                    newRow[11] = "10000";
                    newRow[12] = "55";
                    newRow[13] = "65";
                    newRow[14] = "40";
                    tb.Rows.Add(newRow);

                    dataGridView1.AutoGenerateColumns = true; //设置自动添加列
                    dataGridView1.DataSource = tb.DefaultView;
                    dataGridView1.DataBind();
                    dataGridView1.AutoGenerateColumns = false; //取消自动添加列

                    ViewState["tb"] = tb;
                }
               
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        GasMod:Page_Load          " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        } 
        private void UpdateFormView()//模型计算
        {
            try
            {
                if (ViewState["UserName"] == null)
                    return;

                mymode = new modelCalculate();
                mymode.SNTModel();
                ModPara_DLL.n0 = int.Parse(txtmN0.Text);

                // 获取界面输入的工艺参数类TechPara_DLL的参数
                //煤气柜的
                mymode.mCommInfo.mTechPara_DLL.mVGmin = double.Parse(txtmVGmin.Text);
                mymode.mCommInfo.mTechPara_DLL.mVGlow = double.Parse(txtmVGlow.Text);
                mymode.mCommInfo.mTechPara_DLL.mVGbest = double.Parse(txtmVGbest.Text);
                mymode.mCommInfo.mTechPara_DLL.mVGhigh = double.Parse(txtmVGhigh.Text);
                mymode.mCommInfo.mTechPara_DLL.mVGmax = double.Parse(txtmVGmax.Text);
                mymode.mCommInfo.mTechPara_DLL.mVJmin = double.Parse(txtmVJmin.Text);
                mymode.mCommInfo.mTechPara_DLL.mVJlow = double.Parse(txtmVJlow.Text);
                mymode.mCommInfo.mTechPara_DLL.mVJbest = double.Parse(txtmVJbest.Text);
                mymode.mCommInfo.mTechPara_DLL.mVJhigh = double.Parse(txtmVJhigh.Text);
                mymode.mCommInfo.mTechPara_DLL.mVJmax = double.Parse(txtmVJmax.Text);
                mymode.mCommInfo.mTechPara_DLL.mVZmin = double.Parse(txtmVZmin.Text);
                mymode.mCommInfo.mTechPara_DLL.mVZlow = double.Parse(txtmVZlow.Text);
                mymode.mCommInfo.mTechPara_DLL.mVZbest = double.Parse(txtmVZbest.Text);
                mymode.mCommInfo.mTechPara_DLL.mVZhigh = double.Parse(txtmVZhigh.Text);
                mymode.mCommInfo.mTechPara_DLL.mVZmax = double.Parse(txtmVZmax.Text);
                //管损的
                mymode.mCommInfo.mTechPara_DLL.mLossG = double.Parse(txtmLossG.Text) * 0.01;
                mymode.mCommInfo.mTechPara_DLL.mLossJ = double.Parse(txtmLossJ.Text) * 0.01;
                mymode.mCommInfo.mTechPara_DLL.mLossZ = double.Parse(txtmLossZ.Text) * 0.01;
                //放散塔的
                mymode.mCommInfo.mTechPara_DLL.mGFmax = double.Parse(txtmGFmax.Text);
                mymode.mCommInfo.mTechPara_DLL.mJFmax = double.Parse(txtmJFmax.Text);
                mymode.mCommInfo.mTechPara_DLL.mZFmax = double.Parse(txtmZFmax.Text);

                // 获取界面输入的输入参数类TC_in_DLL的参数
                //当前的煤气平均热值量
                mymode.mCommInfo.mTC_in_DLL.mR_G = double.Parse(txtmR_G.Text);
                mymode.mCommInfo.mTC_in_DLL.mR_J = double.Parse(txtmR_J.Text);
                mymode.mCommInfo.mTC_in_DLL.mR_Z = double.Parse(txtmR_Z.Text);
                //煤气的发生量
                mymode.mCommInfo.mTC_in_DLL.mY_G = double.Parse(txtmY_G.Text);
                mymode.mCommInfo.mTC_in_DLL.mY_J = double.Parse(txtmY_J.Text);
                mymode.mCommInfo.mTC_in_DLL.mY_Z = double.Parse(txtmY_Z.Text);
                //当前的煤气柜柜位
                mymode.mCommInfo.mTC_in_DLL.mVnow_G = double.Parse(txtmVnow_G.Text);
                mymode.mCommInfo.mTC_in_DLL.mVnow_J = double.Parse(txtmVnow_J.Text);
                mymode.mCommInfo.mTC_in_DLL.mVnow_Z = double.Parse(txtmVnow_Z.Text);

                //根据输入的用户数，初始化用户相关的参数的动态数组
                mymode.mCommInfo.mModPara_DLL.mRmin = new double[ModPara_DLL.n0];
                mymode.mCommInfo.mModPara_DLL.mRmax = new double[ModPara_DLL.n0];
                mymode.mCommInfo.mModPara_DLL.mQmin = new double[ModPara_DLL.n0];
                mymode.mCommInfo.mModPara_DLL.mQmax = new double[ModPara_DLL.n0];
                mymode.mCommInfo.mModPara_DLL.mXmin_G = new double[ModPara_DLL.n0];
                mymode.mCommInfo.mModPara_DLL.mXmax_G = new double[ModPara_DLL.n0];
                mymode.mCommInfo.mModPara_DLL.mXmin_J = new double[ModPara_DLL.n0];
                mymode.mCommInfo.mModPara_DLL.mXmax_J = new double[ModPara_DLL.n0];
                mymode.mCommInfo.mModPara_DLL.mXmin_Z = new double[ModPara_DLL.n0];
                mymode.mCommInfo.mModPara_DLL.mXmax_Z = new double[ModPara_DLL.n0];
                mymode.mCommInfo.mModPara_DLL.mW_G = new double[ModPara_DLL.n0];
                mymode.mCommInfo.mModPara_DLL.mW_J = new double[ModPara_DLL.n0];
                mymode.mCommInfo.mModPara_DLL.mW_Z = new double[ModPara_DLL.n0];

                mymode.mCommInfo.mTC_out_DLL.mx_G = new double[ModPara_DLL.n0];
                mymode.mCommInfo.mTC_out_DLL.mx_J = new double[ModPara_DLL.n0];
                mymode.mCommInfo.mTC_out_DLL.mx_Z = new double[ModPara_DLL.n0];

                //用户相关的参数赋值  
                DataTable tb1;
                if (ViewState["tb"] != null)
                {
                    tb1 = (DataTable)ViewState["tb"];
                }
                else
                    return;


                //     for (int i = 0; i < dataGridView1.Rows.Count - 1; i++)
                for (int i = 0; i < ModPara_DLL.n0; i++)
                {
                    mymode.mCommInfo.mModPara_DLL.mRmin[i] = double.Parse(tb1.Rows[i][2].ToString());
                    mymode.mCommInfo.mModPara_DLL.mRmax[i] = double.Parse(tb1.Rows[i][3].ToString());
                    mymode.mCommInfo.mModPara_DLL.mQmin[i] = double.Parse(tb1.Rows[i][4].ToString());
                    mymode.mCommInfo.mModPara_DLL.mQmax[i] = double.Parse(tb1.Rows[i][5].ToString());
                    mymode.mCommInfo.mModPara_DLL.mXmin_G[i] = double.Parse(tb1.Rows[i][6].ToString());
                    mymode.mCommInfo.mModPara_DLL.mXmax_G[i] = double.Parse(tb1.Rows[i][7].ToString());
                    mymode.mCommInfo.mModPara_DLL.mXmin_J[i] = double.Parse(tb1.Rows[i][8].ToString());
                    mymode.mCommInfo.mModPara_DLL.mXmax_J[i] = double.Parse(tb1.Rows[i][9].ToString());
                    mymode.mCommInfo.mModPara_DLL.mXmin_Z[i] = double.Parse(tb1.Rows[i][10].ToString());
                    mymode.mCommInfo.mModPara_DLL.mXmax_Z[i] = double.Parse(tb1.Rows[i][11].ToString());
                    mymode.mCommInfo.mModPara_DLL.mW_G[i] = double.Parse(tb1.Rows[i][12].ToString());
                    mymode.mCommInfo.mModPara_DLL.mW_J[i] = double.Parse(tb1.Rows[i][13].ToString());
                    mymode.mCommInfo.mModPara_DLL.mW_Z[i] = double.Parse(tb1.Rows[i][14].ToString());
                }
                mymode.SNTModel();



                //用户相关的参数赋值
                DataTable tb = new DataTable();
                tb.Columns.Add("编号");
                tb.Columns.Add("用户名");
                tb.Columns.Add("高炉煤气调度值");
                tb.Columns.Add("焦炉煤气调度值");
                tb.Columns.Add("转炉煤气调度值");
                DataRow newRow;
                for (int i = 0; i < ModPara_DLL.n0; i++)
                {
                    newRow = tb.NewRow();
                    newRow[0] = tb1.Rows[i][0].ToString();
                    newRow[1] = tb1.Rows[i][1].ToString();
                    newRow[2] = Math.Round(mymode.mCommInfo.mTC_out_DLL.mx_G[i], 0);
                    newRow[3] = Math.Round(mymode.mCommInfo.mTC_out_DLL.mx_J[i], 0);
                    newRow[4] = Math.Round(mymode.mCommInfo.mTC_out_DLL.mx_Z[i], 0);
                    tb.Rows.Add(newRow);
                }
                newRow = tb.NewRow();
                newRow[0] = ModPara_DLL.n0 + 1;
                newRow[1] = "放散";
                newRow[2] = Math.Round(mymode.mCommInfo.mTC_out_DLL.mxF_G, 0);
                newRow[3] = Math.Round(mymode.mCommInfo.mTC_out_DLL.mxF_J, 0);
                newRow[4] = Math.Round(mymode.mCommInfo.mTC_out_DLL.mxF_Z, 0);
                tb.Rows.Add(newRow);

                if (mymode.mCommInfo.mTC_out_DLL.mFail_Flag == 0)
                    txtResult.Text = "唯一最优解";
                else if (mymode.mCommInfo.mTC_out_DLL.mFail_Flag == 1)
                    txtResult.Text = "无穷最优解";
                else if (mymode.mCommInfo.mTC_out_DLL.mFail_Flag == 2)
                    txtResult.Text = "无界解";
                else if (mymode.mCommInfo.mTC_out_DLL.mFail_Flag == 3)
                    txtResult.Text = "无可行解";
                else if (mymode.mCommInfo.mTC_out_DLL.mFail_Flag == 4)
                    txtResult.Text = "超出迭代范围";
                else
                    txtResult.Text = "计算有误";

                dataGridView2.AutoGenerateColumns = true; //设置自动添加列
                dataGridView2.DataSource = tb.DefaultView;
                dataGridView2.DataBind();
                dataGridView2.AutoGenerateColumns = false; //取消自动添加列
                tb.Dispose();

                UpdatePanel_Result.Update();
              
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        GasMod:UpdateFormView()         " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        protected void button1_Click(object sender, EventArgs e)
        {
            try
            {
                UpdateFormView();
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          GasMod:button1_Click  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
    }
}