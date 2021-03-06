USE [master]
GO
/****** Object:  Database [Agronegocios]    Script Date: 20/10/2020 16:47:58 ******/
CREATE DATABASE [Agronegocios] ON  PRIMARY 
( NAME = N'Agronegocios', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Agronegocios.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Agronegocios_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Agronegocios_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Agronegocios].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Agronegocios] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Agronegocios] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Agronegocios] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Agronegocios] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Agronegocios] SET ARITHABORT OFF 
GO
ALTER DATABASE [Agronegocios] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Agronegocios] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Agronegocios] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Agronegocios] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Agronegocios] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Agronegocios] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Agronegocios] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Agronegocios] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Agronegocios] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Agronegocios] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Agronegocios] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Agronegocios] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Agronegocios] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Agronegocios] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Agronegocios] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Agronegocios] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Agronegocios] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Agronegocios] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Agronegocios] SET  MULTI_USER 
GO
ALTER DATABASE [Agronegocios] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Agronegocios] SET DB_CHAINING OFF 
GO
USE [Agronegocios]
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 20/10/2020 16:47:58 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calidad]    Script Date: 20/10/2020 16:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calidad](
	[id_Calidad] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[habilitado] [varchar](2) NULL,
 CONSTRAINT [PK_Calidad] PRIMARY KEY CLUSTERED 
(
	[id_Calidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente_Proveedor]    Script Date: 20/10/2020 16:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente_Proveedor](
	[id_Cliente_Proveedor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[razon_Social] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[cod_Barrio] [int] NULL,
	[id_Tipo] [int] NULL,
	[CUIL_CUIT] [varchar](50) NOT NULL,
	[borrado] [bit] NULL,
 CONSTRAINT [PK_Cliente_Proveedor] PRIMARY KEY CLUSTERED 
(
	[id_Cliente_Proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalles_de_Facturas]    Script Date: 20/10/2020 16:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalles_de_Facturas](
	[id_Semilla] [int] NOT NULL,
	[tipo_Factura] [char](1) NOT NULL,
	[numero_Factura] [int] NOT NULL,
	[fecha_Entrega] [date] NULL,
	[precio_Venta] [decimal](15, 2) NULL,
	[cantidad] [decimal](14, 4) NULL,
	[subtotal] [decimal](15, 2) NULL,
 CONSTRAINT [PK_Detalles_de_Facturas] PRIMARY KEY CLUSTERED 
(
	[id_Semilla] ASC,
	[tipo_Factura] ASC,
	[numero_Factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 20/10/2020 16:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[cod_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[fecha_Alta] [date] NULL,
	[cod_barrio] [int] NULL,
	[calle] [varchar](50) NULL,
	[fecha_nacimiento] [date] NULL,
	[tipo_Empleado] [int] NULL,
	[contraseña] [nchar](8) NULL,
	[usuario] [varchar](8) NULL,
	[borrado] [bit] NULL,
	[telefono] [varchar](50) NULL,
	[numero_casa] [varchar](50) NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[cod_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa_Transporte]    Script Date: 20/10/2020 16:47:58 ******/
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
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Empresa_Transporte] PRIMARY KEY CLUSTERED 
(
	[id_Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Envios]    Script Date: 20/10/2020 16:47:58 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 20/10/2020 16:47:58 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forma_PagoXfactura]    Script Date: 20/10/2020 16:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forma_PagoXfactura](
	[id_Forma_Pago] [int] NOT NULL,
	[tipo_Factura] [char](1) NOT NULL,
	[numero_Factura] [int] NOT NULL,
	[monto] [decimal](15, 2) NULL,
	[dias_de_Plazo] [int] NULL,
	[id_FormaPagoXfactura] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Forma_PagoXfactura] PRIMARY KEY CLUSTERED 
(
	[id_FormaPagoXfactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formas_Pagos]    Script Date: 20/10/2020 16:47:58 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidad]    Script Date: 20/10/2020 16:47:58 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 20/10/2020 16:47:58 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semilla]    Script Date: 20/10/2020 16:47:58 ******/
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
	[descripcion] [varchar](100) NULL,
	[habilitado] [varchar](2) NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Semilla] PRIMARY KEY CLUSTERED 
(
	[id_Semilla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Cliente_Proveedor]    Script Date: 20/10/2020 16:47:58 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Empleados]    Script Date: 20/10/2020 16:47:58 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Semilla]    Script Date: 20/10/2020 16:47:58 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposXsemillas]    Script Date: 20/10/2020 16:47:58 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[EstClientesVentaP]    Script Date: 20/10/2020 16:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[EstClientesVentaP]
AS
SELECT        dbo.Cliente_Proveedor.id_Cliente_Proveedor, dbo.Cliente_Proveedor.nombre, dbo.Cliente_Proveedor.apellido, SUM(dbo.Facturas.total) AS SumaPrecio
FROM            dbo.Facturas INNER JOIN
                         dbo.Cliente_Proveedor ON dbo.Facturas.id_cliente_Proveedor = dbo.Cliente_Proveedor.id_Cliente_Proveedor
GROUP BY dbo.Cliente_Proveedor.id_Cliente_Proveedor, dbo.Cliente_Proveedor.nombre, dbo.Cliente_Proveedor.apellido
GO
/****** Object:  View [dbo].[EstClientesVentas]    Script Date: 20/10/2020 16:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[EstClientesVentas]
AS
SELECT        dbo.Cliente_Proveedor.CUIL_CUIT, dbo.Cliente_Proveedor.nombre, dbo.Cliente_Proveedor.apellido, CONVERT(numeric(10, 0), SUM(dbo.Detalles_de_Facturas.cantidad)) AS SumaCantidad
FROM            dbo.Facturas INNER JOIN
                         dbo.Detalles_de_Facturas ON dbo.Facturas.tipo_Factura = dbo.Detalles_de_Facturas.tipo_Factura AND dbo.Facturas.numero = dbo.Detalles_de_Facturas.numero_Factura INNER JOIN
                         dbo.Cliente_Proveedor ON dbo.Facturas.id_cliente_Proveedor = dbo.Cliente_Proveedor.id_Cliente_Proveedor
GROUP BY dbo.Cliente_Proveedor.CUIL_CUIT, dbo.Cliente_Proveedor.nombre, dbo.Cliente_Proveedor.apellido
GO
/****** Object:  View [dbo].[EstEnviosEmp]    Script Date: 20/10/2020 16:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[EstEnviosEmp]
AS
SELECT        dbo.Empresa_Transporte.id_Empresa, dbo.Empresa_Transporte.razon_social, COUNT(dbo.Envios.nro_envio) AS CantEnvios
FROM            dbo.Envios INNER JOIN
                         dbo.Empresa_Transporte ON dbo.Envios.id_Empresa_Transporte = dbo.Empresa_Transporte.id_Empresa
GROUP BY dbo.Empresa_Transporte.id_Empresa, dbo.Empresa_Transporte.razon_social
GO
/****** Object:  View [dbo].[EstPorcVentasXEmpleado]    Script Date: 20/10/2020 16:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[EstPorcVentasXEmpleado]
AS
SELECT        dbo.Provincia.nombre, SUM(Facturas_1.total) /
                             (SELECT        SUM(dbo.Facturas.total) AS Expr1
                               FROM            dbo.Facturas INNER JOIN
                                                         dbo.Envios ON dbo.Facturas.numero = dbo.Envios.id_Factura AND dbo.Facturas.tipo_Factura = dbo.Envios.tipo_Factura) * 100 AS Porc
FROM            dbo.Localidad INNER JOIN
                         dbo.Provincia ON dbo.Localidad.id_Provincia = dbo.Provincia.id_Provincia INNER JOIN
                         dbo.Barrios ON dbo.Localidad.id_Localidad = dbo.Barrios.id_Localidad INNER JOIN
                         dbo.Envios AS Envios_1 ON dbo.Barrios.id_Barrio = Envios_1.id_barrio INNER JOIN
                         dbo.Facturas AS Facturas_1 ON Envios_1.tipo_Factura = Facturas_1.tipo_Factura AND Envios_1.id_Factura = Facturas_1.numero
GROUP BY dbo.Provincia.nombre
GO
/****** Object:  View [dbo].[EstVentasEmpleados]    Script Date: 20/10/2020 16:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[EstVentasEmpleados]
AS
SELECT        dbo.Empleados.cod_Empleado, dbo.Empleados.nombre, dbo.Empleados.apellido, SUM(dbo.Facturas.total) AS Total
FROM            dbo.Facturas INNER JOIN
                         dbo.Empleados ON dbo.Facturas.cod_Empleado = dbo.Empleados.cod_Empleado
GROUP BY dbo.Empleados.cod_Empleado, dbo.Empleados.nombre, dbo.Empleados.apellido
GO
/****** Object:  View [dbo].[EstVentasSemillas]    Script Date: 20/10/2020 16:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[EstVentasSemillas]
AS
SELECT        dbo.Semilla.nombre, SUM(dbo.Detalles_de_Facturas.cantidad) AS CantSemilla
FROM            dbo.Detalles_de_Facturas INNER JOIN
                         dbo.Semilla ON dbo.Detalles_de_Facturas.id_Semilla = dbo.Semilla.id_Semilla
GROUP BY dbo.Semilla.nombre
GO
/****** Object:  View [dbo].[ReporteAntigEmpleados]    Script Date: 20/10/2020 16:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ReporteAntigEmpleados]
AS
SELECT        cod_Empleado AS Codigo, nombre AS Nombre, apellido AS Apellido, DATEDIFF(day, fecha_Alta, CONVERT(varchar, GETDATE(), 23)) AS DiffDias, DATEDIFF(MM, fecha_Alta, CONVERT(varchar, GETDATE(), 23)) AS DiffMeses
FROM            dbo.Empleados
GO
/****** Object:  View [dbo].[ReporteDetFactura]    Script Date: 20/10/2020 16:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ReporteDetFactura]
AS
SELECT        dbo.Calidad.nombre, dbo.Semilla.nombre AS Expr1, dbo.Tipo_Semilla.nombre AS Expr2, SUM(dbo.Detalles_de_Facturas.cantidad) AS Expr3
FROM            dbo.Facturas INNER JOIN
                         dbo.Detalles_de_Facturas ON dbo.Facturas.tipo_Factura = dbo.Detalles_de_Facturas.tipo_Factura AND dbo.Facturas.numero = dbo.Detalles_de_Facturas.numero_Factura INNER JOIN
                         dbo.Semilla ON dbo.Detalles_de_Facturas.id_Semilla = dbo.Semilla.id_Semilla INNER JOIN
                         dbo.TiposXsemillas ON dbo.Semilla.id_Semilla = dbo.TiposXsemillas.id_Semilla INNER JOIN
                         dbo.Calidad ON dbo.TiposXsemillas.id_Calidad = dbo.Calidad.id_Calidad INNER JOIN
                         dbo.Tipo_Semilla ON dbo.TiposXsemillas.id_Tipo_Semilla = dbo.Tipo_Semilla.id_Tipo_Semilla
GROUP BY dbo.Semilla.nombre, dbo.Tipo_Semilla.nombre, dbo.Calidad.nombre
GO
/****** Object:  View [dbo].[ReporteEnviosEmpresa]    Script Date: 20/10/2020 16:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ReporteEnviosEmpresa]
AS
SELECT        dbo.Empresa_Transporte.id_Empresa, dbo.Empresa_Transporte.razon_social, COUNT(dbo.Envios.nro_envio) AS Expr1
FROM            dbo.Envios INNER JOIN
                         dbo.Empresa_Transporte ON dbo.Envios.id_Empresa_Transporte = dbo.Empresa_Transporte.id_Empresa
GROUP BY dbo.Empresa_Transporte.id_Empresa, dbo.Empresa_Transporte.razon_social
GO
/****** Object:  View [dbo].[ReporteEnviosProv]    Script Date: 20/10/2020 16:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ReporteEnviosProv]
AS
SELECT        dbo.Provincia.nombre AS Nombre, COUNT(dbo.Envios.nro_envio) AS Cantidad
FROM            dbo.Barrios INNER JOIN
                         dbo.Localidad ON dbo.Barrios.id_Localidad = dbo.Localidad.id_Localidad INNER JOIN
                         dbo.Provincia ON dbo.Localidad.id_Provincia = dbo.Provincia.id_Provincia INNER JOIN
                         dbo.Envios ON dbo.Barrios.id_Barrio = dbo.Envios.id_barrio
GROUP BY dbo.Provincia.nombre
GO
/****** Object:  View [dbo].[ReporteVentasEmpleado]    Script Date: 20/10/2020 16:47:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ReporteVentasEmpleado]
AS
SELECT        dbo.Empleados.cod_Empleado AS Codigo, dbo.Empleados.nombre AS Nombre, dbo.Empleados.apellido AS Apellido, COUNT(dbo.Facturas.numero) AS Cantidad
FROM            dbo.Facturas INNER JOIN
                         dbo.Empleados ON dbo.Facturas.cod_Empleado = dbo.Empleados.cod_Empleado
GROUP BY dbo.Empleados.cod_Empleado, dbo.Empleados.nombre, dbo.Empleados.apellido
GO
SET IDENTITY_INSERT [dbo].[Barrios] ON 

INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (1, N'Cordoba I', N'5000', 1)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (2, N'Cordoba II', N'5001', 1)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (3, N'Cruz del Eje I', N'5002', 2)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (4, N'Cruz del Eje II', N'5003', 2)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (5, N'Rio Segundo I', N'5004', 3)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (6, N'Rio Segundo II', N'5005', 3)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (7, N'La Plata I', N'5006', 4)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (8, N'La Plata II', N'5007', 4)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (9, N'Avellaneda I', N'5008', 5)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (10, N'Avellaneda II', N'5009', 5)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (11, N'Belgrano I', N'5010', 6)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (12, N'Belgrano II', N'5011', 6)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (14, N'Rosario I', N'5012', 7)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (19, N'Rosario II', N'5013', 7)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (27, N'Santa Rosa I', N'5014', 8)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (28, N'Santa Rosa II', N'5015', 8)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (29, N'Intendente Alvear I', N'5016', 9)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (30, N'Intendente Alvear II', N'5017', 9)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (31, N'Famatina I', N'7000', 10)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (32, N'Famatina II', N'7001', 10)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (33, N'Villa Castelli I', N'7002', 11)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (34, N'Villa Castelli II', N'7003', 11)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (35, N'La Paz I', N'7004', 15)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (36, N'La Paz II', N'7005', 15)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (37, N'Santa Maria I', N'7006', 19)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (38, N'Santa Maria II', N'7007', 19)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (39, N'Alberdi I', N'7008', 20)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (40, N'Alberdi II', N'7009', 20)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (41, N'Figueroa I', N'7010', 23)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (42, N'Figueroa II', N'7011', 23)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (43, N'General Paz I', N'7012', 24)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (44, N'General Paz II', N'7013', 24)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (45, N'Sauce I', N'7014', 27)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (46, N'Sauce II', N'7015', 27)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (47, N'San Lorenzo I', N'7016', 29)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (48, N'San Lorenzo II', N'7017', 29)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (49, N'Chacabuco I', N'7018', 30)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (50, N'Chacabuco II', N'7019', 30)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (51, N'Ushuaia I', N'7020', 31)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (52, N'Ushuaia II', N'7021', 31)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (53, N'Rio Grande I', N'6000', 32)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (54, N'Rio Grande II', N'6001', 32)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (55, N'Tilcara I', N'6002', 33)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (56, N'Tilcara II', N'6003', 33)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (57, N'San Pedro I', N'6004', 34)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (58, N'San Pedro II', N'6005', 34)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (59, N'San Rafael I', N'6006', 35)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (60, N'San Rafael II', N'6007', 35)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (61, N'Malargüe I', N'6008', 36)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (62, N'Malargüe II', N'6009', 36)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (63, N'Gaiman I', N'6010', 37)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (64, N'Gaiman II', N'6011', 37)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (65, N'Rawson I', N'6012', 38)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (66, N'Rawson II', N'6013', 38)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (67, N'25 de Mayo I', N'6014', 39)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (68, N'25 de Mayo II', N'6015', 39)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (69, N'San Antonio I', N'6017', 40)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (70, N'San Antonio II', N'6018', 40)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (71, N'Rio Chico I', N'6019', 41)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (72, N'Rio Chico II', N'6020', 41)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (73, N'Lago Argentino I', N'6021', 42)
INSERT [dbo].[Barrios] ([id_Barrio], [nombre], [cod_Postal], [id_Localidad]) VALUES (74, N'Lago Argentino II', N'6022', 42)
SET IDENTITY_INSERT [dbo].[Barrios] OFF
GO
SET IDENTITY_INSERT [dbo].[Calidad] ON 

INSERT [dbo].[Calidad] ([id_Calidad], [nombre], [habilitado]) VALUES (39, N'Excelente', N'si')
INSERT [dbo].[Calidad] ([id_Calidad], [nombre], [habilitado]) VALUES (40, N'Muy Bueno', N'si')
INSERT [dbo].[Calidad] ([id_Calidad], [nombre], [habilitado]) VALUES (41, N'Malo', N'si')
SET IDENTITY_INSERT [dbo].[Calidad] OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente_Proveedor] ON 

INSERT [dbo].[Cliente_Proveedor] ([id_Cliente_Proveedor], [nombre], [apellido], [razon_Social], [email], [telefono], [cod_Barrio], [id_Tipo], [CUIL_CUIT], [borrado]) VALUES (12, N'Facundo', N'Paz Fessia', N'Agronegocios S.A', N'facu@gmail.com', N'3513872138', 1, 1, N'20421063078', 0)
INSERT [dbo].[Cliente_Proveedor] ([id_Cliente_Proveedor], [nombre], [apellido], [razon_Social], [email], [telefono], [cod_Barrio], [id_Tipo], [CUIL_CUIT], [borrado]) VALUES (116, N'Nicolas', N'Mingorance', N'Agronegocios S.A', N'nico@gmail.com', N'3512456363', 2, 1, N'20422591819', 0)
INSERT [dbo].[Cliente_Proveedor] ([id_Cliente_Proveedor], [nombre], [apellido], [razon_Social], [email], [telefono], [cod_Barrio], [id_Tipo], [CUIL_CUIT], [borrado]) VALUES (117, N'Neuen', N'Actis', N'Agronegocios S.A', N'neuen@gmail.com', N'3513861578', 1, 1, N'20394743144', 0)
INSERT [dbo].[Cliente_Proveedor] ([id_Cliente_Proveedor], [nombre], [apellido], [razon_Social], [email], [telefono], [cod_Barrio], [id_Tipo], [CUIL_CUIT], [borrado]) VALUES (118, N'Neuen', N'Proveedor', N'Agronegocios S.A', N'neuen@gmail.com', N'3513861578', 1, 2, N'20421065558', 0)
INSERT [dbo].[Cliente_Proveedor] ([id_Cliente_Proveedor], [nombre], [apellido], [razon_Social], [email], [telefono], [cod_Barrio], [id_Tipo], [CUIL_CUIT], [borrado]) VALUES (119, N'Nicolas', N'Proveedor', N'Agronegocios S.A', N'nico@gmail.com', N'3512456363', 2, 2, N'20422591819', 0)
INSERT [dbo].[Cliente_Proveedor] ([id_Cliente_Proveedor], [nombre], [apellido], [razon_Social], [email], [telefono], [cod_Barrio], [id_Tipo], [CUIL_CUIT], [borrado]) VALUES (120, N'Facundo', N'Proveedor', N'Agronegocios S.A', N'facu@gmail.com', N'3513872138', 2, 2, N'20421063078', 0)
SET IDENTITY_INSERT [dbo].[Cliente_Proveedor] OFF
GO
INSERT [dbo].[Detalles_de_Facturas] ([id_Semilla], [tipo_Factura], [numero_Factura], [fecha_Entrega], [precio_Venta], [cantidad], [subtotal]) VALUES (29, N'A', 19, CAST(N'2020-10-16' AS Date), CAST(4000.00 AS Decimal(15, 2)), CAST(2.0000 AS Decimal(14, 4)), CAST(8000.00 AS Decimal(15, 2)))
INSERT [dbo].[Detalles_de_Facturas] ([id_Semilla], [tipo_Factura], [numero_Factura], [fecha_Entrega], [precio_Venta], [cantidad], [subtotal]) VALUES (29, N'A', 20, CAST(N'2020-10-14' AS Date), CAST(4000.00 AS Decimal(15, 2)), CAST(5.0000 AS Decimal(14, 4)), CAST(20000.00 AS Decimal(15, 2)))
INSERT [dbo].[Detalles_de_Facturas] ([id_Semilla], [tipo_Factura], [numero_Factura], [fecha_Entrega], [precio_Venta], [cantidad], [subtotal]) VALUES (29, N'A', 1019, NULL, CAST(4000.00 AS Decimal(15, 2)), CAST(5.0000 AS Decimal(14, 4)), CAST(20000.00 AS Decimal(15, 2)))
INSERT [dbo].[Detalles_de_Facturas] ([id_Semilla], [tipo_Factura], [numero_Factura], [fecha_Entrega], [precio_Venta], [cantidad], [subtotal]) VALUES (29, N'B', 18, CAST(N'2020-10-14' AS Date), CAST(4000.00 AS Decimal(15, 2)), CAST(10.0000 AS Decimal(14, 4)), CAST(40000.00 AS Decimal(15, 2)))
INSERT [dbo].[Detalles_de_Facturas] ([id_Semilla], [tipo_Factura], [numero_Factura], [fecha_Entrega], [precio_Venta], [cantidad], [subtotal]) VALUES (34, N'A', 1019, NULL, CAST(8.99 AS Decimal(15, 2)), CAST(3.0000 AS Decimal(14, 4)), CAST(26.97 AS Decimal(15, 2)))
INSERT [dbo].[Detalles_de_Facturas] ([id_Semilla], [tipo_Factura], [numero_Factura], [fecha_Entrega], [precio_Venta], [cantidad], [subtotal]) VALUES (34, N'A', 2018, CAST(N'2020-10-24' AS Date), CAST(8.99 AS Decimal(15, 2)), CAST(5.0000 AS Decimal(14, 4)), CAST(44.95 AS Decimal(15, 2)))
INSERT [dbo].[Detalles_de_Facturas] ([id_Semilla], [tipo_Factura], [numero_Factura], [fecha_Entrega], [precio_Venta], [cantidad], [subtotal]) VALUES (34, N'A', 2019, NULL, CAST(8.99 AS Decimal(15, 2)), CAST(2.0000 AS Decimal(14, 4)), CAST(17.98 AS Decimal(15, 2)))
INSERT [dbo].[Detalles_de_Facturas] ([id_Semilla], [tipo_Factura], [numero_Factura], [fecha_Entrega], [precio_Venta], [cantidad], [subtotal]) VALUES (42, N'A', 20, CAST(N'2020-10-14' AS Date), CAST(400.00 AS Decimal(15, 2)), CAST(10.0000 AS Decimal(14, 4)), CAST(4000.00 AS Decimal(15, 2)))
INSERT [dbo].[Detalles_de_Facturas] ([id_Semilla], [tipo_Factura], [numero_Factura], [fecha_Entrega], [precio_Venta], [cantidad], [subtotal]) VALUES (42, N'A', 1019, NULL, CAST(400.00 AS Decimal(15, 2)), CAST(6.0000 AS Decimal(14, 4)), CAST(2400.00 AS Decimal(15, 2)))
INSERT [dbo].[Detalles_de_Facturas] ([id_Semilla], [tipo_Factura], [numero_Factura], [fecha_Entrega], [precio_Venta], [cantidad], [subtotal]) VALUES (42, N'B', 18, CAST(N'2020-10-14' AS Date), CAST(400.00 AS Decimal(15, 2)), CAST(2.0000 AS Decimal(14, 4)), CAST(800.00 AS Decimal(15, 2)))
INSERT [dbo].[Detalles_de_Facturas] ([id_Semilla], [tipo_Factura], [numero_Factura], [fecha_Entrega], [precio_Venta], [cantidad], [subtotal]) VALUES (43, N'A', 17, CAST(N'2020-10-22' AS Date), CAST(150.00 AS Decimal(15, 2)), CAST(10.0000 AS Decimal(14, 4)), CAST(1500.00 AS Decimal(15, 2)))
INSERT [dbo].[Detalles_de_Facturas] ([id_Semilla], [tipo_Factura], [numero_Factura], [fecha_Entrega], [precio_Venta], [cantidad], [subtotal]) VALUES (43, N'A', 19, CAST(N'2020-10-16' AS Date), CAST(150.00 AS Decimal(15, 2)), CAST(21.0000 AS Decimal(14, 4)), CAST(3150.00 AS Decimal(15, 2)))
INSERT [dbo].[Detalles_de_Facturas] ([id_Semilla], [tipo_Factura], [numero_Factura], [fecha_Entrega], [precio_Venta], [cantidad], [subtotal]) VALUES (43, N'A', 1018, NULL, CAST(150.00 AS Decimal(15, 2)), CAST(2.0000 AS Decimal(14, 4)), CAST(300.00 AS Decimal(15, 2)))
INSERT [dbo].[Detalles_de_Facturas] ([id_Semilla], [tipo_Factura], [numero_Factura], [fecha_Entrega], [precio_Venta], [cantidad], [subtotal]) VALUES (43, N'A', 2018, CAST(N'2020-10-24' AS Date), CAST(150.00 AS Decimal(15, 2)), CAST(10.0000 AS Decimal(14, 4)), CAST(1500.00 AS Decimal(15, 2)))
INSERT [dbo].[Detalles_de_Facturas] ([id_Semilla], [tipo_Factura], [numero_Factura], [fecha_Entrega], [precio_Venta], [cantidad], [subtotal]) VALUES (1039, N'A', 2018, CAST(N'2020-10-24' AS Date), CAST(1250.33 AS Decimal(15, 2)), CAST(5.0000 AS Decimal(14, 4)), CAST(6251.67 AS Decimal(15, 2)))
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([cod_Empleado], [nombre], [apellido], [email], [fecha_Alta], [cod_barrio], [calle], [fecha_nacimiento], [tipo_Empleado], [contraseña], [usuario], [borrado], [telefono], [numero_casa]) VALUES (6, N'Cesar', N'Altamirano', N'cesar@gmail.com', CAST(N'2010-05-02' AS Date), 1, N'AV. Colon', CAST(N'2000-03-22' AS Date), 2, N'Cesar001', N'CAltamir', 0, N'1235468648', N'1234')
INSERT [dbo].[Empleados] ([cod_Empleado], [nombre], [apellido], [email], [fecha_Alta], [cod_barrio], [calle], [fecha_nacimiento], [tipo_Empleado], [contraseña], [usuario], [borrado], [telefono], [numero_casa]) VALUES (7, N'Neuen', N'Actis', N'neuen@gmail.com', CAST(N'2010-04-22' AS Date), 2, N'9 de Julio', CAST(N'2000-04-14' AS Date), 2, N'neuen002', N'NActis00', 0, N'351465789164', N'3541')
INSERT [dbo].[Empleados] ([cod_Empleado], [nombre], [apellido], [email], [fecha_Alta], [cod_barrio], [calle], [fecha_nacimiento], [tipo_Empleado], [contraseña], [usuario], [borrado], [telefono], [numero_casa]) VALUES (8, N'Administrador', N'Administrador', N'admin@admin', CAST(N'1999-04-01' AS Date), 2, N'X', CAST(N'1999-09-09' AS Date), 1, N'12345678', N'admin', 0, N'X', N'X')
INSERT [dbo].[Empleados] ([cod_Empleado], [nombre], [apellido], [email], [fecha_Alta], [cod_barrio], [calle], [fecha_nacimiento], [tipo_Empleado], [contraseña], [usuario], [borrado], [telefono], [numero_casa]) VALUES (11, N'Facundo', N'Paz Fessia', N'facu@gmail.com', CAST(N'2020-09-22' AS Date), 1, N'Manuel de Falla', CAST(N'1999-07-21' AS Date), 2, N'2020PAVI', N'FacuEmp1', 0, N'3512648593', N'5412')
INSERT [dbo].[Empleados] ([cod_Empleado], [nombre], [apellido], [email], [fecha_Alta], [cod_barrio], [calle], [fecha_nacimiento], [tipo_Empleado], [contraseña], [usuario], [borrado], [telefono], [numero_casa]) VALUES (13, N'Nicolas', N'Mingorance', N'nico@gmail.com', CAST(N'2020-09-22' AS Date), 2, N'Henry Aran', CAST(N'1999-07-21' AS Date), 2, N'DOU     ', N'NicoEmp1', 0, N'351211233', N'3382')
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[Empresa_Transporte] ON 

INSERT [dbo].[Empresa_Transporte] ([id_Empresa], [descripcion], [razon_social], [telefono], [direccion], [id_barrio], [borrado]) VALUES (1, N'SA Semilla', N'Semillas S.A', N'35124865', N'Chile 445', 1, 0)
INSERT [dbo].[Empresa_Transporte] ([id_Empresa], [descripcion], [razon_social], [telefono], [direccion], [id_barrio], [borrado]) VALUES (2, N'Caminos del Sur', N'Caminos del Sur SA', N'3512458754', N'Juan B Justo 365', 2, 0)
SET IDENTITY_INSERT [dbo].[Empresa_Transporte] OFF
GO
SET IDENTITY_INSERT [dbo].[Envios] ON 

INSERT [dbo].[Envios] ([id_Factura], [tipo_Factura], [nro_envio], [fecha_Hora_envio], [id_Empresa_Transporte], [direccion], [id_barrio]) VALUES (17, N'A', 5, CAST(N'2020-10-22' AS Date), 1, N'Argentina 2013', 2)
INSERT [dbo].[Envios] ([id_Factura], [tipo_Factura], [nro_envio], [fecha_Hora_envio], [id_Empresa_Transporte], [direccion], [id_barrio]) VALUES (18, N'B', 6, CAST(N'2020-10-14' AS Date), 1, N'Santa Cruz 2432', 57)
INSERT [dbo].[Envios] ([id_Factura], [tipo_Factura], [nro_envio], [fecha_Hora_envio], [id_Empresa_Transporte], [direccion], [id_barrio]) VALUES (19, N'A', 7, CAST(N'2020-10-16' AS Date), 1, N'Santa Rosa 456', 4)
INSERT [dbo].[Envios] ([id_Factura], [tipo_Factura], [nro_envio], [fecha_Hora_envio], [id_Empresa_Transporte], [direccion], [id_barrio]) VALUES (20, N'A', 8, CAST(N'2020-10-14' AS Date), 1, N'Argentina 1234', 2)
INSERT [dbo].[Envios] ([id_Factura], [tipo_Factura], [nro_envio], [fecha_Hora_envio], [id_Empresa_Transporte], [direccion], [id_barrio]) VALUES (2018, N'A', 1006, CAST(N'2020-10-24' AS Date), 2, N'Belgrano 504', 12)
SET IDENTITY_INSERT [dbo].[Envios] OFF
GO
SET IDENTITY_INSERT [dbo].[Facturas] ON 

INSERT [dbo].[Facturas] ([tipo_Factura], [numero], [fecha_Factura], [total], [cod_Empleado], [id_cliente_Proveedor]) VALUES (N'A', 17, CAST(N'2020-10-12' AS Date), CAST(1500.00 AS Decimal(15, 2)), 6, 116)
INSERT [dbo].[Facturas] ([tipo_Factura], [numero], [fecha_Factura], [total], [cod_Empleado], [id_cliente_Proveedor]) VALUES (N'A', 19, CAST(N'2020-10-14' AS Date), CAST(11150.00 AS Decimal(15, 2)), 13, 117)
INSERT [dbo].[Facturas] ([tipo_Factura], [numero], [fecha_Factura], [total], [cod_Empleado], [id_cliente_Proveedor]) VALUES (N'A', 20, CAST(N'2020-10-14' AS Date), CAST(24000.00 AS Decimal(15, 2)), 8, 116)
INSERT [dbo].[Facturas] ([tipo_Factura], [numero], [fecha_Factura], [total], [cod_Empleado], [id_cliente_Proveedor]) VALUES (N'A', 1018, CAST(N'2020-10-18' AS Date), CAST(300.00 AS Decimal(15, 2)), 8, 116)
INSERT [dbo].[Facturas] ([tipo_Factura], [numero], [fecha_Factura], [total], [cod_Empleado], [id_cliente_Proveedor]) VALUES (N'A', 1019, CAST(N'2020-10-18' AS Date), CAST(22426.97 AS Decimal(15, 2)), 8, 12)
INSERT [dbo].[Facturas] ([tipo_Factura], [numero], [fecha_Factura], [total], [cod_Empleado], [id_cliente_Proveedor]) VALUES (N'A', 2018, CAST(N'2020-10-20' AS Date), CAST(7796.62 AS Decimal(15, 2)), 8, 117)
INSERT [dbo].[Facturas] ([tipo_Factura], [numero], [fecha_Factura], [total], [cod_Empleado], [id_cliente_Proveedor]) VALUES (N'A', 2019, CAST(N'2020-10-20' AS Date), CAST(17.98 AS Decimal(15, 2)), 8, 116)
INSERT [dbo].[Facturas] ([tipo_Factura], [numero], [fecha_Factura], [total], [cod_Empleado], [id_cliente_Proveedor]) VALUES (N'B', 18, CAST(N'2020-10-14' AS Date), CAST(40800.00 AS Decimal(15, 2)), 8, 117)
SET IDENTITY_INSERT [dbo].[Facturas] OFF
GO
SET IDENTITY_INSERT [dbo].[Forma_PagoXfactura] ON 

INSERT [dbo].[Forma_PagoXfactura] ([id_Forma_Pago], [tipo_Factura], [numero_Factura], [monto], [dias_de_Plazo], [id_FormaPagoXfactura]) VALUES (1, N'A', 17, CAST(700.00 AS Decimal(15, 2)), 0, 1)
INSERT [dbo].[Forma_PagoXfactura] ([id_Forma_Pago], [tipo_Factura], [numero_Factura], [monto], [dias_de_Plazo], [id_FormaPagoXfactura]) VALUES (1, N'A', 17, CAST(800.00 AS Decimal(15, 2)), 0, 2)
INSERT [dbo].[Forma_PagoXfactura] ([id_Forma_Pago], [tipo_Factura], [numero_Factura], [monto], [dias_de_Plazo], [id_FormaPagoXfactura]) VALUES (1, N'B', 18, CAST(40800.00 AS Decimal(15, 2)), 0, 3)
INSERT [dbo].[Forma_PagoXfactura] ([id_Forma_Pago], [tipo_Factura], [numero_Factura], [monto], [dias_de_Plazo], [id_FormaPagoXfactura]) VALUES (2, N'A', 19, CAST(11000.00 AS Decimal(15, 2)), 10, 4)
INSERT [dbo].[Forma_PagoXfactura] ([id_Forma_Pago], [tipo_Factura], [numero_Factura], [monto], [dias_de_Plazo], [id_FormaPagoXfactura]) VALUES (1, N'A', 19, CAST(150.00 AS Decimal(15, 2)), 0, 5)
INSERT [dbo].[Forma_PagoXfactura] ([id_Forma_Pago], [tipo_Factura], [numero_Factura], [monto], [dias_de_Plazo], [id_FormaPagoXfactura]) VALUES (1, N'A', 20, CAST(24000.00 AS Decimal(15, 2)), 0, 6)
INSERT [dbo].[Forma_PagoXfactura] ([id_Forma_Pago], [tipo_Factura], [numero_Factura], [monto], [dias_de_Plazo], [id_FormaPagoXfactura]) VALUES (1, N'A', 1018, CAST(300.00 AS Decimal(15, 2)), 0, 1003)
INSERT [dbo].[Forma_PagoXfactura] ([id_Forma_Pago], [tipo_Factura], [numero_Factura], [monto], [dias_de_Plazo], [id_FormaPagoXfactura]) VALUES (1, N'A', 1019, CAST(22426.97 AS Decimal(15, 2)), 0, 1004)
INSERT [dbo].[Forma_PagoXfactura] ([id_Forma_Pago], [tipo_Factura], [numero_Factura], [monto], [dias_de_Plazo], [id_FormaPagoXfactura]) VALUES (2, N'A', 2018, CAST(7000.00 AS Decimal(15, 2)), 14, 2003)
INSERT [dbo].[Forma_PagoXfactura] ([id_Forma_Pago], [tipo_Factura], [numero_Factura], [monto], [dias_de_Plazo], [id_FormaPagoXfactura]) VALUES (1, N'A', 2018, CAST(796.62 AS Decimal(15, 2)), 0, 2004)
INSERT [dbo].[Forma_PagoXfactura] ([id_Forma_Pago], [tipo_Factura], [numero_Factura], [monto], [dias_de_Plazo], [id_FormaPagoXfactura]) VALUES (1, N'A', 2019, CAST(10.00 AS Decimal(15, 2)), 0, 2005)
SET IDENTITY_INSERT [dbo].[Forma_PagoXfactura] OFF
GO
SET IDENTITY_INSERT [dbo].[Formas_Pagos] ON 

INSERT [dbo].[Formas_Pagos] ([id_Pago], [nombre], [descripcion]) VALUES (1, N'Efectivo', N'Pago mediante moneda local')
INSERT [dbo].[Formas_Pagos] ([id_Pago], [nombre], [descripcion]) VALUES (2, N'Cheque', N'Pago mediante cheque emitido por un banco')
SET IDENTITY_INSERT [dbo].[Formas_Pagos] OFF
GO
SET IDENTITY_INSERT [dbo].[Localidad] ON 

INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (1, N'Cordoba', 1)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (2, N'Cruz del Eje', 1)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (3, N'Rio Segundo', 1)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (4, N'La Plata', 2)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (5, N'Avellaneda', 2)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (6, N'Belgrano', 3)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (7, N'Rosario', 3)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (8, N'Santa Rosa', 4)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (9, N'Intendente Alvear', 4)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (10, N'Famatina', 5)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (11, N'Villa Castelli', 5)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (15, N'La Paz', 6)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (19, N'Santa Maria', 6)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (20, N'Alberdi', 7)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (23, N'Figueroa', 7)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (24, N'General Paz', 8)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (27, N'Sauce', 8)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (29, N'San Lorenzo', 13)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (30, N'Chacabuco', 13)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (31, N'Ushuaia', 14)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (32, N'Rio Grande', 14)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (33, N'Tilcara', 16)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (34, N'San Pedro', 16)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (35, N'San Rafael', 22)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (36, N'Malargüe', 22)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (37, N'Gaiman', 23)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (38, N'Rawson', 23)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (39, N'25 de Mayo', 25)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (40, N'San Antonio', 25)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (41, N'Rio Chico', 26)
INSERT [dbo].[Localidad] ([id_Localidad], [nombre], [id_Provincia]) VALUES (42, N'Lago Argentino', 26)
SET IDENTITY_INSERT [dbo].[Localidad] OFF
GO
SET IDENTITY_INSERT [dbo].[Provincia] ON 

INSERT [dbo].[Provincia] ([id_Provincia], [nombre]) VALUES (1, N'Cordoba')
INSERT [dbo].[Provincia] ([id_Provincia], [nombre]) VALUES (2, N'Buenos Aires')
INSERT [dbo].[Provincia] ([id_Provincia], [nombre]) VALUES (3, N'Santa Fe')
INSERT [dbo].[Provincia] ([id_Provincia], [nombre]) VALUES (4, N'La Pampa')
INSERT [dbo].[Provincia] ([id_Provincia], [nombre]) VALUES (5, N'La Rioja')
INSERT [dbo].[Provincia] ([id_Provincia], [nombre]) VALUES (6, N'Catamarca')
INSERT [dbo].[Provincia] ([id_Provincia], [nombre]) VALUES (7, N'Santiago del Estero')
INSERT [dbo].[Provincia] ([id_Provincia], [nombre]) VALUES (8, N'Corrientes')
INSERT [dbo].[Provincia] ([id_Provincia], [nombre]) VALUES (13, N'Chaco')
INSERT [dbo].[Provincia] ([id_Provincia], [nombre]) VALUES (14, N'Tierra del Fuego')
INSERT [dbo].[Provincia] ([id_Provincia], [nombre]) VALUES (16, N'Jujuy')
INSERT [dbo].[Provincia] ([id_Provincia], [nombre]) VALUES (22, N'Mendoza')
INSERT [dbo].[Provincia] ([id_Provincia], [nombre]) VALUES (23, N'Chubut')
INSERT [dbo].[Provincia] ([id_Provincia], [nombre]) VALUES (25, N'Rio Negro')
INSERT [dbo].[Provincia] ([id_Provincia], [nombre]) VALUES (26, N'Santa Cruz')
SET IDENTITY_INSERT [dbo].[Provincia] OFF
GO
SET IDENTITY_INSERT [dbo].[Semilla] ON 

INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (29, N'Soja', CAST(3000.00 AS Decimal(10, 2)), CAST(2000.00 AS Decimal(10, 2)), CAST(3055.000 AS Decimal(15, 3)), N'Cosecha 2020', N'si', 0)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (30, N'Soja', CAST(299.00 AS Decimal(10, 2)), CAST(99.00 AS Decimal(10, 2)), CAST(99.000 AS Decimal(15, 3)), N'Cosecha 2020 Julio', N'si', 1)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (31, N'Chia', CAST(770000.00 AS Decimal(10, 2)), CAST(33.00 AS Decimal(10, 2)), CAST(333.000 AS Decimal(15, 3)), N'Cosecha Agosto 2020', N'SI', 0)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (34, N'Trigo', CAST(3333.00 AS Decimal(10, 2)), CAST(35555.00 AS Decimal(10, 2)), CAST(8.990 AS Decimal(15, 3)), N'33dw', N'si', 0)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (35, N'Trigo', CAST(10.00 AS Decimal(10, 2)), CAST(44.00 AS Decimal(10, 2)), CAST(9.990 AS Decimal(15, 3)), N'', N'si', 1)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (37, N'Maíz', CAST(3000.00 AS Decimal(10, 2)), CAST(5000.00 AS Decimal(10, 2)), CAST(100.000 AS Decimal(15, 3)), N'No se han perdido semillas', N'si', 1)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (39, N'Porotos', CAST(1000.00 AS Decimal(10, 2)), CAST(1500.00 AS Decimal(10, 2)), CAST(100.000 AS Decimal(15, 3)), N'Cosecha 2020 Julio', N'si', 1)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (40, N'Nueces', CAST(1000.00 AS Decimal(10, 2)), CAST(1500.00 AS Decimal(10, 2)), CAST(200.000 AS Decimal(15, 3)), N'Cosecha 2021', N'si', 1)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (41, N'Soja', CAST(1000.00 AS Decimal(10, 2)), CAST(1500.00 AS Decimal(10, 2)), CAST(150.000 AS Decimal(15, 3)), N'cosecha de julio', N'si', 1)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (42, N'Maiz', CAST(1000.00 AS Decimal(10, 2)), CAST(2000.00 AS Decimal(10, 2)), CAST(310.000 AS Decimal(15, 3)), N'Cosecha 2020 Agost', N'si', 0)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (43, N'Poroto', CAST(1000.00 AS Decimal(10, 2)), CAST(1500.00 AS Decimal(10, 2)), CAST(100.000 AS Decimal(15, 3)), N'Cosecha 2020', N'si', 0)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (44, N'Chia', CAST(1500.00 AS Decimal(10, 2)), CAST(3000.00 AS Decimal(10, 2)), CAST(1000.000 AS Decimal(15, 3)), N'Cosecha 2020 Julio', N'si', 1)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (45, N'Cáñamo', CAST(1000.00 AS Decimal(10, 2)), CAST(1025.00 AS Decimal(10, 2)), CAST(150.000 AS Decimal(15, 3)), N'Cosecha 2020', N'si', 1)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (46, N'Granada', CAST(1000.00 AS Decimal(10, 2)), CAST(1500.00 AS Decimal(10, 2)), CAST(250.000 AS Decimal(15, 3)), N'Cosecha 2020', N'si', 1)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (47, N'Granada', CAST(1000.00 AS Decimal(10, 2)), CAST(1500.00 AS Decimal(10, 2)), CAST(100.000 AS Decimal(15, 3)), N'Csaad', N'si', 1)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (48, N'Granada', CAST(413.00 AS Decimal(10, 2)), CAST(13131.00 AS Decimal(10, 2)), CAST(1313.000 AS Decimal(15, 3)), N'231351', N'si', 1)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (49, N'dadsdas', CAST(5465.00 AS Decimal(10, 2)), CAST(45445.00 AS Decimal(10, 2)), CAST(4545.000 AS Decimal(15, 3)), N'sdaddaa', N'si', 1)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (50, N'sadda', CAST(13541.00 AS Decimal(10, 2)), CAST(321321.00 AS Decimal(10, 2)), CAST(321321.000 AS Decimal(15, 3)), N'dadaad', N'si', 1)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (51, N'Granada', CAST(63546555.00 AS Decimal(10, 2)), CAST(45544.00 AS Decimal(10, 2)), CAST(5454.000 AS Decimal(15, 3)), N'affaeef', N'si', 1)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (52, N'Granada', CAST(1000.00 AS Decimal(10, 2)), CAST(1500.00 AS Decimal(10, 2)), CAST(100.000 AS Decimal(15, 3)), N'Cosecha 2020', N'si', 1)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (1037, N'Centeno', CAST(1000.00 AS Decimal(10, 2)), CAST(5000.00 AS Decimal(10, 2)), CAST(5000.000 AS Decimal(15, 3)), N'Cosecha29', N'si', 0)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (1038, N'Centeno', CAST(1000.00 AS Decimal(10, 2)), CAST(1500.00 AS Decimal(10, 2)), CAST(1000.000 AS Decimal(15, 3)), N'Cosecha 2020', N'si', 1)
INSERT [dbo].[Semilla] ([id_Semilla], [nombre], [stock_Minimo], [stock], [precio_Tonelada], [descripcion], [habilitado], [borrado]) VALUES (1039, N'Centeno', CAST(1000.00 AS Decimal(10, 2)), CAST(1500.00 AS Decimal(10, 2)), CAST(1000.000 AS Decimal(15, 3)), N'Cosecha 2020', N'si', 0)
SET IDENTITY_INSERT [dbo].[Semilla] OFF
GO
INSERT [dbo].[Tipo_Cliente_Proveedor] ([id_Tipo], [nombre]) VALUES (1, N'Cliente')
INSERT [dbo].[Tipo_Cliente_Proveedor] ([id_Tipo], [nombre]) VALUES (2, N'Proveedor')
GO
INSERT [dbo].[Tipo_Empleados] ([id_tipo_Empleado], [nombre]) VALUES (1, N'SuperUsuario')
INSERT [dbo].[Tipo_Empleados] ([id_tipo_Empleado], [nombre]) VALUES (2, N'Vendedor')
GO
SET IDENTITY_INSERT [dbo].[Tipo_Semilla] ON 

INSERT [dbo].[Tipo_Semilla] ([id_Tipo_Semilla], [nombre], [habilitado]) VALUES (23, N'Importada', N'si')
INSERT [dbo].[Tipo_Semilla] ([id_Tipo_Semilla], [nombre], [habilitado]) VALUES (24, N'Nacional', N'si')
INSERT [dbo].[Tipo_Semilla] ([id_Tipo_Semilla], [nombre], [habilitado]) VALUES (25, N'Victoria', N'si')
INSERT [dbo].[Tipo_Semilla] ([id_Tipo_Semilla], [nombre], [habilitado]) VALUES (26, N'Monarca', N'si')
SET IDENTITY_INSERT [dbo].[Tipo_Semilla] OFF
GO
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (29, 23, 39, CAST(4000.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (30, 23, 40, CAST(30000.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (31, 25, 40, CAST(222.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (34, 23, 39, CAST(8.990 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (35, 26, 40, CAST(9.990 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (37, 24, 39, CAST(150.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (37, 25, 39, CAST(400.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (39, 24, 39, CAST(150.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (40, 24, 40, CAST(225.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (41, 24, 39, CAST(200.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (42, 24, 40, CAST(400.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (43, 24, 40, CAST(150.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (44, 24, 40, CAST(1150.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (45, 24, 40, CAST(100.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (46, 24, 39, CAST(300.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (47, 25, 39, CAST(5000.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (48, 24, 39, CAST(245.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (49, 24, 39, CAST(41151.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (50, 23, 39, CAST(321.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (51, 23, 39, CAST(156.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (52, 23, 39, CAST(150.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (1038, 24, 40, CAST(135525.000 AS Decimal(15, 3)))
INSERT [dbo].[TiposXsemillas] ([id_Semilla], [id_Tipo_Semilla], [id_Calidad], [precio_sugerido]) VALUES (1039, 23, 39, CAST(1250.333 AS Decimal(15, 3)))
GO
/****** Object:  Index [IX_Calidad]    Script Date: 20/10/2020 16:47:58 ******/
ALTER TABLE [dbo].[Calidad] ADD  CONSTRAINT [IX_Calidad] UNIQUE NONCLUSTERED 
(
	[id_Calidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Semilla]    Script Date: 20/10/2020 16:47:58 ******/
CREATE NONCLUSTERED INDEX [IX_Semilla] ON [dbo].[Semilla]
(
	[id_Semilla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Calidad] ADD  CONSTRAINT [DF_Calidad_habilitado]  DEFAULT ('si') FOR [habilitado]
GO
ALTER TABLE [dbo].[Cliente_Proveedor] ADD  CONSTRAINT [borrado_act]  DEFAULT ((0)) FOR [borrado]
GO
ALTER TABLE [dbo].[Empresa_Transporte] ADD  DEFAULT ((0)) FOR [borrado]
GO
ALTER TABLE [dbo].[Semilla] ADD  CONSTRAINT [DF_Semilla_habilitado]  DEFAULT ('si') FOR [habilitado]
GO
ALTER TABLE [dbo].[Semilla] ADD  DEFAULT ((0)) FOR [borrado]
GO
ALTER TABLE [dbo].[Tipo_Semilla] ADD  CONSTRAINT [DF_Tipo_Semilla_habilitado]  DEFAULT ('si') FOR [habilitado]
GO
ALTER TABLE [dbo].[Barrios]  WITH CHECK ADD  CONSTRAINT [FK_Barrios_Localidad] FOREIGN KEY([id_Localidad])
REFERENCES [dbo].[Localidad] ([id_Localidad])
GO
ALTER TABLE [dbo].[Barrios] CHECK CONSTRAINT [FK_Barrios_Localidad]
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
REFERENCES [dbo].[Cliente_Proveedor] ([id_Cliente_Proveedor])
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
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Facturas"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Cliente_Proveedor"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 136
               Right = 474
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EstClientesVentaP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EstClientesVentaP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Facturas"
            Begin Extent = 
               Top = 33
               Left = 457
               Bottom = 163
               Right = 655
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Detalles_de_Facturas"
            Begin Extent = 
               Top = 53
               Left = 852
               Bottom = 183
               Right = 1027
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Cliente_Proveedor"
            Begin Extent = 
               Top = 107
               Left = 116
               Bottom = 237
               Right = 316
            End
            DisplayFlags = 280
            TopColumn = 6
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EstClientesVentas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EstClientesVentas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Envios"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 248
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Empresa_Transporte"
            Begin Extent = 
               Top = 138
               Left = 433
               Bottom = 268
               Right = 603
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EstEnviosEmp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EstEnviosEmp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Facturas_1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Provincia"
            Begin Extent = 
               Top = 105
               Left = 1202
               Bottom = 201
               Right = 1372
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Localidad"
            Begin Extent = 
               Top = 8
               Left = 974
               Bottom = 121
               Right = 1144
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Barrios"
            Begin Extent = 
               Top = 107
               Left = 689
               Bottom = 237
               Right = 859
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Envios_1"
            Begin Extent = 
               Top = 149
               Left = 364
               Bottom = 279
               Right = 574
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
     ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EstPorcVentasXEmpleado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'    Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EstPorcVentasXEmpleado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EstPorcVentasXEmpleado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Facturas"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Empleados"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 136
               Right = 457
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EstVentasEmpleados'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EstVentasEmpleados'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Detalles_de_Facturas"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Semilla"
            Begin Extent = 
               Top = 6
               Left = 251
               Bottom = 136
               Right = 426
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EstVentasSemillas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'EstVentasSemillas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Empleados"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReporteAntigEmpleados'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReporteAntigEmpleados'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Calidad"
            Begin Extent = 
               Top = 201
               Left = 679
               Bottom = 314
               Right = 849
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Detalles_de_Facturas"
            Begin Extent = 
               Top = 20
               Left = 196
               Bottom = 201
               Right = 371
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Facturas"
            Begin Extent = 
               Top = 147
               Left = 440
               Bottom = 277
               Right = 638
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Semilla"
            Begin Extent = 
               Top = 6
               Left = 695
               Bottom = 136
               Right = 870
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TiposXsemillas"
            Begin Extent = 
               Top = 95
               Left = 929
               Bottom = 225
               Right = 1102
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tipo_Semilla"
            Begin Extent = 
               Top = 50
               Left = 1186
               Bottom = 163
               Right = 1356
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
        ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReporteDetFactura'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReporteDetFactura'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReporteDetFactura'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Envios"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 248
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Empresa_Transporte"
            Begin Extent = 
               Top = 86
               Left = 390
               Bottom = 216
               Right = 560
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReporteEnviosEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReporteEnviosEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Barrios"
            Begin Extent = 
               Top = 39
               Left = 417
               Bottom = 169
               Right = 587
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Localidad"
            Begin Extent = 
               Top = 46
               Left = 683
               Bottom = 159
               Right = 853
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Provincia"
            Begin Extent = 
               Top = 63
               Left = 994
               Bottom = 159
               Right = 1164
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Envios"
            Begin Extent = 
               Top = 44
               Left = 89
               Bottom = 174
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReporteEnviosProv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReporteEnviosProv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Facturas"
            Begin Extent = 
               Top = 31
               Left = 100
               Bottom = 161
               Right = 298
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Empleados"
            Begin Extent = 
               Top = 122
               Left = 467
               Bottom = 252
               Right = 650
            End
            DisplayFlags = 280
            TopColumn = 10
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReporteVentasEmpleado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReporteVentasEmpleado'
GO
USE [master]
GO
ALTER DATABASE [Agronegocios] SET  READ_WRITE 
GO
