using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NagLibrary;
namespace Basic
{

    /////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////【二】模型类的组合及计算////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////
    public class modelCalculate //整个模型计算的类
    {
        ///////////////////////////////////////////////////////////////////////////////
        /////////////////////////【2.1】模型的公共参数实例化///////////////////////////
        ///////////////////////////////////////////////////////////////////////////////

        public class CommInfo  // 公共参数类
        {

            public TechPara_DLL mTechPara_DLL = new TechPara_DLL();
            public ModPara_DLL mModPara_DLL = new ModPara_DLL();
            public TC_in_DLL mTC_in_DLL = new TC_in_DLL();
            public TC_out_DLL mTC_out_DLL = new TC_out_DLL();

        }
        public CommInfo mCommInfo;
        public modelCalculate()
        {
            mCommInfo = new CommInfo();
        }
        //接收接口过来的工艺参数和模型参数，进行参数初始化

        //烧结的总模型
        public void SNTModel()
        {
            //1、生成标准型的输入参数形式
            StdInput();

            //2、OPS模型
            OPSModel();


        }





        public void StdInput()
        {
            try
            {

                //线性规划标准型相关的参数初始化
                mCommInfo.mModPara_DLL.n = (ModPara_DLL.n0 + 1) * 3;
                mCommInfo.mModPara_DLL.nclin = mCommInfo.mModPara_DLL.n;
                mCommInfo.mModPara_DLL.cvec = new double[mCommInfo.mModPara_DLL.n];
                mCommInfo.mModPara_DLL.a = new double[mCommInfo.mModPara_DLL.n, mCommInfo.mModPara_DLL.n];
                mCommInfo.mModPara_DLL.bl = new double[2 * mCommInfo.mModPara_DLL.n];
                mCommInfo.mModPara_DLL.bu = new double[2 * mCommInfo.mModPara_DLL.n];
                mCommInfo.mModPara_DLL.x = new double[mCommInfo.mModPara_DLL.n];
                mCommInfo.mModPara_DLL.objective = 0;


                //1、经济系数，变量X的次序：每个用户的高焦转，最后是放散的高焦转
                for (int i = 0; i < ModPara_DLL.n0; i++)
                {
                    mCommInfo.mModPara_DLL.cvec[3*i]=-1*mCommInfo.mModPara_DLL.mW_G[i];
                    mCommInfo.mModPara_DLL.cvec[3 * i + 1] = -1 * mCommInfo.mModPara_DLL.mW_J[i];
                    mCommInfo.mModPara_DLL.cvec[3 * i + 2] = -1 * mCommInfo.mModPara_DLL.mW_Z[i];
                }
                mCommInfo.mModPara_DLL.cvec[3 * ModPara_DLL.n0] = -1 * mCommInfo.mModPara_DLL.mW_GF;
                mCommInfo.mModPara_DLL.cvec[3 * ModPara_DLL.n0 + 1] = -1 * mCommInfo.mModPara_DLL.mW_JF;
                mCommInfo.mModPara_DLL.cvec[3 * ModPara_DLL.n0 + 2] = -1 * mCommInfo.mModPara_DLL.mW_ZF;

               

                //2、bl，约束下限，n+nclin个
                ////(1)单个变量的约束下限，共n个
                for (int i = 0; i < ModPara_DLL.n0; i++)
                {
                    mCommInfo.mModPara_DLL.bl[3 * i] = mCommInfo.mModPara_DLL.mXmin_G[i];
                    mCommInfo.mModPara_DLL.bl[3 * i + 1] = mCommInfo.mModPara_DLL.mXmin_J[i];
                    mCommInfo.mModPara_DLL.bl[3 * i + 2] = mCommInfo.mModPara_DLL.mXmin_Z[i];
                }
                mCommInfo.mModPara_DLL.bl[3 * ModPara_DLL.n0] = mCommInfo.mModPara_DLL.mXmin_GF;
                mCommInfo.mModPara_DLL.bl[3 * ModPara_DLL.n0 + 1] = mCommInfo.mModPara_DLL.mXmin_JF;
                mCommInfo.mModPara_DLL.bl[3 * ModPara_DLL.n0 + 2] = mCommInfo.mModPara_DLL.mXmin_ZF;
                ////(2)每个用户的热值约束下限，共2n0个
                for (int i = mCommInfo.mModPara_DLL.n; i < mCommInfo.mModPara_DLL.n+2 * ModPara_DLL.n0; i++)
                {
                    mCommInfo.mModPara_DLL.bl[i] = -1.0E+25;    //注意：对于没有热值约束的用户，bl还是取值为负无穷，因为其A矩阵中的系数全为0，所以负无穷的值无影响；有热值约束的用户，l是负无穷，u是0。
                }
                ////(3)每个用户的压力约束下限，共n0个
                for (int i =0; i < ModPara_DLL.n0; i++)
                {
                    mCommInfo.mModPara_DLL.bl[mCommInfo.mModPara_DLL.n + 2 * ModPara_DLL.n0+i] = mCommInfo.mModPara_DLL.mQmin[i];
                }

                //(4)柜位约束下限，共3个 
                mCommInfo.mModPara_DLL.bl[2 * mCommInfo.mModPara_DLL.n - 3] = mCommInfo.mTC_in_DLL.mY_G * (1 - mCommInfo.mTechPara_DLL.mLossG) + mCommInfo.mTC_in_DLL.mVnow_G - mCommInfo.mTechPara_DLL.mVGhigh * 10000;
                mCommInfo.mModPara_DLL.bl[2 * mCommInfo.mModPara_DLL.n - 2] = mCommInfo.mTC_in_DLL.mY_J * (1 - mCommInfo.mTechPara_DLL.mLossJ) + mCommInfo.mTC_in_DLL.mVnow_J - mCommInfo.mTechPara_DLL.mVJhigh * 10000;
                mCommInfo.mModPara_DLL.bl[2 * mCommInfo.mModPara_DLL.n - 1] = mCommInfo.mTC_in_DLL.mY_Z * (1 - mCommInfo.mTechPara_DLL.mLossZ) + mCommInfo.mTC_in_DLL.mVnow_Z - mCommInfo.mTechPara_DLL.mVZhigh * 10000;

                //3、bu，约束上限，n+nclin个
                ////(1)单个变量的约束上限，共n个
                for (int i = 0; i < ModPara_DLL.n0; i++)
                {
                    mCommInfo.mModPara_DLL.bu[3 * i] = mCommInfo.mModPara_DLL.mXmax_G[i];
                    mCommInfo.mModPara_DLL.bu[3 * i + 1] = mCommInfo.mModPara_DLL.mXmax_J[i];
                    mCommInfo.mModPara_DLL.bu[3 * i + 2] = mCommInfo.mModPara_DLL.mXmax_Z[i];
                }
                mCommInfo.mModPara_DLL.bu[3 * ModPara_DLL.n0] = mCommInfo.mModPara_DLL.mXmax_GF;
                mCommInfo.mModPara_DLL.bu[3 * ModPara_DLL.n0 + 1] = mCommInfo.mModPara_DLL.mXmax_JF;
                mCommInfo.mModPara_DLL.bu[3 * ModPara_DLL.n0 + 2] = mCommInfo.mModPara_DLL.mXmax_ZF;
                ////(2)每个用户的热值约束上限，共2n0个
                for (int i = mCommInfo.mModPara_DLL.n; i < mCommInfo.mModPara_DLL.n+2 * ModPara_DLL.n0; i++)
                {
                    mCommInfo.mModPara_DLL.bu[i] = 0;  //注意：对于没有热值约束的用户，bu还是取值为0，因为其A矩阵中的系数全为0，所以负无穷的值无影响；有热值约束的用户，l是负无穷，u是0。
                }
                ////(3)每个用户的压力约束上限，共n0个
                for (int i = 0; i < ModPara_DLL.n0; i++)
                {
                    mCommInfo.mModPara_DLL.bu[mCommInfo.mModPara_DLL.n + 2 * ModPara_DLL.n0 + i] = mCommInfo.mModPara_DLL.mQmax[i];
                }

                ////(4)柜位约束上限，共3个 
                mCommInfo.mModPara_DLL.bu[2 * mCommInfo.mModPara_DLL.n - 3] = mCommInfo.mTC_in_DLL.mY_G * (1 - mCommInfo.mTechPara_DLL.mLossG) + mCommInfo.mTC_in_DLL.mVnow_G - mCommInfo.mTechPara_DLL.mVGlow*10000;
                mCommInfo.mModPara_DLL.bu[2 * mCommInfo.mModPara_DLL.n - 2] = mCommInfo.mTC_in_DLL.mY_J * (1 - mCommInfo.mTechPara_DLL.mLossJ) + mCommInfo.mTC_in_DLL.mVnow_J - mCommInfo.mTechPara_DLL.mVJlow * 10000;
                mCommInfo.mModPara_DLL.bu[2 * mCommInfo.mModPara_DLL.n - 1] = mCommInfo.mTC_in_DLL.mY_Z * (1 - mCommInfo.mTechPara_DLL.mLossZ) + mCommInfo.mTC_in_DLL.mVnow_Z - mCommInfo.mTechPara_DLL.mVZlow * 10000;

                //4、A，约束矩阵，n*n个
                //(1)初始化全为0
                for (int i = 0; i < mCommInfo.mModPara_DLL.n; i++)
                    for (int j = 0; j < mCommInfo.mModPara_DLL.n; j++)
                        mCommInfo.mModPara_DLL.a[i,j]=0;

                //(2)热值约束的部分，一共2*n0行
                for (int i = 0; i < ModPara_DLL.n0; i++)
                {
                    if (mCommInfo.mModPara_DLL.mRmax[i] == 1.0E+25)
                    {
                        mCommInfo.mModPara_DLL.a[2 * i, 3 * i] = 0;     //注意：对于没有热值约束的用户，给A矩阵中的行全赋值为0，使其失去约束作用
                        mCommInfo.mModPara_DLL.a[2 * i, 3 * i + 1] = 0;
                        mCommInfo.mModPara_DLL.a[2 * i, 3 * i + 2] = 0;
                    }
                    else
                    {
                        mCommInfo.mModPara_DLL.a[2 * i, 3 * i] = mCommInfo.mTC_in_DLL.mR_G - mCommInfo.mModPara_DLL.mRmax[i];
                        mCommInfo.mModPara_DLL.a[2 * i, 3 * i + 1] = mCommInfo.mTC_in_DLL.mR_J - mCommInfo.mModPara_DLL.mRmax[i];
                        mCommInfo.mModPara_DLL.a[2 * i, 3 * i + 2] = mCommInfo.mTC_in_DLL.mR_Z - mCommInfo.mModPara_DLL.mRmax[i];
                    }

                    if (mCommInfo.mModPara_DLL.mRmin[i] == 0)
                    {
                        mCommInfo.mModPara_DLL.a[2 * i + 1, 3 * i] = 0;
                        mCommInfo.mModPara_DLL.a[2 * i + 1, 3 * i + 1] = 0;
                        mCommInfo.mModPara_DLL.a[2 * i + 1, 3 * i + 2] = 0;                       
                    }
                    else
                    {

                        mCommInfo.mModPara_DLL.a[2 * i + 1, 3 * i] = mCommInfo.mModPara_DLL.mRmin[i] - mCommInfo.mTC_in_DLL.mR_G;
                        mCommInfo.mModPara_DLL.a[2 * i + 1, 3 * i + 1] = mCommInfo.mModPara_DLL.mRmin[i] - mCommInfo.mTC_in_DLL.mR_J;
                        mCommInfo.mModPara_DLL.a[2 * i + 1, 3 * i + 2] = mCommInfo.mModPara_DLL.mRmin[i] - mCommInfo.mTC_in_DLL.mR_Z;
                    }


                }

                //(3)压力约束的部分，一共n0行
                for (int i = 2*ModPara_DLL.n0; i < 3*ModPara_DLL.n0; i++)
                {
                    //注意：对于没有压力约束的用户，A矩阵中的系数还是取1，和有约束的一样；只是bl取0，bu取正无穷。
                    mCommInfo.mModPara_DLL.a[i, 3 * (i - 2 * ModPara_DLL.n0)] = 1;
                    mCommInfo.mModPara_DLL.a[i, 3 * (i - 2 * ModPara_DLL.n0) + 1] = 1;
                    mCommInfo.mModPara_DLL.a[i, 3 * (i - 2 * ModPara_DLL.n0) + 2] = 1;                   
                }

                //(4)柜位约束的部分，一共3行
                for (int i = 0; i < mCommInfo.mModPara_DLL.n; i++)
                {
                    mCommInfo.mModPara_DLL.a[3 * ModPara_DLL.n0, 3 * i] = 1;
                    mCommInfo.mModPara_DLL.a[3 * ModPara_DLL.n0+1, 3 * i + 1] = 1;
                    mCommInfo.mModPara_DLL.a[3 * ModPara_DLL.n0+2, 3 * i + 2] = 1;
                }
               
 
            }

            catch (Exception ex)
            {
                //string errStr = DateTime.Now.ToString() + ":Track_Load-->" + ex.Message;
                //FileBlog.WriteFile(errStr);

                mCommInfo.mTC_out_DLL.mFail_Flag = 1;
                mCommInfo.mTC_out_DLL.mErr_Message = "StdInput运行有误";
                return;

            }
 
        }

