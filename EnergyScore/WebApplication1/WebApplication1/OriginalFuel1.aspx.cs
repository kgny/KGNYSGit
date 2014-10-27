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
    public partial class OriginalFuel1 : System.Web.UI.Page
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
                    //初始化原燃料名称
                    UpdateFuel();
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        OriginalFuel1:Page_Load          " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        private void UpdateFuel()//更新介质名称
        {
            try
            {
                ASPxComboBox_Fuel.Items.Clear();
                string str;
                str = "select distinct original_fuel_name from mb_cb_OriginalFuelcode order by original_fuel_name";
                conn.GetTable(str);
                for (int i = 0; i < conn.dt.Rows.Count; i++)
                {
                    ASPxComboBox_Fuel.Items.Add(conn.dt.Rows[i]["original_fuel_name"].ToString());
                }
                if (ASPxComboBox_Fuel.Items.Count > 0)
                    ASPxComboBox_Fuel.Items[0].Selected = true;

            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          OriginalFuel1:UpdateFuel()       " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "        OriginalFuel1:Page_UnLoad          " + ex.Source.ToString() + "         " + ex.Message;
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
                        GetExcel(conn.dt, conn.dt.Rows[0]["燃料名称"].ToString());
                    }
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          OriginalFuel1:ASPxButton_PopSave_Click  " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "          OriginalFuel1:GetExcel(DataTable dt, string FileName)  " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "          OriginalFuel1:ASPxGridView_PageIndexChanged         " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "          OriginalFuel1:ASPxGridView_BeforeColumnSortingGrouping        " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
         }
        protected void ASPxButton_Select_Click(object sender, EventArgs e)
        {
            try
            {//
                string str;
                string original_fuel_code = "";
                str = "select original_fuel_code from mb_cb_OriginalFuelcode where original_fuel_name='" + ASPxComboBox_Fuel.Text.Trim() + "'";
                conn.GetTable(str);
                if (conn.dt.Rows.Count > 0)
                {
                    original_fuel_code = conn.dt.Rows[0]["original_fuel_code"].ToString();
                }
                str = "select department_name 单位名称,燃料名称,累计值 from(select unit_code,'" + ASPxComboBox_Fuel.Text.Trim() + "' 燃料名称,Sum(use_quantity) 累计值 from mb_bb_OriginalFueltable where original_fuel_code='" + original_fuel_code + "' and input_date>=to_date('" + ASPxDateEdit_Begin.Text + "','yyyy-mm-dd') and input_date<=to_date('" + ASPxDateEdit_End.Text + "','yyyy-mm-dd') group by unit_code,original_fuel_code) t,mb_cb_departmentcode where mb_cb_departmentcode.department_code=t.unit_code order by 累计值 desc";
                ViewState["str"]=str;

                conn.GetTable(str);
                ASPxGridView.DataSource = conn.dt.DefaultView;
                ASPxGridView.DataBind();


                //画图

                ChartColumn.Titles.Add(ASPxComboBox_Fuel.Text.Trim()+"单位比重图");
                ChartColumn.Titles[0].Font = new Font("Black", 10, FontStyle.Bold);
                ChartColumn.Titles[0].ForeColor = Color.MidnightBlue;
                ChartColumn.Series.Clear();
                ChartColumn.Series.Add("Series1");
                ChartColumn.Series[0].ChartType = SeriesChartType.Pie;
                ChartColumn.Series[0]["PointWidth"] = "0.5";
                ChartColumn.Series[0].IsValueShownAsLabel = false;
                ChartColumn.Series[0]["PieLabelStyle"] = "Outside";

                ChartColumn.ChartAreas["ChartArea1"].Area3DStyle.Enable3D =true;
                ChartColumn.ChartAreas[0].AxisX.Interval = 1;  

                ChartColumn.Legends.Clear();
                ChartColumn.Legends.Add(ChartColumn.UniqueID);

                ChartColumn.Legends[ChartColumn.UniqueID].LegendStyle = LegendStyle.Table;
                ChartColumn.Legends[ChartColumn.UniqueID].Docking = Docking.Right;

                //   chart.Legends["ChartR"].InsideChartArea = "ChartArea1";
                //ChartColumn.Legends[ChartColumn.UniqueID].BorderDashStyle = ChartDashStyle.Solid;
                ChartColumn.Legends[ChartColumn.UniqueID].BorderColor = Color.Gray;
                ChartColumn.Legends[ChartColumn.UniqueID].ForeColor = Color.FromKnownColor(KnownColor.Black);
                ChartColumn.Legends[ChartColumn.UniqueID].Alignment = StringAlignment.Center;
                ChartColumn.Legends[ChartColumn.UniqueID].BackColor = Color.Transparent;
                LegendCellColumn firstColumn = new LegendCellColumn { ColumnType = LegendCellColumnType.SeriesSymbol, HeaderBackColor = Color.WhiteSmoke };
                LegendCellColumn secondColumn = new LegendCellColumn { ColumnType = LegendCellColumnType.Text, Text = "#LEGENDTEXT", HeaderBackColor = Color.WhiteSmoke };
                LegendCellColumn thirdColumn = new LegendCellColumn { ColumnType = LegendCellColumnType.Text, Text = "#PERCENT", HeaderBackColor = Color.WhiteSmoke };

                ChartColumn.Legends[ChartColumn.UniqueID].CellColumns.Add(firstColumn);
                ChartColumn.Legends[ChartColumn.UniqueID].CellColumns.Add(secondColumn);
                ChartColumn.Legends[ChartColumn.UniqueID].CellColumns.Add(thirdColumn);

                if (conn.dt.Rows.Count > 0)
                {
                    double[] yValues = new double[conn.dt.Rows.Count];
                    string[] xValues = new string[conn.dt.Rows.Count];

                    for (int i = 0; i < conn.dt.Rows.Count; i++)
                    {
                        xValues[i] = conn.dt.Rows[i]["单位名称"].ToString();
                        yValues[i] = Convert.ToDouble(conn.dt.Rows[i]["累计值"].ToString());
                        ChartColumn.Series[0].Points.AddXY(xValues[i], yValues[i]);
                    }
                }
   
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          OriginalFuel1:ASPxButton_Select_Click        " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
    }
}