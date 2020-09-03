package modelo;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConexionPSQL {

    protected Connection conexion;
    protected PreparedStatement sentencia;
    protected ResultSet resultado;
    protected CallableStatement procedimiento;

    protected void abrirConexion() throws SQLException {

        String url;
        String usuario = ("root");
        String clave = ("");
        String BaseDeDatos = ("spa");
        String puerto = ("3308");
        String servidor = ("localhost");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            url = "jdbc:mysql://" + servidor + ":" + puerto + "/" + BaseDeDatos+"?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            conexion = DriverManager.getConnection(url, usuario, clave);
        } catch (ClassNotFoundException ex) {
            System.out.println(ex.getMessage());
        }
    }

    protected void cerrarConexion() throws SQLException {
        conexion.close();
    }

    public void cerrarConexione() throws SQLException {
        conexion.close();
    }

    public Connection getConexion() throws SQLException {
        abrirConexion();
        return conexion;
    }

    public String testConection(String baseDatos, String user, String clave, String host, String puerto) {
        String url;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            url = "jdbc:mysql://" + host + ":" + puerto + "/" + baseDatos;
            try {
                conexion = DriverManager.getConnection(url, user, clave);
                return "Conexión Exitosa";
            } catch (SQLException ex) {
                String op = ex.getSQLState();
                if (op.equals("3D000")) {
                    return "Base de datos no existe en el servidor indicado";
                } else if (op.equals("08001")) {
                    return "No hay conexion, revisa el nombre del servidor o el puerto";
                } else if (op.equals("28P01")) {
                    return "Credenciales incorrectas, revisa el nombre de usuario o la contraseña";
                }
                return ex.getMessage();
            }
        } catch (ClassNotFoundException ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }

    public void crearDataBase(String database) {
        try {
            sentencia = conexion.prepareStatement("create database " + database);
            sentencia.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }

}
