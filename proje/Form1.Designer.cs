namespace proje
{
    partial class Form1
    {
        /// <summary>
        ///Gerekli tasarımcı değişkeni.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///Kullanılan tüm kaynakları temizleyin.
        /// </summary>
        ///<param name="disposing">yönetilen kaynaklar dispose edilmeliyse doğru; aksi halde yanlış.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer üretilen kod

        /// <summary>
        /// Tasarımcı desteği için gerekli metot - bu metodun 
        ///içeriğini kod düzenleyici ile değiştirmeyin.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.TxtBaslangic = new System.Windows.Forms.TextBox();
            this.TxtBitis = new System.Windows.Forms.TextBox();
            this.TxtMalKodu = new System.Windows.Forms.TextBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.TxtMalAdi = new System.Windows.Forms.TextBox();
            this.btnmalkodu = new System.Windows.Forms.Button();
            this.btnMalAdi = new System.Windows.Forms.Button();
            this.btnExcel = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(106, 41);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(109, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Başlangıç Tarihi";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(109, 82);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(74, 17);
            this.label2.TabIndex = 1;
            this.label2.Text = "Bitiş Tarihi";
            // 
            // TxtBaslangic
            // 
            this.TxtBaslangic.Location = new System.Drawing.Point(231, 36);
            this.TxtBaslangic.Name = "TxtBaslangic";
            this.TxtBaslangic.Size = new System.Drawing.Size(100, 22);
            this.TxtBaslangic.TabIndex = 2;
            // 
            // TxtBitis
            // 
            this.TxtBitis.Location = new System.Drawing.Point(231, 77);
            this.TxtBitis.Name = "TxtBitis";
            this.TxtBitis.Size = new System.Drawing.Size(100, 22);
            this.TxtBitis.TabIndex = 3;
            // 
            // TxtMalKodu
            // 
            this.TxtMalKodu.Location = new System.Drawing.Point(109, 186);
            this.TxtMalKodu.Name = "TxtMalKodu";
            this.TxtMalKodu.Size = new System.Drawing.Size(192, 22);
            this.TxtMalKodu.TabIndex = 4;
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(109, 279);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(1165, 150);
            this.dataGridView1.TabIndex = 5;
            // 
            // TxtMalAdi
            // 
            this.TxtMalAdi.Location = new System.Drawing.Point(109, 226);
            this.TxtMalAdi.Name = "TxtMalAdi";
            this.TxtMalAdi.Size = new System.Drawing.Size(192, 22);
            this.TxtMalAdi.TabIndex = 7;
            // 
            // btnmalkodu
            // 
            this.btnmalkodu.Location = new System.Drawing.Point(374, 186);
            this.btnmalkodu.Name = "btnmalkodu";
            this.btnmalkodu.Size = new System.Drawing.Size(120, 23);
            this.btnmalkodu.TabIndex = 8;
            this.btnmalkodu.Text = "Mal Kodu İle Ara";
            this.btnmalkodu.UseVisualStyleBackColor = true;
            this.btnmalkodu.Click += new System.EventHandler(this.btnmalkodu_Click);
            // 
            // btnMalAdi
            // 
            this.btnMalAdi.Location = new System.Drawing.Point(374, 224);
            this.btnMalAdi.Name = "btnMalAdi";
            this.btnMalAdi.Size = new System.Drawing.Size(120, 23);
            this.btnMalAdi.TabIndex = 9;
            this.btnMalAdi.Text = "Mal Adı İle Ara";
            this.btnMalAdi.UseVisualStyleBackColor = true;
            this.btnMalAdi.Click += new System.EventHandler(this.btnMalAdi_Click);
            // 
            // btnExcel
            // 
            this.btnExcel.Location = new System.Drawing.Point(280, 465);
            this.btnExcel.Name = "btnExcel";
            this.btnExcel.Size = new System.Drawing.Size(157, 23);
            this.btnExcel.TabIndex = 10;
            this.btnExcel.Text = "Excel Aktar";
            this.btnExcel.UseVisualStyleBackColor = true;
            this.btnExcel.Click += new System.EventHandler(this.btnExcel_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1375, 537);
            this.Controls.Add(this.btnExcel);
            this.Controls.Add(this.btnMalAdi);
            this.Controls.Add(this.btnmalkodu);
            this.Controls.Add(this.TxtMalAdi);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.TxtMalKodu);
            this.Controls.Add(this.TxtBitis);
            this.Controls.Add(this.TxtBaslangic);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox TxtBaslangic;
        private System.Windows.Forms.TextBox TxtBitis;
        private System.Windows.Forms.TextBox TxtMalKodu;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.TextBox TxtMalAdi;
        private System.Windows.Forms.Button btnmalkodu;
        private System.Windows.Forms.Button btnMalAdi;
        private System.Windows.Forms.Button btnExcel;
    }
}

