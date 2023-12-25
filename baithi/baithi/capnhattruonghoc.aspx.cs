using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace baithi
{
    public partial class CapNhat : System.Web.UI.Page
    {
        public static string chuoiKN = "Data Source=LAPTOP-7DS1CFED\\SQLEXPRESS;Initial Catalog=QL_SINHVIEN;Integrated Security=True";
        public static SqlConnection cn = new SqlConnection(chuoiKN);
        protected void Page_Load(object sender, EventArgs e)
        {
            HienThi();
        }
        void ThucThi(string caulenh)
        {
            SqlCommand cm = new SqlCommand(caulenh, cn);
            cn.Open();
            cm.ExecuteNonQuery();
            cn.Close();
        }
        void HienThi()
        {
            try
            {
                string chuoiSQL = "select * from tbl_truong ";
                SqlDataAdapter da = new SqlDataAdapter(chuoiSQL, cn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch (Exception){
                Label1.Text = "Lỗi kết nối";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string chuoiSQL = "Select * from tbl_truong";
            SqlDataAdapter da = new SqlDataAdapter(chuoiSQL, cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            int dong = GridView1.SelectedIndex;
            int trang = GridView1.PageIndex;
            txtMaTH.Text = dt.Rows[trang * 3 + dong][0].ToString();
            txtTenTH.Text = dt.Rows[trang * 3 + dong][1].ToString();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            txtMaTH.Text = "";
            txtTenTH.Text = "";
        }

        protected void btnluu_Click(object sender, EventArgs e)
        {
            string chuoiSQL = "Insert into tbl_truong values (N'"+txtMaTH.Text+"',N'"+txtTenTH.Text+"')";
            ThucThi(chuoiSQL);
            HienThi();
        }

        protected void btnxoa_Click(object sender, EventArgs e)
        {

            string chuoiSQL = "Delete tbl_truong where MaTruong = '"+txtMaTH.Text+"'";
            ThucThi(chuoiSQL);
            HienThi();
            txtMaTH.Text = "";
            txtTenTH.Text = "";
        }

        protected void btnsua_Click(object sender, EventArgs e)
        {

            string chuoiSQL = "Update tbl_truong set TenTruong =N'" + txtTenTH.Text + "' where MaTruong= '" + txtMaTH.Text + "'";
            ThucThi(chuoiSQL);
            HienThi();
        }
    }
}