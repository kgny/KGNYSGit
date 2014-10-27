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
    public partial class UnitConsumption : System.Web.UI.Page
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
                    //初始化单位名称
                    UpdateUnit();
                    //初始化产品名称
                    UpdateProduct();
                    //初始化介质名称
                    UpdateMedia();
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        UnitConsumption:Page_Load          " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        private void UpdateUnit()//更新单位名称
        {
            try
            {
                ASPxComboBox_Unit.Items.Clear();
                string str;
                str = "select distinct department_name from mb_cb_departmentcode order by department_name";
                conn.GetTable(str);
                for (int i = 0; i < conn.dt.Rows.Count; i++)
                {
                    ASPxComboBox_Unit.Items.Add(conn.dt.Rows[i]["department_name"].ToString());
                }
                if (ASPxComboBox_Unit.Items.Count > 0)
                    ASPxComboBox_Unit.Items[0].Selected = true;

            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          UnitConsumption:UpdateUnit()       " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        private void UpdateProduct()//更新产品名称
        {
            try
            {
                ASPxComboBox_Product.Items.Clear();
                string str;
                str = "select distinct product_name from mb_cb_productcodetable order by product_name";
                conn.GetTable(str);
                for (int i = 0; i < conn.dt.Rows.Count; i++)
                {
                    ASPxComboBox_Product.Items.Add(conn.dt.Rows[i]["product_name"].ToString());
                }
                if (ASPxComboBox_Product.Items.Count > 0)
                    ASPxComboBox_Product.Items[0].Selected = true;

            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          UnitConsumption:UpdateProduct()       " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        private void UpdateMedia()//更新介质名称
        {
            try
            {
                ASPxComboBox_Media.Items.Clear();
                string str;
                str = "select distinct media_name from mb_cb_mediacodetable order by media_name";
                conn.GetTable(str);
                for (int i = 0; i < conn.dt.Rows.Count; i++)
                {
                    ASPxComboBox_Media.Items.Add(conn.dt.Rows[i]["media_name"].ToString());
                }
                if (ASPxComboBox_Media.Items.Count > 0)
                    ASPxComboBox_Media.Items[0].Selected = true;

            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          UnitConsumption:UpdateMedia()       " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "        UnitConsumption:Page_UnLoad          " + ex.Source.ToString() + "         " + ex.Message;
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
                        GetExcel(conn.dt, conn.dt.Rows[0]["单位名称"].ToString() + "_" + conn.dt.Rows[0]["介质名称"].ToString() + "_" + conn.dt.Rows[0]["产品名称"].ToString() + "_" + conn.dt.Rows[0]["单耗类型"].ToString());
                    }
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          UnitConsumption:ASPxButton_PopSave_Click  " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "          UnitConsumption:GetExcel(DataTable dt, string FileName)  " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "          UnitConsumption:ASPxGridView_PageIndexChanged         " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "          UnitConsumption:ASPxGridView_BeforeColumnSortingGrouping        " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
         }
        protected void ASPxButton_Select_Click(object sender, EventArgs e)
        {
            try
            {//
                string str;
                string department_code = "";
                str = "select department_code from mb_cb_departmentcode where department_name='" + ASPxComboBox_Unit.Text.Trim() + "'";
                conn.GetTable(str);
                if (conn.dt.Rows.Count > 0)
                {
                    department_code = conn.dt.Rows[0]["department_code"].ToString();
                }
                string product_code = "";
                str = "select product_code from mb_cb_productcodetable where product_name='" + ASPxComboBox_Product.Text.Trim() + "'";
                conn.GetTable(str);
                if (conn.dt.Rows.Count > 0)
                {
                    product_code = conn.dt.Rows[0]["product_code"].ToString();
                }
                string media_code = "";
                str = "select media_code from mb_cb_mediacodetable where media_name='" + ASPxComboBox_Media.Text.Trim() + "'";
                conn.GetTable(str);
                if (conn.dt.Rows.Count > 0)
                {
                    media_code = conn.dt.Rows[0]["media_code"].ToString();
                }

                str = "select 单位名称,areaname 工序名称,产品名称,介质名称,单耗类型,to_char(t.input_date,'YYYY-MM-dd') 日期,modify_data 值,单位 from(select '" + ASPxComboBox_Unit.Text.Trim() + "' 单位名称,process_code,'" + ASPxComboBox_Media.Text.Trim() + "' 介质名称,'" + ASPxComboBox_Product.Text.Trim() + "' 产品名称,'" + ASPxComboBox_Type.Text.Trim() + "' 单耗类型,input_date,modify_data,unit 单位 from mb_bb_unitconsumptiontable where unit_consumption_type='" + ASPxComboBox_Type.Text.Trim() + "' and unit_code='" + department_code + "' and product_code='" + product_code + "' and media_code='" + media_code + "' and input_date>=to_date('" + ASPxDateEdit_Begin.Text + "','yyyy-mm-dd') and input_date<=to_date('" + ASPxDateEdit_End.Text + "','yyyy-mm-dd')) t,mb_cb_areatype where mb_cb_areatype.areaid=t.process_code order by t.input_date,areaname";
                ViewState["str"]=str;

                conn.GetTable(str);
                ASPxGridView.DataSource = conn.dt.DefaultView;
                ASPxGridView.DataBind();
                DataTable tb = conn.dt;
                //画图

                ChartColumn.Titles.Add(ASPxComboBox_Media.Text.Trim() + "/" + ASPxComboBox_Product.Text.Trim() + "单耗工序" + ASPxComboBox_Type.Text.Trim() + "变化趋势图");
                ChartColumn.Titles[0].Font = new Font("Black", 10, FontStyle.Bold);
                ChartColumn.Titles[0].ForeColor = Color.MidnightBlue;
                ChartColumn.Series.Clear();
                conn.GetTable("select distinct mb_cb_areatype.areaname areaname from mb_bb_unitconsumptiontable,mb_cb_areatype where mb_cb_areatype.areaid=mb_bb_unitconsumptiontable.process_code and mb_bb_unitconsumptiontable.unit_consumption_type='" + ASPxComboBox_Type.Text.Trim() + "' and mb_bb_unitconsumptiontable.unit_code='" + department_code + "' and mb_bb_unitconsumptiontable.product_code='" + product_code + "' and mb_bb_unitconsumptiontable.media_code='" + media_code + "' and mb_bb_unitconsumptiontable.input_date>=to_date('" + ASPxDateEdit_Begin.Text + "','yyyy-mm-dd') and mb_bb_unitconsumptiontable.input_date<=to_date('" + ASPxDateEdit_End.Text + "','yyyy-mm-dd') order by mb_cb_areatype.areaname");
                if (conn.dt.Rows.Count > 0)
                {
                    for (int i = 0; i < conn.dt.Rows.Count; i++)
                    {
                        ChartColumn.Series.Add(conn.dt.Rows[i]["areaname"].ToString());
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
                        if (tb.Rows[i]["工序名称"].ToString() == conn.dt.Rows[j]["areaname"].ToString())
                        {
                            ChartColumn.Series[j].Points.AddXY(Convert.ToDateTime(tb.Rows[i]["日期"].ToString()), tb.Rows[i]["值"].ToString());
                        }
                    }
                }
   
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          UnitConsumption:ASPxButton_Select_Click        " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
    }
}