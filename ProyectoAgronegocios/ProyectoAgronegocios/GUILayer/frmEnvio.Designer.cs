﻿namespace ProyectoAgronegocios.GUILayer
{
    partial class frmEnvio
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmEnvio));
            this.lblUsuarioLoguedo = new System.Windows.Forms.Label();
            this.lblRealCuil = new System.Windows.Forms.Label();
            this.lblDatoCuil = new System.Windows.Forms.Label();
            this.lblRealNomApe = new System.Windows.Forms.Label();
            this.lblDatoNomApe = new System.Windows.Forms.Label();
            this.lblCliente = new System.Windows.Forms.Label();
            this.btnBuscar = new System.Windows.Forms.Button();
            this.grpFiltros = new System.Windows.Forms.GroupBox();
            this.txtFilterCuil = new System.Windows.Forms.TextBox();
            this.lblFilterCuit = new System.Windows.Forms.Label();
            this.lblDatoRazonSocial = new System.Windows.Forms.Label();
            this.lblRealRazonSocial = new System.Windows.Forms.Label();
            this.dtgFacturas = new System.Windows.Forms.DataGridView();
            this.tipo_Factura = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.numero = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.fecha_Factura = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.total = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.empleado = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnRefrescar = new System.Windows.Forms.Button();
            this.btnDetalleFactura = new System.Windows.Forms.Button();
            this.dtpFechaEnvio = new System.Windows.Forms.DateTimePicker();
            this.lblFechaEnvio = new System.Windows.Forms.Label();
            this.lblDireccionEnvio = new System.Windows.Forms.Label();
            this.txtDireccionEnvio = new System.Windows.Forms.TextBox();
            this.lblProvincia = new System.Windows.Forms.Label();
            this.cboProvincia = new System.Windows.Forms.ComboBox();
            this.lblLocalidad = new System.Windows.Forms.Label();
            this.cboLocalidad = new System.Windows.Forms.ComboBox();
            this.lblBarrio = new System.Windows.Forms.Label();
            this.cboBarrio = new System.Windows.Forms.ComboBox();
            this.lblEmpresaTransporte = new System.Windows.Forms.Label();
            this.cboEmpresaTransporte = new System.Windows.Forms.ComboBox();
            this.btnRegistrarEnvio = new System.Windows.Forms.Button();
            this.btnSalir = new System.Windows.Forms.Button();
            this.btnCancelarEnvio = new System.Windows.Forms.Button();
            this.grbDatosEnvio = new System.Windows.Forms.GroupBox();
            this.grpFiltros.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgFacturas)).BeginInit();
            this.grbDatosEnvio.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblUsuarioLoguedo
            // 
            this.lblUsuarioLoguedo.AutoSize = true;
            this.lblUsuarioLoguedo.BackColor = System.Drawing.Color.Transparent;
            this.lblUsuarioLoguedo.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblUsuarioLoguedo.ForeColor = System.Drawing.Color.Black;
            this.lblUsuarioLoguedo.Location = new System.Drawing.Point(88, 40);
            this.lblUsuarioLoguedo.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblUsuarioLoguedo.Name = "lblUsuarioLoguedo";
            this.lblUsuarioLoguedo.Size = new System.Drawing.Size(203, 44);
            this.lblUsuarioLoguedo.TabIndex = 10;
            this.lblUsuarioLoguedo.Text = "Empleado:";
            // 
            // lblRealCuil
            // 
            this.lblRealCuil.AutoSize = true;
            this.lblRealCuil.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.lblRealCuil.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblRealCuil.ForeColor = System.Drawing.Color.White;
            this.lblRealCuil.Location = new System.Drawing.Point(1492, 198);
            this.lblRealCuil.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblRealCuil.Name = "lblRealCuil";
            this.lblRealCuil.Size = new System.Drawing.Size(188, 39);
            this.lblRealCuil.TabIndex = 15;
            this.lblRealCuil.Text = "_________";
            // 
            // lblDatoCuil
            // 
            this.lblDatoCuil.AutoSize = true;
            this.lblDatoCuil.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.lblDatoCuil.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDatoCuil.ForeColor = System.Drawing.Color.White;
            this.lblDatoCuil.Location = new System.Drawing.Point(1236, 198);
            this.lblDatoCuil.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblDatoCuil.Name = "lblDatoCuil";
            this.lblDatoCuil.Size = new System.Drawing.Size(222, 39);
            this.lblDatoCuil.TabIndex = 14;
            this.lblDatoCuil.Text = "CUIL o CUIT:";
            // 
            // lblRealNomApe
            // 
            this.lblRealNomApe.AutoSize = true;
            this.lblRealNomApe.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.lblRealNomApe.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblRealNomApe.ForeColor = System.Drawing.Color.White;
            this.lblRealNomApe.Location = new System.Drawing.Point(1492, 127);
            this.lblRealNomApe.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblRealNomApe.Name = "lblRealNomApe";
            this.lblRealNomApe.Size = new System.Drawing.Size(188, 39);
            this.lblRealNomApe.TabIndex = 13;
            this.lblRealNomApe.Text = "_________";
            // 
            // lblDatoNomApe
            // 
            this.lblDatoNomApe.AutoSize = true;
            this.lblDatoNomApe.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.lblDatoNomApe.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDatoNomApe.ForeColor = System.Drawing.Color.White;
            this.lblDatoNomApe.Location = new System.Drawing.Point(1152, 127);
            this.lblDatoNomApe.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblDatoNomApe.Name = "lblDatoNomApe";
            this.lblDatoNomApe.Size = new System.Drawing.Size(310, 39);
            this.lblDatoNomApe.TabIndex = 12;
            this.lblDatoNomApe.Text = "Nombre y Apellido:";
            // 
            // lblCliente
            // 
            this.lblCliente.AutoSize = true;
            this.lblCliente.BackColor = System.Drawing.Color.Transparent;
            this.lblCliente.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCliente.ForeColor = System.Drawing.Color.Black;
            this.lblCliente.Location = new System.Drawing.Point(1320, 40);
            this.lblCliente.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblCliente.Name = "lblCliente";
            this.lblCliente.Size = new System.Drawing.Size(139, 44);
            this.lblCliente.TabIndex = 11;
            this.lblCliente.Text = "Cliente";
            // 
            // btnBuscar
            // 
            this.btnBuscar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.btnBuscar.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F);
            this.btnBuscar.ForeColor = System.Drawing.Color.White;
            this.btnBuscar.Location = new System.Drawing.Point(660, 23);
            this.btnBuscar.Margin = new System.Windows.Forms.Padding(4);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(252, 62);
            this.btnBuscar.TabIndex = 17;
            this.btnBuscar.Text = "Buscar Cliente";
            this.btnBuscar.UseVisualStyleBackColor = false;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // grpFiltros
            // 
            this.grpFiltros.BackColor = System.Drawing.Color.Transparent;
            this.grpFiltros.Controls.Add(this.btnBuscar);
            this.grpFiltros.Controls.Add(this.txtFilterCuil);
            this.grpFiltros.Controls.Add(this.lblFilterCuit);
            this.grpFiltros.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grpFiltros.Location = new System.Drawing.Point(96, 102);
            this.grpFiltros.Margin = new System.Windows.Forms.Padding(4);
            this.grpFiltros.Name = "grpFiltros";
            this.grpFiltros.Padding = new System.Windows.Forms.Padding(4);
            this.grpFiltros.Size = new System.Drawing.Size(972, 110);
            this.grpFiltros.TabIndex = 16;
            this.grpFiltros.TabStop = false;
            this.grpFiltros.Text = "Filtros";
            // 
            // txtFilterCuil
            // 
            this.txtFilterCuil.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtFilterCuil.Location = new System.Drawing.Point(348, 31);
            this.txtFilterCuil.Margin = new System.Windows.Forms.Padding(4);
            this.txtFilterCuil.Name = "txtFilterCuil";
            this.txtFilterCuil.Size = new System.Drawing.Size(284, 44);
            this.txtFilterCuil.TabIndex = 0;
            // 
            // lblFilterCuit
            // 
            this.lblFilterCuit.AutoSize = true;
            this.lblFilterCuit.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.lblFilterCuit.Location = new System.Drawing.Point(108, 37);
            this.lblFilterCuit.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblFilterCuit.Name = "lblFilterCuit";
            this.lblFilterCuit.Size = new System.Drawing.Size(208, 37);
            this.lblFilterCuit.TabIndex = 2;
            this.lblFilterCuit.Text = "CUIT o CUIL:";
            // 
            // lblDatoRazonSocial
            // 
            this.lblDatoRazonSocial.AutoSize = true;
            this.lblDatoRazonSocial.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.lblDatoRazonSocial.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDatoRazonSocial.ForeColor = System.Drawing.Color.White;
            this.lblDatoRazonSocial.Location = new System.Drawing.Point(1228, 260);
            this.lblDatoRazonSocial.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblDatoRazonSocial.Name = "lblDatoRazonSocial";
            this.lblDatoRazonSocial.Size = new System.Drawing.Size(231, 39);
            this.lblDatoRazonSocial.TabIndex = 14;
            this.lblDatoRazonSocial.Text = "Razón Social:";
            // 
            // lblRealRazonSocial
            // 
            this.lblRealRazonSocial.AutoSize = true;
            this.lblRealRazonSocial.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.lblRealRazonSocial.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblRealRazonSocial.ForeColor = System.Drawing.Color.White;
            this.lblRealRazonSocial.Location = new System.Drawing.Point(1492, 260);
            this.lblRealRazonSocial.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblRealRazonSocial.Name = "lblRealRazonSocial";
            this.lblRealRazonSocial.Size = new System.Drawing.Size(188, 39);
            this.lblRealRazonSocial.TabIndex = 15;
            this.lblRealRazonSocial.Text = "_________";
            // 
            // dtgFacturas
            // 
            this.dtgFacturas.AllowUserToAddRows = false;
            this.dtgFacturas.AllowUserToDeleteRows = false;
            this.dtgFacturas.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.dtgFacturas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgFacturas.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.tipo_Factura,
            this.numero,
            this.fecha_Factura,
            this.total,
            this.empleado});
            this.dtgFacturas.Location = new System.Drawing.Point(118, 330);
            this.dtgFacturas.Margin = new System.Windows.Forms.Padding(4);
            this.dtgFacturas.Name = "dtgFacturas";
            this.dtgFacturas.ReadOnly = true;
            this.dtgFacturas.RowHeadersWidth = 82;
            this.dtgFacturas.RowTemplate.Height = 33;
            this.dtgFacturas.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dtgFacturas.Size = new System.Drawing.Size(1824, 538);
            this.dtgFacturas.TabIndex = 17;
            // 
            // tipo_Factura
            // 
            this.tipo_Factura.HeaderText = "Tipo de Factura";
            this.tipo_Factura.MinimumWidth = 10;
            this.tipo_Factura.Name = "tipo_Factura";
            this.tipo_Factura.ReadOnly = true;
            this.tipo_Factura.Width = 200;
            // 
            // numero
            // 
            this.numero.HeaderText = "Numero De Factura";
            this.numero.MinimumWidth = 10;
            this.numero.Name = "numero";
            this.numero.ReadOnly = true;
            this.numero.Width = 200;
            // 
            // fecha_Factura
            // 
            this.fecha_Factura.HeaderText = "Fecha de Emisión";
            this.fecha_Factura.MinimumWidth = 10;
            this.fecha_Factura.Name = "fecha_Factura";
            this.fecha_Factura.ReadOnly = true;
            this.fecha_Factura.Width = 200;
            // 
            // total
            // 
            this.total.HeaderText = "Monto Total";
            this.total.MinimumWidth = 10;
            this.total.Name = "total";
            this.total.ReadOnly = true;
            this.total.Width = 200;
            // 
            // empleado
            // 
            this.empleado.HeaderText = "Empleado";
            this.empleado.MinimumWidth = 10;
            this.empleado.Name = "empleado";
            this.empleado.ReadOnly = true;
            this.empleado.Width = 200;
            // 
            // btnRefrescar
            // 
            this.btnRefrescar.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRefrescar.Location = new System.Drawing.Point(120, 234);
            this.btnRefrescar.Margin = new System.Windows.Forms.Padding(4);
            this.btnRefrescar.Name = "btnRefrescar";
            this.btnRefrescar.Size = new System.Drawing.Size(292, 65);
            this.btnRefrescar.TabIndex = 18;
            this.btnRefrescar.Text = "Refrescar";
            this.btnRefrescar.UseVisualStyleBackColor = true;
            this.btnRefrescar.Click += new System.EventHandler(this.btnRefrescar_Click);
            // 
            // btnDetalleFactura
            // 
            this.btnDetalleFactura.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDetalleFactura.Location = new System.Drawing.Point(118, 894);
            this.btnDetalleFactura.Margin = new System.Windows.Forms.Padding(4);
            this.btnDetalleFactura.Name = "btnDetalleFactura";
            this.btnDetalleFactura.Size = new System.Drawing.Size(450, 60);
            this.btnDetalleFactura.TabIndex = 19;
            this.btnDetalleFactura.Text = "Ver Detalles de Factura";
            this.btnDetalleFactura.UseVisualStyleBackColor = true;
            this.btnDetalleFactura.Click += new System.EventHandler(this.btnDetalleFactura_Click);
            // 
            // dtpFechaEnvio
            // 
            this.dtpFechaEnvio.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtpFechaEnvio.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpFechaEnvio.Location = new System.Drawing.Point(356, 60);
            this.dtpFechaEnvio.Margin = new System.Windows.Forms.Padding(4);
            this.dtpFechaEnvio.Name = "dtpFechaEnvio";
            this.dtpFechaEnvio.Size = new System.Drawing.Size(284, 44);
            this.dtpFechaEnvio.TabIndex = 21;
            // 
            // lblFechaEnvio
            // 
            this.lblFechaEnvio.AutoSize = true;
            this.lblFechaEnvio.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.lblFechaEnvio.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblFechaEnvio.ForeColor = System.Drawing.Color.White;
            this.lblFechaEnvio.Location = new System.Drawing.Point(64, 65);
            this.lblFechaEnvio.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblFechaEnvio.Name = "lblFechaEnvio";
            this.lblFechaEnvio.Size = new System.Drawing.Size(266, 39);
            this.lblFechaEnvio.TabIndex = 14;
            this.lblFechaEnvio.Text = "Fecha de Envío:";
            // 
            // lblDireccionEnvio
            // 
            this.lblDireccionEnvio.AutoSize = true;
            this.lblDireccionEnvio.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.lblDireccionEnvio.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDireccionEnvio.ForeColor = System.Drawing.Color.White;
            this.lblDireccionEnvio.Location = new System.Drawing.Point(12, 127);
            this.lblDireccionEnvio.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblDireccionEnvio.Name = "lblDireccionEnvio";
            this.lblDireccionEnvio.Size = new System.Drawing.Size(316, 39);
            this.lblDireccionEnvio.TabIndex = 14;
            this.lblDireccionEnvio.Text = "Dirección de Envio:";
            // 
            // txtDireccionEnvio
            // 
            this.txtDireccionEnvio.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDireccionEnvio.Location = new System.Drawing.Point(356, 127);
            this.txtDireccionEnvio.Margin = new System.Windows.Forms.Padding(4);
            this.txtDireccionEnvio.Name = "txtDireccionEnvio";
            this.txtDireccionEnvio.Size = new System.Drawing.Size(284, 44);
            this.txtDireccionEnvio.TabIndex = 0;
            // 
            // lblProvincia
            // 
            this.lblProvincia.AutoSize = true;
            this.lblProvincia.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.lblProvincia.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblProvincia.ForeColor = System.Drawing.Color.White;
            this.lblProvincia.Location = new System.Drawing.Point(158, 188);
            this.lblProvincia.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblProvincia.Name = "lblProvincia";
            this.lblProvincia.Size = new System.Drawing.Size(171, 39);
            this.lblProvincia.TabIndex = 14;
            this.lblProvincia.Text = "Provincia:";
            // 
            // cboProvincia
            // 
            this.cboProvincia.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboProvincia.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboProvincia.FormattingEnabled = true;
            this.cboProvincia.Location = new System.Drawing.Point(356, 188);
            this.cboProvincia.Margin = new System.Windows.Forms.Padding(4);
            this.cboProvincia.Name = "cboProvincia";
            this.cboProvincia.Size = new System.Drawing.Size(284, 45);
            this.cboProvincia.TabIndex = 22;
            // 
            // lblLocalidad
            // 
            this.lblLocalidad.AutoSize = true;
            this.lblLocalidad.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.lblLocalidad.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblLocalidad.ForeColor = System.Drawing.Color.White;
            this.lblLocalidad.Location = new System.Drawing.Point(154, 248);
            this.lblLocalidad.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblLocalidad.Name = "lblLocalidad";
            this.lblLocalidad.Size = new System.Drawing.Size(175, 39);
            this.lblLocalidad.TabIndex = 14;
            this.lblLocalidad.Text = "Localidad:";
            // 
            // cboLocalidad
            // 
            this.cboLocalidad.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboLocalidad.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboLocalidad.FormattingEnabled = true;
            this.cboLocalidad.Location = new System.Drawing.Point(356, 248);
            this.cboLocalidad.Margin = new System.Windows.Forms.Padding(4);
            this.cboLocalidad.Name = "cboLocalidad";
            this.cboLocalidad.Size = new System.Drawing.Size(284, 45);
            this.cboLocalidad.TabIndex = 22;
            // 
            // lblBarrio
            // 
            this.lblBarrio.AutoSize = true;
            this.lblBarrio.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.lblBarrio.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblBarrio.ForeColor = System.Drawing.Color.White;
            this.lblBarrio.Location = new System.Drawing.Point(208, 306);
            this.lblBarrio.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblBarrio.Name = "lblBarrio";
            this.lblBarrio.Size = new System.Drawing.Size(120, 39);
            this.lblBarrio.TabIndex = 14;
            this.lblBarrio.Text = "Barrio:";
            // 
            // cboBarrio
            // 
            this.cboBarrio.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboBarrio.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboBarrio.FormattingEnabled = true;
            this.cboBarrio.Location = new System.Drawing.Point(356, 306);
            this.cboBarrio.Margin = new System.Windows.Forms.Padding(4);
            this.cboBarrio.Name = "cboBarrio";
            this.cboBarrio.Size = new System.Drawing.Size(284, 45);
            this.cboBarrio.TabIndex = 22;
            // 
            // lblEmpresaTransporte
            // 
            this.lblEmpresaTransporte.AutoSize = true;
            this.lblEmpresaTransporte.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.lblEmpresaTransporte.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEmpresaTransporte.ForeColor = System.Drawing.Color.White;
            this.lblEmpresaTransporte.Location = new System.Drawing.Point(978, 65);
            this.lblEmpresaTransporte.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblEmpresaTransporte.Name = "lblEmpresaTransporte";
            this.lblEmpresaTransporte.Size = new System.Drawing.Size(391, 39);
            this.lblEmpresaTransporte.TabIndex = 14;
            this.lblEmpresaTransporte.Text = "Empresa de Transporte:";
            // 
            // cboEmpresaTransporte
            // 
            this.cboEmpresaTransporte.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboEmpresaTransporte.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboEmpresaTransporte.FormattingEnabled = true;
            this.cboEmpresaTransporte.Location = new System.Drawing.Point(1400, 63);
            this.cboEmpresaTransporte.Margin = new System.Windows.Forms.Padding(4);
            this.cboEmpresaTransporte.Name = "cboEmpresaTransporte";
            this.cboEmpresaTransporte.Size = new System.Drawing.Size(404, 45);
            this.cboEmpresaTransporte.TabIndex = 22;
            // 
            // btnRegistrarEnvio
            // 
            this.btnRegistrarEnvio.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.btnRegistrarEnvio.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRegistrarEnvio.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.btnRegistrarEnvio.Location = new System.Drawing.Point(836, 1400);
            this.btnRegistrarEnvio.Margin = new System.Windows.Forms.Padding(4);
            this.btnRegistrarEnvio.Name = "btnRegistrarEnvio";
            this.btnRegistrarEnvio.Size = new System.Drawing.Size(354, 69);
            this.btnRegistrarEnvio.TabIndex = 23;
            this.btnRegistrarEnvio.Text = "Registrar Envío";
            this.btnRegistrarEnvio.UseVisualStyleBackColor = false;
            this.btnRegistrarEnvio.Click += new System.EventHandler(this.btnRegistrarEnvio_Click);
            // 
            // btnSalir
            // 
            this.btnSalir.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.btnSalir.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSalir.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.btnSalir.Location = new System.Drawing.Point(1588, 1400);
            this.btnSalir.Margin = new System.Windows.Forms.Padding(4);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(354, 69);
            this.btnSalir.TabIndex = 24;
            this.btnSalir.Text = "Salir";
            this.btnSalir.UseVisualStyleBackColor = false;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // btnCancelarEnvio
            // 
            this.btnCancelarEnvio.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.btnCancelarEnvio.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancelarEnvio.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.btnCancelarEnvio.Location = new System.Drawing.Point(1212, 1400);
            this.btnCancelarEnvio.Margin = new System.Windows.Forms.Padding(4);
            this.btnCancelarEnvio.Name = "btnCancelarEnvio";
            this.btnCancelarEnvio.Size = new System.Drawing.Size(354, 69);
            this.btnCancelarEnvio.TabIndex = 25;
            this.btnCancelarEnvio.Text = "Cancelar Envio";
            this.btnCancelarEnvio.UseVisualStyleBackColor = false;
            this.btnCancelarEnvio.Click += new System.EventHandler(this.btnCancelarEnvio_Click);
            // 
            // grbDatosEnvio
            // 
            this.grbDatosEnvio.BackColor = System.Drawing.Color.Transparent;
            this.grbDatosEnvio.Controls.Add(this.cboBarrio);
            this.grbDatosEnvio.Controls.Add(this.cboLocalidad);
            this.grbDatosEnvio.Controls.Add(this.cboEmpresaTransporte);
            this.grbDatosEnvio.Controls.Add(this.cboProvincia);
            this.grbDatosEnvio.Controls.Add(this.dtpFechaEnvio);
            this.grbDatosEnvio.Controls.Add(this.txtDireccionEnvio);
            this.grbDatosEnvio.Controls.Add(this.lblBarrio);
            this.grbDatosEnvio.Controls.Add(this.lblLocalidad);
            this.grbDatosEnvio.Controls.Add(this.lblProvincia);
            this.grbDatosEnvio.Controls.Add(this.lblDireccionEnvio);
            this.grbDatosEnvio.Controls.Add(this.lblEmpresaTransporte);
            this.grbDatosEnvio.Controls.Add(this.lblFechaEnvio);
            this.grbDatosEnvio.Enabled = false;
            this.grbDatosEnvio.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grbDatosEnvio.Location = new System.Drawing.Point(118, 971);
            this.grbDatosEnvio.Margin = new System.Windows.Forms.Padding(4);
            this.grbDatosEnvio.Name = "grbDatosEnvio";
            this.grbDatosEnvio.Padding = new System.Windows.Forms.Padding(4);
            this.grbDatosEnvio.Size = new System.Drawing.Size(1824, 404);
            this.grbDatosEnvio.TabIndex = 26;
            this.grbDatosEnvio.TabStop = false;
            this.grbDatosEnvio.Text = "Datos del Envio";
            // 
            // frmEnvio
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSize = true;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
            this.BackgroundImage = global::ProyectoAgronegocios.Properties.Resources.Envio_Semillas;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.ClientSize = new System.Drawing.Size(1994, 1498);
            this.Controls.Add(this.grbDatosEnvio);
            this.Controls.Add(this.btnCancelarEnvio);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.btnRegistrarEnvio);
            this.Controls.Add(this.btnDetalleFactura);
            this.Controls.Add(this.btnRefrescar);
            this.Controls.Add(this.dtgFacturas);
            this.Controls.Add(this.grpFiltros);
            this.Controls.Add(this.lblRealRazonSocial);
            this.Controls.Add(this.lblRealCuil);
            this.Controls.Add(this.lblDatoRazonSocial);
            this.Controls.Add(this.lblDatoCuil);
            this.Controls.Add(this.lblRealNomApe);
            this.Controls.Add(this.lblDatoNomApe);
            this.Controls.Add(this.lblCliente);
            this.Controls.Add(this.lblUsuarioLoguedo);
            this.DoubleBuffered = true;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "frmEnvio";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Envio";
            this.Load += new System.EventHandler(this.frmEnvio_Load);
            this.grpFiltros.ResumeLayout(false);
            this.grpFiltros.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgFacturas)).EndInit();
            this.grbDatosEnvio.ResumeLayout(false);
            this.grbDatosEnvio.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblUsuarioLoguedo;
        private System.Windows.Forms.Label lblRealCuil;
        private System.Windows.Forms.Label lblDatoCuil;
        private System.Windows.Forms.Label lblRealNomApe;
        private System.Windows.Forms.Label lblDatoNomApe;
        private System.Windows.Forms.Label lblCliente;
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.GroupBox grpFiltros;
        private System.Windows.Forms.TextBox txtFilterCuil;
        private System.Windows.Forms.Label lblFilterCuit;
        private System.Windows.Forms.Label lblDatoRazonSocial;
        private System.Windows.Forms.Label lblRealRazonSocial;
        private System.Windows.Forms.DataGridView dtgFacturas;
        private System.Windows.Forms.DataGridViewTextBoxColumn tipo_Factura;
        private System.Windows.Forms.DataGridViewTextBoxColumn numero;
        private System.Windows.Forms.DataGridViewTextBoxColumn fecha_Factura;
        private System.Windows.Forms.DataGridViewTextBoxColumn total;
        private System.Windows.Forms.DataGridViewTextBoxColumn empleado;
        private System.Windows.Forms.Button btnRefrescar;
        private System.Windows.Forms.Button btnDetalleFactura;
        private System.Windows.Forms.DateTimePicker dtpFechaEnvio;
        private System.Windows.Forms.Label lblFechaEnvio;
        private System.Windows.Forms.Label lblDireccionEnvio;
        private System.Windows.Forms.TextBox txtDireccionEnvio;
        private System.Windows.Forms.Label lblProvincia;
        private System.Windows.Forms.ComboBox cboProvincia;
        private System.Windows.Forms.Label lblLocalidad;
        private System.Windows.Forms.ComboBox cboLocalidad;
        private System.Windows.Forms.Label lblBarrio;
        private System.Windows.Forms.ComboBox cboBarrio;
        private System.Windows.Forms.Label lblEmpresaTransporte;
        private System.Windows.Forms.ComboBox cboEmpresaTransporte;
        private System.Windows.Forms.Button btnRegistrarEnvio;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.Button btnCancelarEnvio;
        private System.Windows.Forms.GroupBox grbDatosEnvio;
    }
}