using System;
using System.IO;
using System.Text;

namespace Basic
{
    class FileBlog
    {
        private  const string FILE_NAME = "ErroLog.txt"; 
        private  const string File_name_back = "FlownErroLog.txt";
        public FileBlog()
        {
            
            
        }
         
        public static void WriteFile(string str)
        {
            //int FileDim = 5000000; //�ļ���С
            //StreamWriter sr;
            //StreamReader rs;
            //FileInfo fl = new FileInfo(FILE_NAME);
            ////FileInfo ffl = new FileInfo(File_name_back);

            //if (File.Exists(FILE_NAME)) //����ļ�����,�򴴽�File.AppendText����
            //{
            //    if (fl.Length > FileDim)
            //    {
            //        sr = File.CreateText(File_name_back);
                   
            //        rs = File.OpenText(FILE_NAME);
            //        string s = rs.ReadLine();

            //        while (s != null)
            //        {
            //            sr.Close();
            //            sr = File.AppendText(File_name_back);
            //            sr.WriteLine(s);
            //            s = rs.ReadLine();
            //        }
            //        rs.Close();
            //        sr.Close();
            //        sr = File.CreateText(FILE_NAME);
            //    }
            //    else
            //    {
            //        sr = File.AppendText(FILE_NAME);
            //    }
            //}
            //else   //����ļ�������,�򴴽�File.CreateText����
            //{
            //    sr = File.CreateText(FILE_NAME);
            //}
            //sr.WriteLine(str);
            //sr.Close();
        }

    }
}
