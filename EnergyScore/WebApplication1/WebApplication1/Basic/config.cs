using System;
using System.Data;
using System.Data.OracleClient;
using System.Text;
using System.Web;
using System.Web.UI;
namespace Basic
{
	/// <summary>
	/// config ��ժҪ˵����
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
            // TODO: �ڴ˴���ӹ��캯���߼�
            //

            Open(); // �����ݿ�
        }

        // 1.���������������������������������������ݿ����������������������������������������������������

        /// <summary>
        /// �������ݿ�
        /// </summary>
        public void Open()
        {
            //string str = "user id=qasys;data source=MVCData;password=sa";
            //string str2=System.Configuration.ConfigurationSettings.AppSettings["data"];
            // string str = "Data Source=10.128.160.17;Initial Catalog=MVCData;User Id=L2Finish;Password=sa";
            //string str = "user id=EMS_BS;data source=MVCData;password=pcs";
            string str = "user id=dj_user;data source=lev2;password=dj";//�о�Ժ
            //string str = "user id=EMS_BS;data source=pcsdb;password=pcs";
            myConnection = new OracleConnection(str);
            myConnection.Open();


        }
        /// <summary>
        /// �ر����ݿ�����DateSet����
        /// </summary>
        public void Close()
        {
            if (ds != null) // ���DataSet����
            {
                ds.Clear();
            }
            if (myConnection != null)
            {
                myConnection.Close(); // �ر����ݿ�
            }
        }
        /// <summary>
        /// ����DataSet����,�ü�¼���򹹼�(�����Ҫ)DataSet����,DataSet�����������ڴ�Ļ���
        /// </summary>
        /// <param name="str_Sql">�򿪱�Sql���</param>
        public void Fill(string str_Sql)
        {
            myAdapter = new OracleDataAdapter(str_Sql, myConnection);
            ds = new DataSet();
            myAdapter.Fill(ds);
        }
        /// <summary>
        /// ����DataSet����,�ü�¼���򹹼�(�����Ҫ)DataSet����,DataSet�����������ڴ�Ļ���
        /// </summary>
        /// <param name="tabname">���ڱ�ӳл��Դ�������</param>
        /// <param name="sql">�򿪱�Sql���</param>
        public void Fill(string tabname, string sql)
        {
            //Open();
            myAdapter = new OracleDataAdapter(sql, myConnection);
            ds = new DataSet();
            myAdapter.Fill(ds, tabname);
        }
        /// <summary>
        /// ��DataSet��������ӳл��
        /// </summary>
        /// <param name="str_Sql">Select-SQL���</param>
        public void FillAdd(string str_Sql)
        {
            myAdapter = new OracleDataAdapter(str_Sql, myConnection);
            myAdapter.Fill(ds);
        }
        /// <summary>
        /// ��DataSet��������ӳл��
        /// </summary>
        /// <param name="str_Sql">Select-SQL���</param>
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
        /// ͨ����Sql���ؼ�keyֵ��ñ���һ�е�����
        /// </summary>
        /// <param name="str_Sql">���ؼ�Keyֵ������Select-SQL���</param>
        public void GetRowRecord(string str_Sql)
        {
            Fill(str_Sql);
            dr = ds.Tables[0].Rows[0];
            myConnection.Close();
        }
        /// <summary>
        /// ִ��Transact-SQL���,�����ݿ��¼������,�޸�,ɾ���Ȳ���
        /// </summary>
        /// <param name="str_Sql">Transact-SQL���</param>
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
                    jsonBuilder.Append(dt.Rows[i][j].ToString().Replace("\"", "\\\"")); //���������ַ�����Ӧ�ý����ر�Ĵ���
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


        //    //Ҫ�������using Microsoft.Office.Interop.Excel
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

        //    //��������Ի���
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
                //�����ĵ����ͣ��ַ�����
                HttpResponse resp;
                resp = page.Response;
                FileName = HttpUtility.UrlEncode(FileName, System.Text.Encoding.UTF8);
                FileName = FileName + ".xls";
                resp.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
                resp.AppendHeader("Content-Disposition", "attachment;filename=" + FileName);
                string colHeaders = "", ls_item = "";
               
                //�����������ж���ͬʱ��DataTable����ֵ���г�ʼ�� 
                for (int i = 0; i < dt.Length; i++)
                {
                    int k = 0;
                    DataRow[] myRow = dt[i].Select();
                    //ȡ�����ݱ���б��⣬������֮����\t�ָ���һ���б����ӻس���
                    foreach (DataColumn dc in dt[i].Columns)
                    {
                        colHeaders += dt[i].Columns[k].Caption.ToString() + "\t";
                        k++;
                    }
                    k = k - 1;
                    //colHeaders = colHeaders.Substring(0, colHeaders.Length - 1);
                    colHeaders += "\r\n";
                    //��HTTP�������д��ȡ�õ�������Ϣ
                    resp.Write(colHeaders);
                    //���д�������
                    foreach (DataRow row in myRow)
                    {
                        //�ڵ�ǰ���У����л�����ݣ�����֮����\t�ָ����ʱ�ӻس���\n 
                        k = 0;
                        foreach (DataColumn dc in dt[i].Columns)
                        {
                            ls_item += row[k].ToString() + "\t";
                            k++;
                        }
                        k = k - 1;
                        //ls_item = ls_item.Substring(0, ls_item.Length - 1);
                        ls_item += "\r\n";
                        //��ǰ������д��HTTP������������ÿ�ls_item�Ա���������     
                        resp.Write(ls_item);
                        ls_item = "";
                    }
                    //д�������е����ݵ�HTTPͷ�ļ��� 
                   
                    //DataGrid DataGrid1=new DataGrid();
                    //DataGrid1.DataSource = dt.DefaultView;
                    //DataGrid1.DataBind();

                    //Response.Clear();
                    //Response.Buffer = false;
                    //Response.Charset = "GB2312";
                    //Response.AppendHeader("Content-Disposition", "attachment;filename=" + FileName + ".xls");
                    //Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
                    //Response.ContentType = "application/ms-excel"; 
                    ////Response.ContentType = "application/ms-text";//��������ļ�����ΪTXT�ļ���
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
        }//�ı���ʽ��excel
     
        public bool IsIntOrDouble(string oText)
        {
            try
            {
                //���ַ�����˫����ֵ��ת�����ַ���ת��ΪDouble������ɹ��򷵻�Ϊ�棬���򷵻�Ϊ�١� 
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
