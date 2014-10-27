using System;
using System.Collections.Generic;
using System.Text;

namespace Basic
{
    class NumbJudge
    {
        //�ж��ַ����Ƿ�Ϊ����
        public static bool IsNumber(string str)
        {
            try
            {
                double.Parse(str);
                return true;
            }
            catch
            {
                return false;
            }
        }
        //�ж��ַ����Ƿ�Ϊ����
        public static bool IsDateTime(string str)
        {
            try
            {
                DateTime.Parse(str);
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
