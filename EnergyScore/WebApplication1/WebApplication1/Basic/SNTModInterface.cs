using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
namespace Basic
{
    ////////////////////////////////////////////////////////////////////////////////////////
    //程序中用到的参数类
    public class TechPara_DLL   //工艺参数类，由操作工从界面设定
    {
      //煤气柜的
   
        public double mVGmin;	                                        //高炉煤气柜的最低容量，[万立米]
        public double mVGlow;	                                        //高炉煤气柜的正常波动下限容量，[万立米]
        public double mVGbest;	                                        //高炉煤气柜的最佳容量，[万立米]
        public double mVGhigh;	                                        //高炉煤气柜的正常波动上限容量，[万立米]
        public double mVGmax;	                                        //高炉煤气柜的最高容量，[万立米]
        public double mVJmin;	                                        //焦炉煤气柜的最低容量，[万立米]
        public double mVJlow;	                                        //焦炉煤气柜的正常波动下限容量，[万立米]
        public double mVJbest;	                                        //焦炉煤气柜的最佳容量，[万立米]
        public double mVJhigh;	                                        //焦炉煤气柜的正常波动上限容量，[万立米]
        public double mVJmax;	                                        //焦炉煤气柜的最高容量，[万立米]
        public double mVZmin;	                                        //转炉煤气柜的最低容量，[万立米]
        public double mVZlow;	                                        //转炉煤气柜的正常波动下限容量，[万立米]
        public double mVZbest;	                                        //转炉煤气柜的最佳容量，[万立米]
        public double mVZhigh;	                                        //转炉煤气柜的正常波动上限容量，[万立米]
        public double mVZmax;	                                        //转炉煤气柜的最高容量，[万立米]
    
      //管损的
        public double mLossG;	                                        //高炉煤气的管损，[%]
        public double mLossJ;	                                        //焦炉煤气的管损，[%]
        public double mLossZ;	                                        //转炉煤气的管损，[%]
       
      //放散塔的
        public double mGFmax;	                                        //高炉煤气放散塔的最大放散能力，[m3/h]
        public double mJFmax;	                                        //焦炉煤气放散塔的最大放散能力，[m3/h]
        public double mZFmax;	                                        //转炉煤气放散塔的最大放散能力，[m3/h]

        public TechPara_DLL()
        {
            //3个柜位的范围，[万m3]
            mVGlow = 14;
            mVGhigh = 26;
            mVJlow = 7;
            mVJhigh = 13;
            mVZlow = 3.5;
            mVZhigh = 6.5;
            
            //管损，取1%的管损
            mLossG = 0.01;
            mLossJ = 0.01;
            mLossZ = 0.01;






        }

    }

    public class ModPara_DLL   //模型参数类，由工程师从界面设定
    {

     
      //经济系数
        public double[] mW_G;                       //用户的高炉煤气经济系数,[-],  预留30个用户 = new double[30]
        public double[] mW_J;                       //用户的焦炉煤气经济系数,[-],  预留30个用户 = new double[30]
        public double[] mW_Z ;                       //用户的转炉煤气经济系数,[-],  预留30个用户= new double[30]

        public double mW_GF;                          //高炉煤气放散的经济系数
        public double mW_JF;                          //焦炉煤气放散的经济系数
        public double mW_ZF;                         //转炉煤气放散的经济系数

      //用户的最大煤气流量
        public double[] mXmax_G ;                    //用户的高炉煤气最大流量,[m3/h],  预留30个用户= new double[30]
        public double[] mXmax_J ;                    //用户的焦炉煤气最大流量,[m3/h],  预留30个用户= new double[30]
        public double[] mXmax_Z ;                    //用户的转炉煤气最大流量,[m3/h],  预留30个用户= new double[30]

        public double mXmax_GF;                      //高炉煤气的最大放散量，[m3/h]
        public double mXmax_JF;                      //焦炉煤气的最大放散量，[m3/h]
        public double mXmax_ZF;                      //转炉煤气的最大放散量，[m3/h]

