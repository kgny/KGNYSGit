using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Basic;
using System.IO;
using System.Text;
namespace QCA
{
    public partial class ModelCake : System.Web.UI.Page
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
                    if (Session["UserName"] == null)
                    {
                        ViewState["UserName"] = "UserName";
                    }
                    else
                    {
                        ViewState["UserName"] = Session["UserName"].ToString();
                    }
                    /////////////////////////////
                    UpdateFormView();
                }
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        ModelCake:Page_Load          " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        private void UpdateFormView()
        {
            try
            {
                if (ViewState["UserName"] == null)
                    return;
                string str;
                str = "select * from tb_TheoryCake where 项目编号 = '" + ViewState["UserName"].ToString() + "' order by 条目编号";
                conn.GetTable(str);
                //
                if(conn.dt.Rows.Count>0)
                {
                    con1.Text = (Convert.ToDouble(conn.dt.Rows[0][2].ToString()) * Convert.ToDouble(conn.dt.Rows[2][2].ToString())).ToString("0.00");
                    con2.Text = (Convert.ToDouble(conn.dt.Rows[1][2].ToString()) * Convert.ToDouble(conn.dt.Rows[3][2].ToString())).ToString("0.00");
                    con3.Text = (Convert.ToDouble(conn.dt.Rows[4][2].ToString()) * Convert.ToDouble(conn.dt.Rows[5][2].ToString())).ToString("0.00");
                    con4.Text = (Convert.ToDouble(conn.dt.Rows[13][2].ToString()) * Convert.ToDouble(conn.dt.Rows[14][2].ToString()) * (1 + Convert.ToDouble(conn.dt.Rows[15][2].ToString()) / 100) * Convert.ToDouble(conn.dt.Rows[6][2].ToString()) * 60 * Convert.ToDouble(conn.dt.Rows[7][2].ToString()) * Convert.ToDouble(conn.dt.Rows[9][2].ToString()) / (3600 * 1000 * 276 * Convert.ToDouble(conn.dt.Rows[8][2].ToString()) / 100)).ToString("0.00");
                    con5.Text = (Convert.ToDouble(conn.dt.Rows[13][2].ToString()) * Convert.ToDouble(conn.dt.Rows[14][2].ToString()) * Convert.ToDouble(conn.dt.Rows[10][2].ToString()) * Convert.ToDouble(conn.dt.Rows[11][2].ToString()) * (1 + Convert.ToDouble(conn.dt.Rows[15][2].ToString()) / 100) / (3600 * 1000 * 276 * Convert.ToDouble(conn.dt.Rows[12][2].ToString()) / 100)).ToString("0.00");
                    con6.Text = (Convert.ToDouble(conn.dt.Rows[16][2].ToString()) * Convert.ToDouble(conn.dt.Rows[17][2].ToString()) * ((Convert.ToDouble(conn.dt.Rows[19][2].ToString()) + 273) - (Convert.ToDouble(conn.dt.Rows[18][2].ToString()) + 273)) / (Convert.ToDouble(conn.dt.Rows[20][2].ToString()) / 100)).ToString("0.00");
                    con7.Text = (Convert.ToDouble(conn.dt.Rows[21][2].ToString()) * Convert.ToDouble(conn.dt.Rows[41][2].ToString()) * 1000).ToString("0.00");
                    con8.Text=(Convert.ToDouble(conn.dt.Rows[23][2].ToString())*Convert.ToDouble(conn.dt.Rows[40][2].ToString())*1000).ToString("0.00");
                    con9.Text = (Convert.ToDouble(conn.dt.Rows[24][2].ToString()) * Convert.ToDouble(conn.dt.Rows[38][2].ToString()) * 1000).ToString("0.00");
                    con10.Text = (Convert.ToDouble(con1.Text) + Convert.ToDouble(con2.Text) + Convert.ToDouble(con3.Text) + Convert.ToDouble(con4.Text) + Convert.ToDouble(con5.Text) + Convert.ToDouble(con6.Text) + Convert.ToDouble(con7.Text) + Convert.ToDouble(con8.Text) + Convert.ToDouble(con9.Text)).ToString("0.00");
                    con11.Text = (Convert.ToDouble(conn.dt.Rows[25][2].ToString()) * Convert.ToDouble(conn.dt.Rows[26][2].ToString()) * ((Convert.ToDouble(conn.dt.Rows[27][2].ToString()) + 273) - (Convert.ToDouble(conn.dt.Rows[28][2].ToString()) + 273)) * Convert.ToDouble(conn.dt.Rows[29][2].ToString())/ 100).ToString("0.00");
                    con12.Text = (Convert.ToDouble(conn.dt.Rows[30][2].ToString()) * Convert.ToDouble(conn.dt.Rows[31][2].ToString()) * Convert.ToDouble(conn.dt.Rows[32][2].ToString()) * Convert.ToDouble(conn.dt.Rows[33][2].ToString()) / 100).ToString("0.00");
                    con13.Text = (Convert.ToDouble(con11.Text) + Convert.ToDouble(con12.Text)).ToString("0.00");
                    con14.Text = (Convert.ToDouble(con10.Text) - Convert.ToDouble(con13.Text)).ToString("0.00");
                }
                str = "select * from tb_ActualCake where 项目编号 = '" + ViewState["UserName"].ToString() + "' order by 条目编号";
                conn.GetTable(str);
                //
                if (conn.dt.Rows.Count > 0)
                {
                    con15.Text = (Convert.ToDouble(conn.dt.Rows[0][2].ToString()) * Convert.ToDouble(conn.dt.Rows[2][2].ToString())).ToString("0.00");
                    con16.Text = (Convert.ToDouble(conn.dt.Rows[4][2].ToString()) * Convert.ToDouble(conn.dt.Rows[5][2].ToString())).ToString("0.00");
                    con17.Text = (Convert.ToDouble(conn.dt.Rows[1][2].ToString()) * Convert.ToDouble(conn.dt.Rows[3][2].ToString())).ToString("0.00");
                    con18.Text = (Convert.ToDouble(conn.dt.Rows[10][2].ToString()) * Convert.ToDouble(conn.dt.Rows[14][2].ToString()) * 1000).ToString("0.00");
                    con19.Text = (Convert.ToDouble(conn.dt.Rows[7][2].ToString()) * Convert.ToDouble(conn.dt.Rows[19][2].ToString()) * 1000).ToString("0.00");
                    con20.Text = (Convert.ToDouble(conn.dt.Rows[6][2].ToString()) * Convert.ToDouble(conn.dt.Rows[18][2].ToString()) * 1000).ToString("0.00");
                    con21.Text = (Convert.ToDouble(conn.dt.Rows[8][2].ToString()) * Convert.ToDouble(conn.dt.Rows[17][2].ToString()) * 1000).ToString("0.00");
                    con22.Text = (Convert.ToDouble(conn.dt.Rows[9][2].ToString()) * Convert.ToDouble(conn.dt.Rows[15][2].ToString()) * 1000).ToString("0.00");
                    con23.Text = (Convert.ToDouble(con15.Text) + Convert.ToDouble(con16.Text) + Convert.ToDouble(con17.Text) + Convert.ToDouble(con18.Text) + Convert.ToDouble(con19.Text) + Convert.ToDouble(con20.Text) + Convert.ToDouble(con21.Text) + Convert.ToDouble(con22.Text)).ToString("0.00");
                    con24.Text = (Convert.ToDouble(conn.dt.Rows[11][2].ToString()) * Convert.ToDouble(conn.dt.Rows[14][2].ToString()) * 1000).ToString("0.00");
                    con25.Text = (0).ToString("0.00");
                    con26.Text = (Convert.ToDouble(con24.Text) + Convert.ToDouble(con25.Text)).ToString("0.00");
                    con27.Text = (Convert.ToDouble(con23.Text) - Convert.ToDouble(con26.Text)).ToString("0.00");
                }

                con70.Text= (Convert.ToDouble(con28.Text) + Convert.ToDouble(con34.Text) + Convert.ToDouble(con40.Text) + Convert.ToDouble(con46.Text) + Convert.ToDouble(con52.Text) + Convert.ToDouble(con58.Text) + Convert.ToDouble(con64.Text)).ToString("0.00");
                con88.Text=(Convert.ToDouble(con76.Text) + Convert.ToDouble(con82.Text)).ToString("0.00");
                con94.Text = (Convert.ToDouble(con70.Text) - Convert.ToDouble(con88.Text)).ToString("0.00");

                con30.Text = (Convert.ToDouble(con1.Text) / 29.27 / 1000).ToString("0.00");
                con36.Text = (Convert.ToDouble(con2.Text) / 29.27 / 1000).ToString("0.00");
                con42.Text = (Convert.ToDouble(con3.Text) / 29.27 / 1000).ToString("0.00");
                con48.Text = ((Convert.ToDouble(con4.Text)+Convert.ToDouble(con5.Text)) / 29.27 / 1000).ToString("0.00");
                con54.Text = (Convert.ToDouble(con8.Text) / 29.27 / 1000).ToString("0.00");
                con60.Text = ((Convert.ToDouble(con6.Text) + Convert.ToDouble(con9.Text)) / 29.27 / 1000).ToString("0.00");
                con66.Text = (Convert.ToDouble(con7.Text)/ 29.27 / 1000).ToString("0.00");
                con72.Text = (Convert.ToDouble(con30.Text) + Convert.ToDouble(con36.Text) + Convert.ToDouble(con42.Text) + Convert.ToDouble(con48.Text) + Convert.ToDouble(con54.Text) + Convert.ToDouble(con60.Text) + Convert.ToDouble(con66.Text)).ToString("0.00");
                con78.Text = (Convert.ToDouble(con11.Text) / 29.27 / 1000).ToString("0.00");
                con84.Text = (Convert.ToDouble(con12.Text) / 29.27 / 1000).ToString("0.00");
                con90.Text = (Convert.ToDouble(con78.Text) + Convert.ToDouble(con84.Text)).ToString("0.00");
                con96.Text = (Convert.ToDouble(con72.Text) - Convert.ToDouble(con90.Text)).ToString("0.00");

                con32.Text = (Convert.ToDouble(con15.Text) / 29.27 / 1000).ToString("0.00");
                con38.Text = (Convert.ToDouble(con17.Text) / 29.27 / 1000).ToString("0.00");
                con44.Text = (Convert.ToDouble(con16.Text) / 29.27 / 1000).ToString("0.00");
                con50.Text = (Convert.ToDouble(con18.Text) / 29.27 / 1000).ToString("0.00");
                con56.Text = (Convert.ToDouble(con21.Text) / 29.27 / 1000).ToString("0.00");
                con62.Text = (Convert.ToDouble(con22.Text) / 29.27 / 1000).ToString("0.00");
                con68.Text = (Convert.ToDouble(con20.Text) / 29.27 / 1000).ToString("0.00");
                con74.Text = (Convert.ToDouble(con32.Text) + Convert.ToDouble(con38.Text) + Convert.ToDouble(con44.Text) + Convert.ToDouble(con50.Text) + Convert.ToDouble(con56.Text) + Convert.ToDouble(con62.Text) + Convert.ToDouble(con68.Text)).ToString("0.00");
                con80.Text = (0/ 29.27 / 1000).ToString("0.00");
                con86.Text = (Convert.ToDouble(con24.Text) / 29.27 / 1000).ToString("0.00");
                con92.Text = (Convert.ToDouble(con80.Text) + Convert.ToDouble(con86.Text)).ToString("0.00");
                con98.Text = (Convert.ToDouble(con74.Text) - Convert.ToDouble(con92.Text)).ToString("0.00");
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "        ModelCake:UpdateFormView()         " + ex.Source.ToString() + "         " + ex.Message;
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
                string EMseg = DateTime.Now.ToString() + "        ModelCake:Page_UnLoad          " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
        protected void ASPxButton_Confirm_Click(object sender, EventArgs e)
        {
            try
            {
                UpdateFormView();
            }
            catch (Exception ex)
            {
                string EMseg = DateTime.Now.ToString() + "          ModelCake:ASPxButton_Confirm_Click  " + ex.Source.ToString() + "         " + ex.Message;
                FileBlog.WriteFile(EMseg);
            }
        }
    }
}