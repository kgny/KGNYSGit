using System;
using System.Data;
using System.Data.OracleClient;
using System.Text;
using System.Web;
using System.Web.UI;
namespace Basic
{
	/// <summary>
	/// config 的摘要说明。
	/// </summary>
    public class config
    {
        public OracleConnection myConnection;
        public OracleCommand myCommand;
        public OracleDataAdapter myAdapter;
        public OracleDataAdapter myAdapter1;
        public OracleDataReader myReader;
        public OracleCommandBuilder myCommandBuilder;
        public DataSet ds;
        public DataTable dt;
        public DataRow dr;
        public string filename;
        public int filesize;

        public config()
        {
            //
            // TODO: 在此处添加构造函数逻辑
            //

            Open(); // 打开数据库
        }

        // 1.——————————————————数据库操作函数——————————————————————

        /// <summary>
        /// 连接数据库
        /// </summary>
        public void Open()
        {
            //string str = "user id=qasys;data source=MVCData;password=sa";
            //string str2=System.Configuration.ConfigurationSettings.AppSettings["data"];
            // string str = "Data Source=10.128.160.17;Initial Catalog=MVCData;User Id=L2Finish;Password=sa";
            //string str = "user id=EMS_BS;data source=MVCData;password=pcs";
            string str = "user id=dj_user;data source=lev2;password=dj";//研究院
            //string str = "user id=EMS_BS;data source=pcsdb;password=pcs";
            myConnection = new OracleConnection(str);
            myConnection.Open();


        }
        /// <summary>
        /// 关闭数据库和清除DateSet对象
        /// </summary>
        public void Close()
        {
            if (ds != null) // 清除DataSet对象
            {
                ds.Clear();
            }
            if (myConnection != null)
            {
                myConnection.Close(); // 关闭数据库
            }
        }
        /// <summary>
        /// 建立DataSet对象,用记录填充或构架(如果必要)DataSet对象,DataSet即是数据在内存的缓存
        /// </summary>
        /// <param name="str_Sql">打开表Sql语句</param>
        public void Fill(string str_Sql)
        {
            myAdapter = new OracleDataAdapter(str_Sql, myConnection);
            ds = new DataSet();
            myAdapter.Fill(ds);
        }
        /// <summary>
        /// 建立DataSet对象,用记录填充或构架(如果必要)DataSet对象,DataSet即是数据在内存的缓存
        /// </summary>
        /// <param name="tabname">用于表映谢的源表的名称</param>
        /// <param name="sql">打开表Sql语句</param>
        public void Fill(string tabname, string sql)
        {
            //Open();
            myAdapter = new OracleDataAdapter(sql, myConnection);
            ds = new DataSet();
            myAdapter.Fill(ds, tabname);
        }
        /// <summary>
        /// 给DataSet对象增加映谢表
        /// </summary>
        /// <param name="str_Sql">Select-SQL语句</param>
        public void FillAdd(string str_Sql)
        {
            myAdapter = new OracleDataAdapter(str_Sql, myConnection);
            myAdapter.Fill(ds);
        }
        /// <summary>
        /// 给DataSet对象增加映谢表
        /// </summary>
        /// <param name="str_Sql">Select-SQL语句</param>
        public void FillAdd(string tabname, string str_Sql)
        {
            myAdapter = new OracleDataAdapter(str_Sql, myConnection);
            myAdapter.Fill(ds, tabname);
        }
        public void GetTable(string str_Sql)
        {
            Fill(str_Sql);
            dt = ds.Tables[0];
        }
        public int GetRowCount(string str_Sql)
        {
            Fill(str_Sql);
            try
            {
                int count = ds.Tables[0].Rows.Count;
                ds.Clear();
                return count;
            }
            catch
            {
                ds.Clear();
                return 0;
            }

        }
        /// <summary>
        /// 通过传Sql语句关键key值获得表中一行的数据
        /// </summary>
        /// <param name="str_Sql">带关键Key值参数的Select-SQL语句</param>
        public void GetRowRecord(string str_Sql)
        {
            Fill(str_Sql);
            dr = ds.Tables[0].Rows[0];
            myConnection.Close();
        }
        /// <summary>
        /// 执行Transact-SQL语句,对数据库记录做插入,修改,删除等操作
        /// </summary>
        /// <param name="str_Sql">Transact-SQL语句</param>
        public void ExeSql(string str_Sql)
        {
            myCommand = new OracleCommand(str_Sql, myConnection);
            myCommand.ExecuteNonQuery();
            myCommand.Dispose();
        }

