﻿namespace ProyectoAgronegocios.Estadisticas.Forms
{
    partial class frmEstVentasEmpleados
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.rpvVentasEmpleados = new Microsoft.Reporting.WinForms.ReportViewer();
            this.btnCerrar = new System.Windows.Forms.Button();
            this.btnGrafico = new System.Windows.Forms.Button();
            this.lblHasta = new System.Windows.Forms.Label();
            this.lblDesde = new System.Windows.Forms.Label();
            this.dtpHasta = new System.Windows.Forms.DateTimePicker();
            this.dtpDesde = new System.Windows.Forms.DateTimePicker();
            this.SuspendLayout();
            // 
            // rpvVentasEmpleados
            // 
            this.rpvVentasEmpleados.LocalReport.ReportEmbeddedResource = "ProyectoAgronegocios.Estadisticas.EstVentasEmpleado.rdlc";
            this.rpvVentasEmpleados.Location = new System.Drawing.Point(-1, -1);
            this.rpvVentasEmpleados.Name = "rpvVentasEmpleados";
            this.rpvVentasEmpleados.ServerReport.BearerToken = null;
            this.rpvVentasEmpleados.Size = new System.Drawing.Size(686, 672);
            this.rpvVentasEmpleados.TabIndex = 0;
            // 
            // btnCerrar
            // 
            this.btnCerrar.Location = new System.Drawing.Point(541, 731);
            this.btnCerrar.Name = "btnCerrar";
            this.btnCerrar.Size = new System.Drawing.Size(102, 23);
            this.btnCerrar.TabIndex = 58;
            this.btnCerrar.Text = "Cerrar";
            this.btnCerrar.UseVisualStyleBackColor = true;
            this.btnCerrar.Click += new System.EventHandler(this.btnCerrar_Click);
            // 
            // btnGrafico
            // 
            this.btnGrafico.Location = new System.Drawing.Point(433, 731);
            this.btnGrafico.Name = "btnGrafico";
            this.btnGrafico.Size = new System.Drawing.Size(102, 23);
            this.btnGrafico.TabIndex = 57;
            this.btnGrafico.Text = "Gráfico";
            this.btnGrafico.UseVisualStyleBackColor = true;
            this.btnGrafico.Click += new System.EventHandler(this.btnGrafico_Click);
            // 
            // lblHasta
            // 
            this.lblHasta.AutoSize = true;
            this.lblHasta.Location = new System.Drawing.Point(48, 755);
            this.lblHasta.Name = "lblHasta";
            this.lblHasta.Size = new System.Drawing.Size(38, 13);
            this.lblHasta.TabIndex = 56;
            this.lblHasta.Text = "Hasta:";
            // 
            // lblDesde
            // 
            this.lblDesde.AutoSize = true;
            this.lblDesde.Location = new System.Drawing.Point(48, 719);
            this.lblDesde.Name = "lblDesde";
            this.lblDesde.Size = new System.Drawing.Size(41, 13);
            this.lblDesde.TabIndex = 55;
            this.lblDesde.Text = "Desde:";
            // 
            // dtpHasta
            // 
            this.dtpHasta.Location = new System.Drawing.Point(95, 749);
            this.dtpHasta.Name = "dtpHasta";
            this.dtpHasta.Size = new System.Drawing.Size(200, 20);
            this.dtpHasta.TabIndex = 54;
            // 
            // dtpDesde
            // 
            this.dtpDesde.Location = new System.Drawing.Point(95, 713);
            this.dtpDesde.Name = "dtpDesde";
            this.dtpDesde.Size = new System.Drawing.Size(200, 20);
            this.dtpDesde.TabIndex = 53;
            // 
            // frmEstVentasEmpleados
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(685, 807);
            this.Controls.Add(this.btnCerrar);
            this.Controls.Add(this.btnGrafico);
            this.Controls.Add(this.lblHasta);
            this.Controls.Add(this.lblDesde);
            this.Controls.Add(this.dtpHasta);
            this.Controls.Add(this.dtpDesde);
            this.Controls.Add(this.rpvVentasEmpleados);
            this.Name = "frmEstVentasEmpleados";
            this.Text = "Estadistica de Recaudaciones de Empleados";
            this.Load += new System.EventHandler(this.frmEstVentasEmpleados_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer rpvVentasEmpleados;
        private System.Windows.Forms.Button btnCerrar;
        private System.Windows.Forms.Button btnGrafico;
        private System.Windows.Forms.Label lblHasta;
        private System.Windows.Forms.Label lblDesde;
        private System.Windows.Forms.DateTimePicker dtpHasta;
        private System.Windows.Forms.DateTimePicker dtpDesde;
    }
}