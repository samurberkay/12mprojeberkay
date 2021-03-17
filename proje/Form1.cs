using ClosedXML.Excel;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace proje
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        SqlConnection connection = new SqlConnection("Server=LAPTOP-7NIKLBRU; Database=Test;trusted_connection=true");
        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void btnmalkodu_Click(object sender, EventArgs e)
        {
            try
            {
                DateTime blt = Convert.ToDateTime(TxtBaslangic.Text);
                int DateToIntbsl = Convert.ToInt32(blt.ToOADate());
                DateTime btt = Convert.ToDateTime(TxtBitis.Text);
                int DateToIntbts = Convert.ToInt32(btt.ToOADate());
                MessageBox.Show(DateToIntbsl.ToString());
                MessageBox.Show(DateToIntbts.ToString());

                DataTable dt = new DataTable();
                SqlConnection myConn = new SqlConnection("Server=LAPTOP-7NIKLBRU; Database=Test;trusted_connection=true");
                myConn.Open();

                SqlCommand myCmd = new SqlCommand("usp_STISelect", myConn);
                myCmd.CommandType = CommandType.StoredProcedure;
                myCmd.Parameters.Add("@MalKodu", SqlDbType.VarChar).Value = TxtMalKodu.Text;
                myCmd.Parameters.Add("@BaslangicTarihi", SqlDbType.Int).Value = DateToIntbsl;
                myCmd.Parameters.Add("@BitisTarihi", SqlDbType.Int).Value = DateToIntbts;

                SqlDataAdapter dAdapter = new SqlDataAdapter(myCmd);


                DataSet ds = new DataSet();


                dAdapter.Fill(ds);


                dataGridView1.ReadOnly = true;


                dataGridView1.DataSource = ds.Tables[0];
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }


        }

        private void btnMalAdi_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = new DataTable();
                SqlConnection myConn = new SqlConnection("Server=LAPTOP-7NIKLBRU; Database=Test;trusted_connection=true");
                myConn.Open();

                SqlCommand myCmd = new SqlCommand("usp_STKSelect", myConn);
                myCmd.CommandType = CommandType.StoredProcedure;
                myCmd.Parameters.Add("@MalAdi", SqlDbType.VarChar).Value = TxtMalAdi.Text;


                SqlDataAdapter dAdapter = new SqlDataAdapter(myCmd);


                DataSet ds = new DataSet();


                dAdapter.Fill(ds);


                dataGridView1.ReadOnly = true;


                dataGridView1.DataSource = ds.Tables[0];
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }
        }

        private void btnExcel_Click(object sender, EventArgs e)
        {
            try
            {
                if (dataGridView1.Rows.Count > 0)
                {
                    try
                    {
                        DataTable dt = new DataTable();
                        foreach (DataGridViewColumn col in dataGridView1.Columns)
                        {
                            dt.Columns.Add(col.HeaderText, col.ValueType);
                        }
                        int count = 0;
                        foreach (DataGridViewRow row in dataGridView1.Rows)
                        {
                            if (count < dataGridView1.Rows.Count - 1)
                            {
                                dt.Rows.Add();
                                foreach (DataGridViewCell cell in row.Cells)
                                {
                                    dt.Rows[dt.Rows.Count - 1][cell.ColumnIndex] = cell.Value.ToString();
                                }
                            }
                            count++;
                        }
                        
                        StreamWriter wr = new StreamWriter(@"C:\\temp\\Book1.xls");
                        
                        for (int i = 0; i < dt.Columns.Count; i++)
                        {
                            wr.Write(dt.Columns[i].ToString().ToUpper() + "\t");
                        }
                        wr.WriteLine();
                        
                        for (int i = 0; i < (dt.Rows.Count); i++)
                        {
                            for (int j = 0; j < dt.Columns.Count; j++)
                            {
                                if (dt.Rows[i][j] != null)
                                {
                                    wr.Write(Convert.ToString(dt.Rows[i][j]) + "\t");
                                }
                                else
                                {
                                    wr.Write("\t");
                                }
                            }
                            wr.WriteLine();
                        }
                        wr.Close();
                        label1.Text = "Data Exported Successfully";
                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }
        }
    }
}