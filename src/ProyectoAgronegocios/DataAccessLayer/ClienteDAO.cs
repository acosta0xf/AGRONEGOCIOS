﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ProyectoAgronegocios.Entities;

namespace ProyectoAgronegocios.DataAccessLayer
{
    class ClienteDAO
    {
        private string consulta;
        public DataTable consultarClientesSinParametros()
        {
            consulta = "SELECT" +
	                " c.id_Cliente_Proveedor as 'ID'," +
	                " c.CUIL_CUIT as 'Cuil o Cuit'," +
	                " c.nombre as 'Nombre'," +
	                " c.apellido as 'Apellido'," +
	                " c.razon_Social as 'Razon Social'," +
	                " tc.nombre as 'Tipo de Cliente'," +
	                " c.email as 'Email'," +
	                " c.telefono as 'Telefono'," +
	                " b.nombre as 'Barrio'" +
                " FROM Cliente_Proveedor c" +
                " JOIN Barrios b ON c.cod_Barrio = b.id_Barrio" +
                " JOIN Tipo_Cliente_Proveedor tc ON c.id_Tipo = tc.id_Tipo" +
                " WHERE c.borrado = 0 AND c.id_Tipo = 1" ;
            return DBHelper.consultar(consulta);
        }
        public DataTable consultarClientesConCuil(string cuil)
        {
            consulta = "SELECT" +
                    " c.id_Cliente_Proveedor as 'ID'," +
                    " c.CUIL_CUIT as 'Cuil o Cuit'," +
                    " c.nombre as 'Nombre'," +
                    " c.apellido as 'Apellido'," +
                    " c.razon_Social as 'Razon Social'," +
                    " tc.nombre as 'Tipo de Cliente'," +
                    " c.email as 'Email'," +
                    " c.telefono as 'Telefono'," +
                    " b.nombre as 'Barrio'" +
                " FROM Cliente_Proveedor c" +
                " JOIN Barrios b ON c.cod_Barrio = b.id_Barrio" +
                " JOIN Tipo_Cliente_Proveedor tc ON c.id_Tipo = tc.id_Tipo" +
                " WHERE c.borrado = 0 AND c.id_Tipo = 1 AND c.CUIL_CUIT LIKE '" + cuil + "'";
            DataTable tabla = DBHelper.consultar(consulta);
            if (tabla.Rows.Count != 0)
                return tabla;
            return new DataTable();
        }

        public DataTable recuperarDatosCliente(int id)
        {
            consulta = "SELECT" +
                    
                    " c.CUIL_CUIT as 'Cuil o Cuit'," +
                    " c.nombre as 'Nombre'," +
                    " c.apellido as 'Apellido'," +
                    " c.razon_Social as 'Razon Social'," +
                    
                    " c.email as 'Email'," +
                    " c.telefono as 'Telefono'," +
                    " b.id_Barrio as 'Barrio'," +
                    " loc.id_Localidad as 'Ciudad'," +
                    " p.id_Provincia as 'Provincia'"+
                " FROM Cliente_Proveedor c" +
                " JOIN Barrios b ON c.cod_Barrio = b.id_Barrio" +
                " JOIN Localidad loc ON b.id_Localidad = loc.id_Localidad" +
                " JOIN Provincia p ON loc.id_Provincia = p.id_Provincia" +
                " WHERE c.borrado = 0 AND c.id_Tipo = 1 AND c.id_Cliente_Proveedor = " + id.ToString();
            return DBHelper.consultar(consulta);
        }

        public void registrarCliente(Cliente cliente)
        {
            consulta = "INSERT INTO Cliente_Proveedor (nombre, apellido, razon_Social, email, telefono, cod_Barrio, id_Tipo, CUIL_CUIT, borrado) " +
                "VALUES ( '" +
                cliente.Nombre + "', '" +
                cliente.Apellido + "', '" +
                cliente.Razon_Social + "', '" +
                cliente.Email + "', '" +
                cliente.Telefono + "', " +
                cliente.Cod_Barrio + ", " +
                cliente.Id_Tipo + ", '" +
                cliente.Cuil_cuit + "', " +
                cliente.Borrado + ")";
            
            DBHelper.actualizar(consulta);

        }

        public void modificarCliente(Cliente cliente)
        {
            consulta = "UPDATE Cliente_Proveedor " +
                "SET " +
                "nombre = '" + cliente.Nombre + "', " +
                "apellido = '" + cliente.Apellido + "', " +
                "razon_Social = '" + cliente.Razon_Social + "', " +
                "email = '" + cliente.Email + "', " +
                "telefono = '" + cliente.Telefono + "', " +
                "cod_Barrio = " + cliente.Cod_Barrio + ", " +
                "id_Tipo = " + cliente.Id_Tipo + ", " +
                "CUIL_CUIT = '" + cliente.Cuil_cuit + "' " +
                "WHERE id_Cliente_Proveedor = " + cliente.Id_Cliente_Proveedor;


            DBHelper.actualizar(consulta);
        }
        public void borrarCliente(int id)
        {
            consulta = "UPDATE Cliente_Proveedor " +
                "SET borrado = 1 " +
                "WHERE id_Cliente_Proveedor = " + id;


            DBHelper.actualizar(consulta);
        }
    }
}
