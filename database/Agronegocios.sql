USE [master]
GO
/****** Object:  Database [AGRONEGOCIOS]    Script Date: 9/9/2020 11:41:04 ******/
CREATE DATABASE [AGRONEGOCIOS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AGRONEGOCIOS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AGRONEGOCIOS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AGRONEGOCIOS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AGRONEGOCIOS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AGRONEGOCIOS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AGRONEGOCIOS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AGRONEGOCIOS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AGRONEGOCIOS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AGRONEGOCIOS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AGRONEGOCIOS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AGRONEGOCIOS] SET ARITHABORT OFF 
GO
ALTER DATABASE [AGRONEGOCIOS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AGRONEGOCIOS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AGRONEGOCIOS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AGRONEGOCIOS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AGRONEGOCIOS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AGRONEGOCIOS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AGRONEGOCIOS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AGRONEGOCIOS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AGRONEGOCIOS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AGRONEGOCIOS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AGRONEGOCIOS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AGRONEGOCIOS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AGRONEGOCIOS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AGRONEGOCIOS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AGRONEGOCIOS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AGRONEGOCIOS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AGRONEGOCIOS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AGRONEGOCIOS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AGRONEGOCIOS] SET  MULTI_USER 
GO
ALTER DATABASE [AGRONEGOCIOS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AGRONEGOCIOS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AGRONEGOCIOS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AGRONEGOCIOS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AGRONEGOCIOS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AGRONEGOCIOS] SET QUERY_STORE = OFF
GO
USE [AGRONEGOCIOS]
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 9/9/2020 11:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barrios](
	[id_Barrio] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[cod_Postal] [varchar](50) NULL,
	[id_Localidad] [int] NULL,
 CONSTRAINT [PK_Barrios] PRIMARY KEY CLUSTERED 
(
	[id_Barrio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calidad]    Script Date: 9/9/2020 11:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calidad](
	[id_Calidad] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[id_Tipo_Semilla] [int] NULL,
	[habilitado] [varchar](2) NULL,
 CONSTRAINT [PK_Calidad] PRIMARY KEY CLUSTERED 
(
	[id_Calidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Calidad] UNIQUE NONCLUSTERED 
(
	[id_Calidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente_Proveedor]    Script Date: 9/9/2020 11:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente_Proveedor](
	[id_Ciente_Proveedor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[razon_Social] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[cod_Barrio] [int] NULL,
	[id_Tipo] [int] NULL,
	[CUIL_CUIT] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cliente_Proveedor] PRIMARY KEY CLUSTERED 
(
	[id_Ciente_Proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalles_de_Facturas]    Script Date: 9/9/2020 11:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalles_de_Facturas](
	[id_Semilla] [int] NOT NULL,
	[tipo_Factura] [char](1) NOT NULL,
	[numero_Factura] [int] NOT NULL,
	[fecha_Entrega] [date] NULL,
	[precio_Venra] [decimal](15, 2) NULL,
	[cantidad] [decimal](14, 4) NULL,
 CONSTRAINT [PK_Detalles_de_Facturas] PRIMARY KEY CLUSTERED 
(
	[id_Semilla] ASC,
	[tipo_Factura] ASC,
	[numero_Factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 9/9/2020 11:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[cod_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[telefono] [int] NULL,
	[fecha_Alta] [date] NULL,
	[cod_barrio] [int] NULL,
	[calle] [varchar](50) NULL,
	[numero_casa] [int] NULL,
	[fecha_nacimiento] [date] NULL,
	[tipo_Empleado] [int] NULL,
	[contraseña] [nchar](8) NULL,
	[usuario] [varchar](8) NULL,
	[borrado] [bit] NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[cod_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa_Transporte]    Script Date: 9/9/2020 11:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa_Transporte](
	[id_Empresa] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[razon_social] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[id_barrio] [int] NULL,
 CONSTRAINT [PK_Empresa_Transporte] PRIMARY KEY CLUSTERED 
(
	[id_Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Envios]    Script Date: 9/9/2020 11:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Envios](
	[id_Factura] [int] NOT NULL,
	[tipo_Factura] [char](1) NOT NULL,
	[nro_envio] [int] IDENTITY(1,1) NOT NULL,
	[fecha_Hora_envio] [date] NULL,
	[id_Empresa_Transporte] [int] NULL,
	[direccion] [varchar](50) NULL,
	[id_barrio] [int] NULL,
 CONSTRAINT [PK_Envios] PRIMARY KEY CLUSTERED 
(
	[nro_envio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 9/9/2020 11:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[tipo_Factura] [char](1) NOT NULL,
	[numero] [int] IDENTITY(1,1) NOT NULL,
	[fecha_Factura] [date] NULL,
	[total] [decimal](15, 2) NULL,
	[cod_Empleado] [int] NULL,
	[id_cliente_Proveedor] [int] NULL,
 CONSTRAINT [PK_Facturas] PRIMARY KEY CLUSTERED 
(
	[tipo_Factura] ASC,
	[numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forma_PagoXfactura]    Script Date: 9/9/2020 11:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forma_PagoXfactura](
	[id_Forma_Pago] [int] IDENTITY(1,1) NOT NULL,
	[tipo_Factura] [char](1) NOT NULL,
	[numero_Factura] [int] NOT NULL,
	[monto] [decimal](15, 2) NULL,
	[dias_de_Plazo] [int] NULL,
 CONSTRAINT [PK_Forma_PagoXfactura] PRIMARY KEY CLUSTERED 
(
	[id_Forma_Pago] ASC,
	[tipo_Factura] ASC,
	[numero_Factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formas_Pagos]    Script Date: 9/9/2020 11:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formas_Pagos](
	[id_Pago] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Formas_Pagos] PRIMARY KEY CLUSTERED 
(
	[id_Pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidad]    Script Date: 9/9/2020 11:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidad](
	[id_Localidad] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[id_Provincia] [int] NULL,
 CONSTRAINT [PK_Localidad] PRIMARY KEY CLUSTERED 
(
	[id_Localidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 9/9/2020 11:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[id_Provincia] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[id_Provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semilla]    Script Date: 9/9/2020 11:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semilla](
	[id_Semilla] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[stock_Minimo] [decimal](10, 2) NULL,
	[stock] [decimal](10, 2) NULL,
	[precio_Tonelada] [decimal](15, 3) NULL,
	[tipo_Semilla] [int] NULL,
	[descripcion] [varchar](100) NULL,
	[habilitado] [varchar](2) NULL,
 CONSTRAINT [PK_Semilla] PRIMARY KEY CLUSTERED 
(
	[id_Semilla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Cliente_Proveedor]    Script Date: 9/9/2020 11:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Cliente_Proveedor](
	[id_Tipo] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Tipo_Cliente_Proveedor] PRIMARY KEY CLUSTERED 
(
	[id_Tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Empleados]    Script Date: 9/9/2020 11:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Empleados](
	[id_tipo_Empleado] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Tipo_Empleados] PRIMARY KEY CLUSTERED 
(
	[id_tipo_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Semilla]    Script Date: 9/9/2020 11:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Semilla](
	[id_Tipo_Semilla] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[habilitado] [varchar](2) NULL,
 CONSTRAINT [PK_Tipo_Semilla] PRIMARY KEY CLUSTERED 
(
	[id_Tipo_Semilla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposXsemillas]    Script Date: 9/9/2020 11:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposXsemillas](
	[id_Semilla] [int] NOT NULL,
	[id_Tipo_Semilla] [int] NOT NULL,
	[id_Calidad] [int] NOT NULL,
	[precio_sugerido] [decimal](15, 3) NULL,
 CONSTRAINT [PK_TiposXsemillas] PRIMARY KEY CLUSTERED 
(
	[id_Semilla] ASC,
	[id_Tipo_Semilla] ASC,
	[id_Calidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Semilla]    Script Date: 9/9/2020 11:41:05 ******/
CREATE NONCLUSTERED INDEX [IX_Semilla] ON [dbo].[Semilla]
(
	[id_Semilla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Calidad] ADD  CONSTRAINT [DF_Calidad_habilitado]  DEFAULT ('si') FOR [habilitado]
GO
ALTER TABLE [dbo].[Semilla] ADD  CONSTRAINT [DF_Semilla_habilitado]  DEFAULT ('si') FOR [habilitado]
GO
ALTER TABLE [dbo].[Tipo_Semilla] ADD  CONSTRAINT [DF_Tipo_Semilla_habilitado]  DEFAULT ('si') FOR [habilitado]
GO
ALTER TABLE [dbo].[Barrios]  WITH CHECK ADD  CONSTRAINT [FK_Barrios_Localidad] FOREIGN KEY([id_Localidad])
REFERENCES [dbo].[Localidad] ([id_Localidad])
GO
ALTER TABLE [dbo].[Barrios] CHECK CONSTRAINT [FK_Barrios_Localidad]
GO
ALTER TABLE [dbo].[Calidad]  WITH CHECK ADD  CONSTRAINT [FK_Calidad_Tipo_Semilla] FOREIGN KEY([id_Tipo_Semilla])
REFERENCES [dbo].[Tipo_Semilla] ([id_Tipo_Semilla])
GO
ALTER TABLE [dbo].[Calidad] CHECK CONSTRAINT [FK_Calidad_Tipo_Semilla]
GO
ALTER TABLE [dbo].[Cliente_Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Proveedor_Barrios] FOREIGN KEY([cod_Barrio])
REFERENCES [dbo].[Barrios] ([id_Barrio])
GO
ALTER TABLE [dbo].[Cliente_Proveedor] CHECK CONSTRAINT [FK_Cliente_Proveedor_Barrios]
GO
ALTER TABLE [dbo].[Cliente_Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Proveedor_Tipo_Cliente_Proveedor] FOREIGN KEY([id_Tipo])
REFERENCES [dbo].[Tipo_Cliente_Proveedor] ([id_Tipo])
GO
ALTER TABLE [dbo].[Cliente_Proveedor] CHECK CONSTRAINT [FK_Cliente_Proveedor_Tipo_Cliente_Proveedor]
GO
ALTER TABLE [dbo].[Detalles_de_Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Detalles_de_Facturas_Facturas] FOREIGN KEY([tipo_Factura], [numero_Factura])
REFERENCES [dbo].[Facturas] ([tipo_Factura], [numero])
GO
ALTER TABLE [dbo].[Detalles_de_Facturas] CHECK CONSTRAINT [FK_Detalles_de_Facturas_Facturas]
GO
ALTER TABLE [dbo].[Detalles_de_Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Detalles_de_Facturas_Semilla] FOREIGN KEY([id_Semilla])
REFERENCES [dbo].[Semilla] ([id_Semilla])
GO
ALTER TABLE [dbo].[Detalles_de_Facturas] CHECK CONSTRAINT [FK_Detalles_de_Facturas_Semilla]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Barrios] FOREIGN KEY([cod_barrio])
REFERENCES [dbo].[Barrios] ([id_Barrio])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Barrios]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Tipo_Empleados] FOREIGN KEY([tipo_Empleado])
REFERENCES [dbo].[Tipo_Empleados] ([id_tipo_Empleado])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Tipo_Empleados]
GO
ALTER TABLE [dbo].[Empresa_Transporte]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Transporte_Barrios] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[Barrios] ([id_Barrio])
GO
ALTER TABLE [dbo].[Empresa_Transporte] CHECK CONSTRAINT [FK_Empresa_Transporte_Barrios]
GO
ALTER TABLE [dbo].[Envios]  WITH CHECK ADD  CONSTRAINT [FK_Envios_Barrios] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[Barrios] ([id_Barrio])
GO
ALTER TABLE [dbo].[Envios] CHECK CONSTRAINT [FK_Envios_Barrios]
GO
ALTER TABLE [dbo].[Envios]  WITH CHECK ADD  CONSTRAINT [FK_Envios_Empresa_Transporte] FOREIGN KEY([id_Empresa_Transporte])
REFERENCES [dbo].[Empresa_Transporte] ([id_Empresa])
GO
ALTER TABLE [dbo].[Envios] CHECK CONSTRAINT [FK_Envios_Empresa_Transporte]
GO
ALTER TABLE [dbo].[Envios]  WITH CHECK ADD  CONSTRAINT [FK_Envios_Facturas] FOREIGN KEY([tipo_Factura], [id_Factura])
REFERENCES [dbo].[Facturas] ([tipo_Factura], [numero])
GO
ALTER TABLE [dbo].[Envios] CHECK CONSTRAINT [FK_Envios_Facturas]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Empleados1] FOREIGN KEY([cod_Empleado])
REFERENCES [dbo].[Empleados] ([cod_Empleado])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Empleados1]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Tipo_Cliente_Proveedor] FOREIGN KEY([id_cliente_Proveedor])
REFERENCES [dbo].[Cliente_Proveedor] ([id_Ciente_Proveedor])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Tipo_Cliente_Proveedor]
GO
ALTER TABLE [dbo].[Forma_PagoXfactura]  WITH CHECK ADD  CONSTRAINT [FK_Forma_PagoXfactura_Facturas] FOREIGN KEY([tipo_Factura], [numero_Factura])
REFERENCES [dbo].[Facturas] ([tipo_Factura], [numero])
GO
ALTER TABLE [dbo].[Forma_PagoXfactura] CHECK CONSTRAINT [FK_Forma_PagoXfactura_Facturas]
GO
ALTER TABLE [dbo].[Forma_PagoXfactura]  WITH CHECK ADD  CONSTRAINT [FK_Forma_PagoXfactura_Formas_Pagos] FOREIGN KEY([id_Forma_Pago])
REFERENCES [dbo].[Formas_Pagos] ([id_Pago])
GO
ALTER TABLE [dbo].[Forma_PagoXfactura] CHECK CONSTRAINT [FK_Forma_PagoXfactura_Formas_Pagos]
GO
ALTER TABLE [dbo].[Localidad]  WITH CHECK ADD  CONSTRAINT [FK_Localidad_Provincia] FOREIGN KEY([id_Provincia])
REFERENCES [dbo].[Provincia] ([id_Provincia])
GO
ALTER TABLE [dbo].[Localidad] CHECK CONSTRAINT [FK_Localidad_Provincia]
GO
ALTER TABLE [dbo].[Semilla]  WITH CHECK ADD  CONSTRAINT [FK_Semilla_Tipo_Semilla1] FOREIGN KEY([tipo_Semilla])
REFERENCES [dbo].[Tipo_Semilla] ([id_Tipo_Semilla])
GO
ALTER TABLE [dbo].[Semilla] CHECK CONSTRAINT [FK_Semilla_Tipo_Semilla1]
GO
ALTER TABLE [dbo].[TiposXsemillas]  WITH CHECK ADD  CONSTRAINT [FK_TiposXsemillas_Calidad] FOREIGN KEY([id_Calidad])
REFERENCES [dbo].[Calidad] ([id_Calidad])
GO
ALTER TABLE [dbo].[TiposXsemillas] CHECK CONSTRAINT [FK_TiposXsemillas_Calidad]
GO
ALTER TABLE [dbo].[TiposXsemillas]  WITH CHECK ADD  CONSTRAINT [FK_TiposXsemillas_Semilla] FOREIGN KEY([id_Semilla])
REFERENCES [dbo].[Semilla] ([id_Semilla])
GO
ALTER TABLE [dbo].[TiposXsemillas] CHECK CONSTRAINT [FK_TiposXsemillas_Semilla]
GO
ALTER TABLE [dbo].[TiposXsemillas]  WITH CHECK ADD  CONSTRAINT [FK_TiposXsemillas_Tipo_Semilla] FOREIGN KEY([id_Tipo_Semilla])
REFERENCES [dbo].[Tipo_Semilla] ([id_Tipo_Semilla])
GO
ALTER TABLE [dbo].[TiposXsemillas] CHECK CONSTRAINT [FK_TiposXsemillas_Tipo_Semilla]
GO
USE [master]
GO
ALTER DATABASE [AGRONEGOCIOS] SET  READ_WRITE 
GO
