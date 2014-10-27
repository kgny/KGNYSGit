using System;
using System.Collections.Generic;
using System.Text;

namespace Basic
{
    class NumbJudge
    {
        //判定字符串是否为数字
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
        //判定字符串是否为日期
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