      //用户的最小煤气流量
        public double[] mXmin_G ;                    //用户的高炉煤气最小流量,[m3/h],  预留30个用户= new double[30]
        public double[] mXmin_J ;                    //用户的焦炉煤气最小流量,[m3/h],  预留30个用户= new double[30]
        public double[] mXmin_Z ;                    //用户的转炉煤气最小流量,[m3/h],  预留30个用户= new double[30]

        public double mXmin_GF;                     //高炉煤气的最小放散量，[m3/h]
        public double mXmin_JF;                     //焦炉煤气的最小放散量，[m3/h]
        public double mXmin_ZF;                     //转炉煤气的最小放散量，[m3/h]

      //用户的热值最大最小值
        public double[] mRmax;                      //用户的最大热值,[KJ/m3],  预留30个用户 = new double[30]
        public double[] mRmin;                      //用户的最小热值,[KJ/m3],  预留30个用户 = new double[30]

        public double[] mQmax;                      //用户的压力指标最大时所需的煤气总量值,[KJ/m3],  预留30个用户 = new double[30]
        public double[] mQmin;                      //用户的压力指标最小时所需的煤气总量值,[KJ/m3],  预留30个用户 = new double[30]

       //煤气用户的个数
        public static int n0;     //煤气用户的个数，最大为30个

      //线性规划标准型相关的参数
        public int n;                              //调度模型变量的个数，n=(n0+1)*3，因此最大为93
        public int nclin;                          //调度模型不等式约束方程的个数, nclin=2*n，因此最大为186
        public double[] cvec;                      //目标函数的系数  = new double[93];  
        public double[] bl;                        //不等式约束的下限  = new double[279]
        public double[] bu;                        //不等式约束的上限 = new double[279]
        public double[,] a;                        //约束矩阵A =new double[186,93]
        public double[] x;                         //调度变量求解的值
        public double objective;                   //调度目标函数的值
    


        public  ModPara_DLL()
        {
            n0 = 6;
            n = (n0 + 1) * 3;
            nclin = n;
        
            //经济系数初始化及赋值
            mW_G = new double[n0];      mW_J = new double[n0];        mW_Z = new double[n0];        
            mW_G[0] = 45; mW_G[1] = 45; mW_G[2] = 45; mW_G[3] = 45; mW_G[4] = 105; mW_G[5] = 105;
            mW_J[0] = 65; mW_J[1] = 65; mW_J[2] = 65; mW_J[3] = 65; mW_J[4] = 125; mW_J[5] = 125;
            mW_Z[0] = 50; mW_Z[1] = 50; mW_Z[2] = 50; mW_Z[3] = 50; mW_Z[4] = 110; mW_Z[5] = 110;
            mW_GF = -180; mW_JF = -260; mW_ZF = -200;

            //最大煤气流量初始化及赋值
            mXmax_G = new double[n0];   mXmax_J = new double[n0];     mXmax_Z = new double[n0];
            mXmax_G[0] = 4.0E+5; mXmax_G[1] = 0; mXmax_G[2] = 5.0E+4; mXmax_G[3] = 3.0E+5; mXmax_G[4] = 5.0E+4; mXmax_G[5] = 5.0E+4;
            mXmax_J[0] = 4.0E+4; mXmax_J[1] = 3200; mXmax_J[2] = 600; mXmax_J[3] = 2.0E+4; mXmax_J[4] = 5.0E+4; mXmax_J[5] = 5.0E+4;
            mXmax_Z[0] = 4.0E+4; mXmax_Z[1] = 0; mXmax_Z[2] = 4.0E+4; mXmax_Z[3] = 0; mXmax_Z[4] = 5.0E+4; mXmax_Z[5] = 5.0E+4;
            mXmax_GF = 5.0E+4; mXmax_JF = 5.0E+4; mXmax_ZF = 5.0E+4;

            //最小煤气流量初始化及赋值
            mXmin_G = new double[n0]; mXmin_J = new double[n0]; mXmin_Z = new double[n0];
            for (int i = 0; i < n0; i++)
            {
                mXmin_G[i] = 0;
                mXmin_J[i] = 0;
                mXmin_Z[i] = 0;
            }
            mXmin_J[1] = 2800; mXmin_G[2] = 4.0E+4; mXmin_J[2] = 500; mXmin_Z[2] = 3.5E+4;
            mXmin_GF = 0; mXmin_JF = 0; mXmin_ZF = 0;

            //用户的热值最大最小值初始化及赋值
            mRmax=new double[n0]; mRmin=new double[n0]; mQmax=new double[n0]; mQmin=new double[n0]; 
            mRmax[0] = 1.0E+25 ; mRmax[1] = 1.0E+25 ; mRmax[2] =1.0E+25 ; mRmax[3] = 1.0E+25 ; mRmax[4] = 10000; mRmax[5] = 10000;
            mRmin[0] = 0 ; mRmin[1] = 0 ; mRmin[2] =0; mRmin[3] = 0 ; mRmin[4] = 8000; mRmin[5] = 8000;
            mQmax[0] = 1.0E+25; mQmax[1] = 1.0E+25; mQmax[2] = 1.0E+25; mQmax[3] = 1.0E+25; mQmax[4] = 100000; mQmax[5] = 65000;
            mQmin[0] = 0; mQmin[1] = 0; mQmin[2] = 0; mQmin[3] = 0; mQmin[4] = 95000; mQmin[5] = 60000;

        }


    }