        public static string DStoJSON(DataTable dt)
        {
            StringBuilder jsonBuilder = new StringBuilder();
            jsonBuilder.Append("{\"Name\":\"" + dt.TableName + "\",\"Rows");
            jsonBuilder.Append("\":[");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                jsonBuilder.Append("{");
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    jsonBuilder.Append("\"");
                    jsonBuilder.Append(dt.Columns[j].ColumnName);
                    jsonBuilder.Append("\":\"");
                    //if (dt.Columns[j].DataType == typeof(DateTime))
                    //{

                    //}
                    jsonBuilder.Append(dt.Rows[i][j].ToString().Replace("\"", "\\\"")); //对于特殊字符，还应该进行特别的处理。
                    jsonBuilder.Append("\",");
                }
                jsonBuilder.Remove(jsonBuilder.Length - 1, 1);
                jsonBuilder.Append("},");
            }
            jsonBuilder.Remove(jsonBuilder.Length - 1, 1);
            jsonBuilder.Append("]");
            jsonBuilder.Append("}");
            return jsonBuilder.ToString();
        }
    
        //public void DataTabletoExcel(Page page, DataTable[] tmpDataTable, string strFileName)
        //{
        //    if (tmpDataTable == null)
        //        return;

        //    int rowIndex = 1;


        //    //要添加引用using Microsoft.Office.Interop.Excel
        //    Excel.Application xIAPP = new Excel.Application();

        //    xIAPP.DefaultFilePath = "";
        //    xIAPP.SheetsInNewWorkbook = 1;
        //    Excel.Workbook xIBOOK = xIAPP.Workbooks.Add(true);
        //    for (int k = 0; k < tmpDataTable.Length; k++)
        //    {
        //        int columnIndex = 0;
        //        int rowNum = tmpDataTable[k].Rows.Count;
        //        int columnNum = tmpDataTable[k].Columns.Count;
        //        foreach (DataColumn dc in tmpDataTable[k].Columns)
        //        {
        //            columnIndex++;
        //            if (dc.ColumnName == "")
        //            {
        //                xIAPP.Cells[rowIndex, columnIndex] = "";
        //            }
        //            else
        //            {
        //                xIAPP.Cells[rowIndex, columnIndex] = dc.ColumnName;
        //            }
        //        }

        //        for (int i = 0; i < rowNum; i++)
        //        {
        //            rowIndex++;
        //            columnIndex = 0;
        //            for (int j = 0; j < columnNum; j++)
        //            {
        //                columnIndex++;
        //                xIAPP.Cells[rowIndex, columnIndex] = tmpDataTable[k].Rows[i][j].ToString();

        //            }
        //        }
        //        rowIndex = rowIndex + 2;


        //    }
        //    object ms = System.Reflection.Missing.Value;
        //    if (File.Exists("D:/" + strFileName + ".xls"))
        //    {
        //        File.Delete("D:/" + strFileName + ".xls");
        //    }

        //    xIBOOK.SaveAs("D:/" + strFileName + ".xls", ms, ms, ms, ms, ms, Excel.XlSaveAsAccessMode.xlShared, ms, ms, ms, ms, ms);
        //    xIAPP.Quit();

        //    //弹出保存对话框
        //    System.IO.FileInfo fileInfo = new System.IO.FileInfo(@"D:/" + strFileName + ".xls");
        //    HttpResponse Response;
        //    Response = page.Response;
        //    Response.Clear();
        //    Response.AddHeader("content-disposition", "attachment;filename=" + page.Server.UrlEncode(fileInfo.Name.ToString()));
        //    Response.AddHeader("content-length", fileInfo.Length.ToString());
        //    Response.ContentType = "application/octet-stream";
        //    Response.ContentEncoding = System.Text.Encoding.Default;
        //    Response.WriteFile(@"D:/" + strFileName + ".xls");




         
        //}
        public void GetExcel(Page page,DataTable[] dt, string FileName)
        {
            try
            {
                //定义文档类型，字符编码
                HttpResponse resp;
                resp = page.Response;
                FileName = HttpUtility.UrlEncode(FileName, System.Text.Encoding.UTF8);
                FileName = FileName + ".xls";
                resp.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
                resp.AppendHeader("Content-Disposition", "attachment;filename=" + FileName);
                string colHeaders = "", ls_item = "";
               
                //定义表对象与行对像，同时用DataTable对其值进行初始化 
                for (int i = 0; i < dt.Length; i++)
                {
                    int k = 0;
                    DataRow[] myRow = dt[i].Select();
                    //取得数据表各列标题，各标题之间以\t分割，最后一个列标题后加回车符
                    foreach (DataColumn dc in dt[i].Columns)
                    {
                        colHeaders += dt[i].Columns[k].Caption.ToString() + "\t";
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
                        foreach (DataColumn dc in dt[i].Columns)
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
                resp.End();
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          config:GetExcel()  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }//文本格式的excel
     
        public bool IsIntOrDouble(string oText)
        {
            try
            {
                //从字符串到双精度值的转换，字符串转换为Double，如果成功则返回为真，否则返回为假。 
                Int16 var1 = Convert.ToInt16(oText);

                return true;
            }
            catch
            {
                try
                {
                    Double var2 = Convert.ToDouble(oText);
                    return true;
                }
                catch
                {
                    return false;
                }

            }
        }
    }
}