        public void OPSModel()
        {
           
            int iter;
            double[] ax = new double[mCommInfo.mModPara_DLL.nclin];
            double[] clamda = new double[mCommInfo.mModPara_DLL.n + mCommInfo.mModPara_DLL.nclin];
            int[] istate = new int[mCommInfo.mModPara_DLL.n + mCommInfo.mModPara_DLL.nclin];//目标函数的初始估计
            E04.e04mfOptions options = new E04.e04mfOptions();
        

            try
            {
                E04.e04mf(mCommInfo.mModPara_DLL.n, mCommInfo.mModPara_DLL.nclin, mCommInfo.mModPara_DLL.a, mCommInfo.mModPara_DLL.bl, mCommInfo.mModPara_DLL.bu, mCommInfo.mModPara_DLL.cvec, istate, mCommInfo.mModPara_DLL.x, out iter, out mCommInfo.mModPara_DLL.objective, ax, clamda, options, out mCommInfo.mTC_out_DLL.mFail_Flag);

                
                for (int i = 0; i < ModPara_DLL.n0; i++)
                {
                    mCommInfo.mTC_out_DLL.mx_G[i] = mCommInfo.mModPara_DLL.x[3 * i];
                    mCommInfo.mTC_out_DLL.mx_J[i] = mCommInfo.mModPara_DLL.x[3 * i + 1];
                    mCommInfo.mTC_out_DLL.mx_Z[i] = mCommInfo.mModPara_DLL.x[3 * i + 2];

                }
                mCommInfo.mTC_out_DLL.mxF_G = mCommInfo.mModPara_DLL.x[3 * ModPara_DLL.n0];
                mCommInfo.mTC_out_DLL.mxF_J = mCommInfo.mModPara_DLL.x[3 * ModPara_DLL.n0 + 1];
                mCommInfo.mTC_out_DLL.mxF_Z = mCommInfo.mModPara_DLL.x[3 * ModPara_DLL.n0 + 2];
                 
                

           
            }

            catch (Exception ex)
            {
                //string errStr = DateTime.Now.ToString() + ":Track_Load-->" + ex.Message;
                //FileBlog.WriteFile(errStr);

                mCommInfo.mTC_out_DLL.mFail_Flag = 1;
                mCommInfo.mTC_out_DLL.mErr_Message = "OPSModel运行有误";
                return;
            }


        }
    
    }



}
   