    public class TC_in_DLL       //输入参数类（每个调度周期更新一次）
    {

        //当前的煤气平均热值量
        public double mR_G;	                                   //高炉煤气的热值 	KJ/m3
        public double mR_J;	                                   //焦炉煤气的热值 	KJ/m3
        public double mR_Z;	                                   //转炉煤气的热值 	KJ/m3
     
       //煤气的发生量
        public double mY_G;	                                   //高炉煤气的发生量	m3
        public double mY_J;	                                   //焦炉煤气的发生量	m3
        public double mY_Z;	                                   //转炉煤气的发生量	m3

      //当前的煤气柜柜位
        public double mVnow_G;	                                   //高炉煤气柜的容量	m3
        public double mVnow_J;	                                   //焦炉煤气柜的容量	m3
        public double mVnow_Z;	                                   //转炉煤气柜的容量	m3


        public TC_in_DLL()
        {
            mR_G = 3000;
            mR_J = 18000;
            mR_Z = 7500;

            mY_G = 74000;
            mY_J = 45000;
            mY_Z = 96500;

            mVnow_G = 360000;
            mVnow_J = 100000;
            mVnow_Z = 120000;
             
        }
    }

    public class TC_out_DLL       //输出参数类
    {

      //用户的煤气调度值
        public double[] mx_G;                     //用户的高炉煤气调度值,[m3/h],  预留30个用户 = new double[30]
        public double[] mx_J ;                    //用户的焦炉煤气调度值,[m3/h],  预留30个用户= new double[30]
        public double[] mx_Z;                     //用户的转炉煤气调度值,[m3/h],  预留30个用户 = new double[30]

        //放散量
        public double mxF_G;                      //高炉煤气的放散量,[m3/h] 
        public double mxF_J;                      //焦炉煤气的放散量,[m3/h] 
        public double mxF_Z;                      //转炉煤气的放散量,[m3/h] 

      //结果信息
        public int mFail_Flag;                    //0表示模型计算正常；1表示模型计算有误
        public string mErr_Message;               //错误信息

        public TC_out_DLL()
        {
            mx_G = new double[ModPara_DLL.n0];
            mx_J = new double[ModPara_DLL.n0];
            mx_Z = new double[ModPara_DLL.n0];
        }



    }

    ////////////////////////////////////////////////////////////////////////////////////////  

    
      

}
