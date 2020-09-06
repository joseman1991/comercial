/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.SQLException;

/**
 *
 * @author DANIELA SAUHING
 */
public class PerfilDAO extends ConexionPSQL {

    public PerfilDAO() {
    }

    public Perfiles obteneroPerfil(int idcate) throws SQLException {
        Perfiles p = null;
        abrirConexion();
        sentencia = conexion.prepareStatement("select * from perfiles where idperfil=?");
        sentencia.setInt(1, idcate);
        resultado = sentencia.executeQuery();
        while (resultado.next()) {
            p = new Perfiles();
            p.setIdperfil(resultado.getInt(1));
            p.setPerfil(resultado.getString(2));
        }
        cerrarConexion();
        return p;
    }

}
