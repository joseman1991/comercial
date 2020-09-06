/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
//import modelo.EnviarMensaje;
import modelo.Items;
import modelo.Usuarios;
import modelo.UsuariosDAO;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author Abigail
 */
public class UsuarioAction extends ActionSupport implements ModelDriven<Usuarios> {

    private Usuarios usuarios;
    private final UsuariosDAO udao;
    private String mensaje;
    private final List<Items> listaItems;
    private int cantidad;
    private List<Usuarios> listaUsuarios;

    public UsuarioAction() {
        udao = new UsuariosDAO();
        usuarios = new Usuarios();
        listaItems = new ArrayList<>();
        listaUsuarios = new ArrayList<>();
    }

    @Override
    public Usuarios getModel() {
        return usuarios;
    }

    public String insertar() {
        try {
            int r = udao.insertarUsuarios(usuarios);
            if (r > 0) {
////                EnviarMensaje enviarMensaje = new EnviarMensaje();
//                enviarMensaje.enviarConGMail(usuarios.getCorreo(), "Bienvenido a Beauty Spa Center", "Gracias por registrarte "
//                        + " en nuestro spa,");
                mensaje = "Registro exitoso para el usuario " + usuarios.getNombreusuario();
                return SUCCESS;
            } else {
                mensaje = "ha ocurrido un error";
                System.out.println(mensaje);
                return ERROR;
            }
        } catch (SQLException /*| MessagingException */ e) {
            mensaje = "Ha ocurrido un error " + e.getMessage();
            System.out.println(mensaje);
            return ERROR;
        }
    }

    public String actualizar() {
        try {
            int r = udao.actualizarUser(usuarios);
            if (r > 0) {
////                EnviarMensaje enviarMensaje = new EnviarMensaje();
//                enviarMensaje.enviarConGMail(usuarios.getCorreo(), "Bienvenido a Beauty Spa Center", "Gracias por registrarte "
//                        + " en nuestro spa,");
                mensaje = "Usuario actualizado exitoso para el usuario " + usuarios.getNombreusuario();
                listaUsuarios = udao.obtenerLista(usuarios.getIdperfil());
                switch (usuarios.getIdperfil()) {
                    case 1:
                        return "admin";

                    case 2:

                        return "cliente";

                    case 3:

                        return "emppleado";
                }

                listaUsuarios = udao.obtenerLista(2);
                return SUCCESS;
            } else {
                mensaje = "ha ocurrido un error";
                System.out.println(mensaje);
                return ERROR;
            }
        } catch (SQLException /*| MessagingException */ e) {
            mensaje = "Ha ocurrido un error " + e.getMessage();
            System.out.println(mensaje);
            return ERROR;
        }
    }

    public String insertarEmpleado() {
        try {
            int r = udao.insertarEmpleado(usuarios);
            if (r > 0) {
////                EnviarMensaje enviarMensaje = new EnviarMensaje();
//                enviarMensaje.enviarConGMail(usuarios.getCorreo(), "Bienvenido a Beauty Spa Center", "Gracias por registrarte "
//                        + " en nuestro spa,");
                mensaje = "Registro exitoso para el usuario " + usuarios.getNombreusuario();

                return SUCCESS;
            } else {
                mensaje = "ha ocurrido un error";
                System.out.println(mensaje);
                return ERROR;
            }
        } catch (SQLException /*| MessagingException */ e) {
            mensaje = "Ha ocurrido un error " + e.getMessage();
            System.out.println(mensaje);
            return ERROR;
        }
    }

    public String insertarAdmin() {
        try {
            int r = udao.insertarAdmin(usuarios);
            if (r > 0) {
////                EnviarMensaje enviarMensaje = new EnviarMensaje();
//                enviarMensaje.enviarConGMail(usuarios.getCorreo(), "Bienvenido a Beauty Spa Center", "Gracias por registrarte "
//                        + " en nuestro spa,");
                mensaje = "Registro exitoso para el usuario " + usuarios.getNombreusuario();

                return SUCCESS;
            } else {
                mensaje = "ha ocurrido un error";
                System.out.println(mensaje);
                return ERROR;
            }
        } catch (SQLException /*| MessagingException */ e) {
            mensaje = "Ha ocurrido un error " + e.getMessage();
            System.out.println(mensaje);
            return ERROR;
        }
    }

    public String login() {
        try {
            Usuarios user = (Usuarios) ServletActionContext.getRequest().getSession().getAttribute("usuario");
            if (user != null) {
                ServletActionContext.getRequest().getSession().setAttribute("usuario", user);
                return SUCCESS;
            }
            usuarios = udao.obtenerUsusario(usuarios);

            if (usuarios != null) {
                ServletActionContext.getRequest().getSession().setAttribute("usuario", usuarios);
                ServletActionContext.getRequest().getSession().setAttribute("listaItems", listaItems);
                ServletActionContext.getRequest().getSession().setAttribute("cantidad", cantidad);
                ServletActionContext.getRequest().getSession().setAttribute("cantidadSer", 0);
                ServletActionContext.getRequest().getSession().setAttribute("elementos", 0);

                return "success";
            } else {
                usuarios = new Usuarios();
                usuarios.setEstado("No login");
                ServletActionContext.getRequest().getSession().setAttribute("usuario", usuarios);
                mensaje = "error ";
                return "error";
            }
        } catch (SQLException ex) {
            mensaje = ex.getMessage();
            return "error";
        }
    }

    public String obtenerUserByUserName() {
        try {
            usuarios = udao.obtenerUsusario(usuarios.getNombreusuario());
        } catch (SQLException ex) {
            mensaje = ex.getMessage();
            return "error";
        }

        return SUCCESS;
    }

    public List<Usuarios> getListaUsuarios() {
        return listaUsuarios;
    }

    public String obtenerAdmin() {
        try {
            listaUsuarios = udao.obtenerLista(1);
        } catch (SQLException ex) {
            mensaje = ex.getMessage();
            return "error";
        }

        return SUCCESS;
    }

    public String obtenerEmpleados() {
        try {
            listaUsuarios = udao.obtenerLista(3);
        } catch (SQLException ex) {
            mensaje = ex.getMessage();
            return "error";
        }
        return SUCCESS;
    }

    public String obtenerClientes() {
        try {
            listaUsuarios = udao.obtenerLista(2);
        } catch (SQLException ex) {
            mensaje = ex.getMessage();
            return "error";
        }
        return SUCCESS;
    }

    public Usuarios getUsuarios() {
        return usuarios;
    }

    public void setUsuarios(Usuarios usuarios) {
        this.usuarios = usuarios;
    }

    public String getMensaje() {
        return mensaje;
    }

}
