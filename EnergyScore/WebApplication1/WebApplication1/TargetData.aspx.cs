using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Basic;
using System.IO;
using System.Data.OleDb;
using System.Text;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;
namespace QCA
{
    public partial class TargetData : System.Web.UI.Page
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
                    //////////////////////////////////////////
                    //初始化
                    /////////////////////////////
                    //初始化日期
                    ASPxDateEdit_Begin.Date = DateTime.Now.AddYears(-1);
                    ASPxDateEdit_End.Date = DateTime.Now;
                    //初始化指标名称
                    UpdateName();
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        TargetData:Page_Load          " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        private void UpdateName()//更新指标名称
        {
            try
            {
                ASPxComboBox_Name.Items.Clear();
                string str;
                str = "select distinct target_name from mb_cb_targetcodemaintain order by target_name";
                conn.GetTable(str);
                for (int i = 0; i < conn.dt.Rows.Count; i++)
                {
                    ASPxComboBox_Name.Items.Add(conn.dt.Rows[i]["target_name"].ToString());
                }
                if (ASPxComboBox_Name.Items.Count > 0)
                    ASPxComboBox_Name.Items[0].Selected = true;

            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          TargetData:UpdateName()       " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "        TargetData:Page_UnLoad          " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        protected void ASPxButton_PopSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (ViewState["str"] != null)
                {
                    string str;
                    str = ViewState["str"].ToString();
                    conn.GetTable(str);
                    if (conn.dt.Rows.Count > 0)
                    {
                        GetExcel(conn.dt, conn.dt.Rows[0]["指标名称"].ToString() + "_" + conn.dt.Rows[0]["指标类型"].ToString());
                    }
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          TargetData:ASPxButton_PopSave_Click  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        protected void GetExcel(DataTable dt, string FileName)
        {
            try
            {
                //定义文档类型，字符编码
                HttpResponse resp;
                resp = Page.Response;
                FileName = HttpUtility.UrlEncode(FileName, System.Text.Encoding.UTF8);
                FileName = FileName + ".xls";
                resp.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
                resp.AppendHeader("Content-Disposition", "attachment;filename=" + FileName);
                string colHeaders = "", ls_item = "";
                int k = 0;
                //定义表对象与行对像，同时用DataTable对其值进行初始化 
                DataRow[] myRow = dt.Select();
                //取得数据表各列标题，各标题之间以\t分割，最后一个列标题后加回车符
                foreach (DataColumn dc in dt.Columns)
                {
                    colHeaders += dt.Columns[k].Caption.ToString() + "\t";
                    k++;
                }
                k = k - 1;
                //colHeaders = colHeaders.Substring(0, colHeaders.Length - 1);
                colHeaders += "\r\n";
                //向HTTP输出流中写入取得的数据信息
                resp.Write(colHeaders);
                //逐行处理数据
                foreach (DataRow row in myRow)
                {
                    //在当前行中，逐列获得数据，数据之间以\t分割，结束时加回车符\n 
                    k = 0;
                    foreach (DataColumn dc in dt.Columns)
                    {
                        ls_item += row[k].ToString() + "\t";
                        k++;
                    }
                    k = k - 1;
                    //ls_item = ls_item.Substring(0, ls_item.Length - 1);
                    ls_item += "\r\n";
                    //当前行数据写入HTTP输出流，并且置空ls_item以便下行数据     
                    resp.Write(ls_item);
                    ls_item = "";
                }
                //写缓冲区中的数据到HTTP头文件中 
                resp.End();
                //DataGrid DataGrid1=new DataGrid();
                //DataGrid1.DataSource = dt.DefaultView;
                //DataGrid1.DataBind();

                //Response.Clear();
                //Response.Buffer = false;
                //Response.Charset = "GB2312";
                //Response.AppendHeader("Content-Disposition", "attachment;filename=" + FileName + ".xls");
                //Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
                //Response.ContentType = "application/ms-excel"; 
                ////Response.ContentType = "application/ms-text";//设置输出文件类型为TXT文件。
                //this.EnableViewState = false;
                //System.IO.StringWriter oStringWriter = new System.IO.StringWriter();
                //System.Web.UI.HtmlTextWriter oHtmlTextWriter = new System.Web.UI.HtmlTextWriter(oStringWriter);
                //DataGrid1.RenderControl(oHtmlTextWriter);
                //Response.Write(oStringWriter.ToString());
                //Response.End();       
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          TargetData:GetExcel(DataTable dt, string FileName)  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }//文本格式的excel
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
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          TargetData:ASPxGridView_PageIndexChanged         " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
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
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          TargetData:ASPxGridView_BeforeColumnSortingGrouping        " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
         }
        protected void ASPxButton_Select_Click(object sender, EventArgs e)
        {
            try
            {//
                string str;
                string target_code = "";
                str = "select target_code from mb_cb_targetcodemaintain where target_name='" + ASPxComboBox_Name.Text.Trim() + "'";
                conn.GetTable(str);
                if (conn.dt.Rows.Count > 0)
                {
                    target_code = conn.dt.Rows[0]["target_code"].ToString();
                }
                str = "select department_name 单位名称,指标名称,指标类型,to_char(t.input_date,'YYYY-MM-dd') 日期,modify_data 值,target_grade 等级,unit 单位 from(select unit_code,target_code,'" + ASPxComboBox_Name.Text.Trim() + "' 指标名称,'" + ASPxComboBox_Type.Text.Trim() + "' 指标类型,input_date,modify_data from mb_bb_targetdatatable where target_type='" + ASPxComboBox_Type.Text.Trim() + "' and target_code='" + target_code + "' and input_date>=to_date('" + ASPxDateEdit_Begin.Text + "','yyyy-mm-dd') and input_date<=to_date('" + ASPxDateEdit_End.Text + "','yyyy-mm-dd')) t,mb_cb_targetcodemaintain,mb_cb_departmentcode where mb_cb_targetcodemaintain.target_code=t.target_code and mb_cb_departmentcode.department_code=t.unit_code order by t.input_date,department_name";
                ViewState["str"]=str;

                conn.GetTable(str);
                ASPxGridView.DataSource = conn.dt.DefaultView;
                ASPxGridView.DataBind();
                DataTable tb = conn.dt;
                //画图

                ChartColumn.Titles.Add(ASPxComboBox_Name.Text.Trim() + "单位" + ASPxComboBox_Type.Text.Trim() + "变化趋势图");
                ChartColumn.Titles[0].Font = new Font("Black", 10, FontStyle.Bold);
                ChartColumn.Titles[0].ForeColor = Color.MidnightBlue;
                ChartColumn.Series.Clear();
                conn.GetTable("select distinct mb_cb_departmentcode.department_name from mb_bb_targetdatatable,mb_cb_departmentcode where mb_cb_departmentcode.department_code=mb_bb_targetdatatable.unit_code and  target_type='" + ASPxComboBox_Type.Text.Trim() + "' and mb_bb_targetdatatable.target_code='" + target_code + "' and mb_bb_targetdatatable.input_date>=to_date('" + ASPxDateEdit_Begin.Text + "','yyyy-mm-dd') and mb_bb_targetdatatable.input_date<=to_date('" + ASPxDateEdit_End.Text + "','yyyy-mm-dd') order by mb_cb_departmentcode.department_name");
                if (conn.dt.Rows.Count > 0)
                {
                    for (int i = 0; i < conn.dt.Rows.Count; i++)
                    {
                        ChartColumn.Series.Add(conn.dt.Rows[i]["department_name"].ToString());
                        ChartColumn.Series[i].ChartType = SeriesChartType.Line;
                         ChartColumn.Series[i].IsValueShownAsLabel = true;
                         ChartColumn.Series[i].MarkerStyle = MarkerStyle.Circle;
                         ChartColumn.Series[i].MarkerSize = 5;
                        //ChartColumn.Series[i]["PointWidth"] = "0.5";
                    }
                }
                ChartColumn.ChartAreas[0].AxisX.LabelStyle.Font = new Font("Arial", 8);
                ChartColumn.ChartAreas[0].AxisY.LabelStyle.Font = new Font("Arial", 8);
                ChartColumn.ChartAreas[0].AxisX.LabelStyle.Format = @"{yyyy-MM-dd}";
                ChartColumn.ChartAreas[0].AxisX.IntervalType = DateTimeIntervalType.Months;
                //ChartColumn.ChartAreas[0].AxisX.Interval = 1;
                ChartColumn.ChartAreas[0].AxisX.IsMarginVisible = true;
                ChartColumn.ChartAreas[0].AxisX.MajorGrid.LineColor = Color.LightGray;
                ChartColumn.ChartAreas[0].AxisY.MajorGrid.LineColor = Color.LightGray;
                ChartColumn.ChartAreas[0].AxisX.IsLabelAutoFit = true;
                ChartColumn.ChartAreas[0].AxisY.IsStartedFromZero = false;

                ChartColumn.Legends.Clear();
                ChartColumn.Legends.Add(ChartColumn.UniqueID);
                ChartColumn.Legends[ChartColumn.UniqueID].Font = new Font("Arial", 6, FontStyle.Regular);
                ChartColumn.Legends[ChartColumn.UniqueID].LegendStyle = LegendStyle.Table;
                ChartColumn.Legends[ChartColumn.UniqueID].Docking = Docking.Right;
                ChartColumn.Legends[ChartColumn.UniqueID].BorderDashStyle = ChartDashStyle.Solid;
                ChartColumn.Legends[ChartColumn.UniqueID].BorderColor = Color.Gray;
                ChartColumn.Legends[ChartColumn.UniqueID].ForeColor = Color.FromKnownColor(KnownColor.Black);
                ChartColumn.Legends[ChartColumn.UniqueID].Alignment = StringAlignment.Center;
                ChartColumn.Legends[ChartColumn.UniqueID].BackColor = Color.Transparent;

                for (int i = 0; i < tb.Rows.Count; i++)
                {
                    for (int j = 0; j < conn.dt.Rows.Count; j++)
                    {
                        if (tb.Rows[i]["单位名称"].ToString() == conn.dt.Rows[j]["department_name"].ToString())
                        {
                            ChartColumn.Series[j].Points.AddXY(Convert.ToDateTime(tb.Rows[i]["日期"].ToString()), tb.Rows[i]["值"].ToString());
                        }
                    }
                }
   
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          TargetData:ASPxButton_Select_Click        " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
    }
}