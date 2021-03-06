﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ProyectoAgronegocios.Entities;

namespace ProyectoAgronegocios.DataAccessLayer
{
    class SemillaDAO
    {
        private string strSQL;

        // ----------------------------- Consultas
        public DataTable consultarSemillasSinParametros()
        {
            strSQL =    "SELECT " +
                          "  s.id_Semilla AS 'ID'," +
	                      "  s.nombre AS 'Nombre'," +
	                      "  s.stock AS 'Stock',"   +
	                      "  s.precio_Tonelada AS 'Precio Por Tonelada'," +
	                      "  ts.nombre AS 'Tipo de Semilla',"  +
	                      "  c.nombre AS 'Calidad'" +
                        "FROM Semilla s "+
                        "JOIN TiposXsemillas tp ON s.id_Semilla = tp.id_Semilla "+
                        "JOIN Tipo_Semilla ts ON tp.id_Tipo_Semilla = ts.id_Tipo_Semilla "+ 
                        "JOIN Calidad c ON tp.id_Calidad = c.id_Calidad "+
                        "WHERE s.borrado = 0"; 
            return DataManager.GetInstance().ConsultaSQL(strSQL);
        }
        public DataTable consultarSemillasConFiltros(string condiciones)
        {
            strSQL = "SELECT " +
                          "  s.id_Semilla AS 'ID'," +
                          "  s.nombre AS 'Nombre'," +
                          "  s.stock AS 'Stock'," +
                          "  s.precio_Tonelada AS 'Precio Por Tonelada'," +
                          "  ts.nombre AS 'Tipo de Semilla'," +
                          "  c.nombre AS 'Calidad'" +
                        "FROM Semilla s " +
                        "JOIN TiposXsemillas tp ON s.id_Semilla = tp.id_Semilla " +
                        "JOIN Tipo_Semilla ts ON tp.id_Tipo_Semilla = ts.id_Tipo_Semilla " +
                        "JOIN Calidad c ON tp.id_Calidad = c.id_Calidad " +
                        "WHERE s.borrado = 0" +
                        condiciones;

            return DataManager.GetInstance().ConsultaSQL(strSQL);
        }
        public DataTable recuperarSemillasPorID(int id)
        {
            strSQL = "SELECT "
                            +" s.nombre AS 'Nombre',"
	                        +" s.stock_Minimo AS 'Stock Minimo',"
	                        +" s.stock AS 'Stock',"
	                        +" s.precio_Tonelada AS 'Precio Por Tonelada',"
	                        +" s.habilitado AS 'Habilitado',"
	                        +" s.descripcion AS 'Descripcion',"
	                        +" tp.precio_sugerido AS 'Precio Sugerido',"
	                        +" ts.id_Tipo_Semilla AS 'Tipo de Semilla',"
                            +" c.id_Calidad AS 'Calidad',"
                            +" ts.nombre AS 'Nombre Tipo Semilla',"
                            +" c.nombre AS 'Nombre Calidad'"
                        + " FROM Semilla s"
                        +" JOIN TiposXsemillas tp ON s.id_Semilla = tp.id_Semilla"
                        +" JOIN Tipo_Semilla ts ON tp.id_Tipo_Semilla = ts.id_Tipo_Semilla"
                        +" JOIN Calidad c ON tp.id_Calidad = c.id_Calidad"
                        +" WHERE s.borrado = 0 AND s.id_Semilla = " + id.ToString();
            
            return DataManager.GetInstance().ConsultaSQL(strSQL);
        }

        // ----------------------------  Alta
        public void crearNuevaSemilla(Semilla semilla, TiposXsemillas tipos_x_semillas)
        {
            DataManager dm = new DataManager();
            try
            {
                dm.Open();
                dm.BeginTransaction();


                string cSQL = "INSERT INTO Semilla (nombre, stock_Minimo, stock, precio_Tonelada, descripcion, habilitado, borrado)" +
                     "VALUES( '"
                     + semilla.Nombre + "', "
                     + semilla.Stock_minimo + ", "
                     + semilla.Stock + ", "
                     + semilla.Precio_x_tonelada.ToString().Replace(",", ".") + ", "
                     + "'" + semilla.Descripcion + "', "
                     + "'" + semilla.Habilitado + "', "
                     + semilla.Borrado + ") ";
                dm.EjecutarSQL(cSQL);

                tipos_x_semillas.Id_semilla = Convert.ToInt32(dm.ConsultaSQLScalar("SELECT @@IDENTITY AS 'PK_Semilla'"));

                cSQL = "INSERT INTO TiposXsemillas (id_Semilla, id_Tipo_Semilla, id_Calidad, precio_sugerido)" +
                 "VALUES( "
                 + tipos_x_semillas.Id_semilla + ", "
                 + tipos_x_semillas.Id_tipo_semilla + ", "
                 + tipos_x_semillas.Id_calidad + ", "
                 + tipos_x_semillas.Precio_sugerido.ToString().Replace(",", ".") + ")";
                dm.EjecutarSQL(cSQL);

                
                
                dm.Commit();
            }

            catch (Exception ex)
            {
                dm.Rollback();
                throw ex;
            }
            finally
            {
                dm.Close();
            }                        
        }

        // ----------------------------  Modificar
        public void modificarSemilla(Semilla semilla, TiposXsemillas tipos_x_semillas)
        {
            strSQL = "UPDATE Semilla SET " 
                + "nombre = '" + semilla.Nombre + "', "
                + "stock_Minimo = " + semilla.Stock_minimo + ", "
                + "stock = " + semilla.Stock + ", "
                + "precio_Tonelada = " + semilla.Precio_x_tonelada.ToString().Replace(",", ".") + ", "
                + "descripcion = '" + semilla.Descripcion + "', "
                + "habilitado = '" + semilla.Habilitado + "' "
                + "WHERE id_Semilla = " + semilla.Id_semilla;
            
            DataManager.GetInstance().EjecutarSQL(strSQL);

            strSQL = "UPDATE TiposXsemillas SET "
                + "id_Tipo_Semilla = " + tipos_x_semillas.Id_tipo_semilla + ", "
                + "id_Calidad = " + tipos_x_semillas.Id_calidad + ", "
                + "precio_sugerido = " + tipos_x_semillas.Precio_sugerido.ToString().Replace(",", ".") + " "
                + " WHERE id_Semilla = " + tipos_x_semillas.Id_semilla;
            DataManager.GetInstance().EjecutarSQL(strSQL);
        }

        // ----------------------------  Baja
        public void borrarSemilla(int id)
        {
            strSQL = "UPDATE Semilla SET "
                + "borrado = " + 1
                + " WHERE id_Semilla =" + id;
            DataManager.GetInstance().EjecutarSQL(strSQL);
        }

        public DataTable recuperarVentasSemilla(DateTime fd, DateTime fh)
        {
            string consulta;
            consulta = "SELECT TOP(10) s.nombre, SUM(df.cantidad) as CantSemilla " +
                        " FROM Semilla s " +
                        " JOIN Detalles_de_Facturas df ON s.id_Semilla = df.id_Semilla" +
                        " JOIN Facturas f ON (df.tipo_Factura = f.tipo_Factura AND df.numero_Factura = f.numero)" +
                        " WHERE s.borrado = 0 AND f.fecha_Factura BETWEEN '" + fd.ToString("yyyy-MM-dd") + "' AND '" + fh.ToString("yyyy-MM-dd") + "' "+
                        " GROUP BY s.nombre" +
                        " ORDER BY CantSemilla DESC";


        return DataManager.GetInstance().ConsultaSQL(consulta);
        }

    }
}
