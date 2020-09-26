﻿using ProyectoAgronegocios.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProyectoAgronegocios.DataAccessLayer
{
    class FacturaDAO
    {
       
        public void InsertarFactura(Factura fact, List<DetalleFactura> lista)
        {
            DataManager dm = new DataManager();
            try
            {
                dm.Open();
                dm.BeginTransaction();


                string cSQL = "INSERT INTO Facturas (tipo_Factura, fecha_Factura, total, cod_Empleado, id_cliente_Proveedor) VALUES"
                                 + " ('"
                                 + fact.Tipo_factura + "', '"
                                 + fact.Fecha_Factura.ToString("yyyy-MM-dd") + "', "
                                 + fact.Total + ", "
                                 + fact.Cod_Empleado + ", "
                                 + fact.Id_cliente + ")";
                dm.EjecutarSQL(cSQL);

                int id_Factura = Convert.ToInt32(dm.ConsultaSQLScalar("SELECT MAX(numero) FROM Facturas"));

                for (int i = 0; i < lista.Count; i++)
                {
                    cSQL = "INSERT INTO Detalles_de_Facturas (tipo_Factura, id_Semilla, numero_Factura, precio_Venta, cantidad, subtotal) VALUES"
                           + " ('"
                           + lista[i].Tipo_Factura + "', "
                           + lista[i].Id_Semilla + ", "
                           + id_Factura + ", "
                           + lista[i].Precio_Venta + ", "
                           + lista[i].Cantidad + ", "
                           + lista[i].Subtotal + " )";
                    dm.EjecutarSQL(cSQL);

                }
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
    }
}
