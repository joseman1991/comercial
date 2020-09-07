/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.io.File;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Imagenes;
import modelo.ImagenesDAO;
import modelo.Items;
import modelo.ItemsDAO;
import modelo.Opinion;
import modelo.OpinionDAO;
import org.apache.commons.io.FileUtils;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.ServletContext;
import org.apache.struts2.ServletActionContext;

import org.apache.struts2.util.ServletContextAware;

/**
 *
 * @author JOSE
 */
public class Producto extends ActionSupport implements ModelDriven<Items> {

    private List<Opinion> listOpiniones;
    private final OpinionDAO odao;
    private int page;
    private Items item;
    private final List<Imagenes> listaImagenes;
    private final ImagenesDAO imgdao;
    private final ItemsDAO idao;
    private String mensaje;
    private String busqueda;
    private int producto;
    private final List<Items> listaItems;

    private List<String> fileContentType;
    private List<String> imagenesFileName;
    private String filesPath;

    private List<File> imagenes;

    public Producto() {
        this.imagenes = new ArrayList<>();
        item = new Items();
        listaItems = new ArrayList<>();
        idao = new ItemsDAO(listaItems);
        listaImagenes = new ArrayList<>();
        imgdao = new ImagenesDAO(listaImagenes);
        listOpiniones = new ArrayList<>();
        odao = new OpinionDAO(listOpiniones);
        page = 1;
    }

    public String obtenerProducto() {
        try {
            item = idao.obtenerItem(producto);
            idao.obtenerRelacionados(1, item.getIdcategorias());
            imgdao.obtenerImagenes(producto);
            odao.obtenerLista(producto);
            return SUCCESS;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            mensaje = e.getMessage();
            return ERROR;
        }
    }

    public String buscar() {
        try {
            item = idao.obtenerItem(producto);
            idao.obtenerItems(1, busqueda);
            imgdao.obtenerImagenes(producto);
            odao.obtenerLista(producto);
            return SUCCESS;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            mensaje = e.getMessage();
            return ERROR;
        }
    }

    public String insertar() {
        try {
            String ruta = ServletActionContext.getServletContext().getRealPath("");
            FileInputStream fileInputStream = null;
            FileOutputStream fileOutputStream = null;
            File dir = new File(ServletActionContext.getServletContext().getRealPath("") + File.separator + "images");
            if (imagenes.size() > 0) {

                for (int i = 0; i < imagenes.size(); i++) {
                    String targetPath = dir.getPath() + File.separator + imagenesFileName.get(i);
                    File f = new File(targetPath);
                    File get = imagenes.get(i);
                    fileInputStream = new FileInputStream(get);
                    fileOutputStream = new FileOutputStream(f);
                    int c;
                    while ((c = fileInputStream.read()) != -1) {
                        fileOutputStream.write(c);
                    }
                }
                item.setImagen(imagenesFileName.get(0));
                if (imagenesFileName.size() > 1) {
                    imagenesFileName.remove(0);
                }
            }

            int res = idao.insertarItem(item);
            mensaje = "Producto "+item.getNombre()+"agregado correctamente";
            return SUCCESS;
        } catch (IOException | SQLException e) {
            System.out.println(e.getMessage());
            mensaje = e.getMessage();
            return ERROR;
        }

    }

    @Override
    public Items getModel() {
        return item;
    }

    public Items getItem() {
        return item;
    }

    public void setItem(Items item) {
        this.item = item;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public int getProducto() {
        return producto;
    }

    public void setProducto(int producto) {
        this.producto = producto;
    }

    public List<Imagenes> getListaImagenes() {
        return listaImagenes;
    }

    public List<Items> getListaItems() {
        return listaItems;
    }

    public List<Opinion> getListOpiniones() {
        return listOpiniones;
    }

    public void setListOpiniones(List<Opinion> listOpiniones) {
        this.listOpiniones = listOpiniones;
    }

    public String getBusqueda() {
        return busqueda;
    }

    public void setBusqueda(String busqueda) {
        this.busqueda = busqueda;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public List<File> getImagenes() {
        return imagenes;
    }

    public void setImagenes(List<File> imagenes) {
        this.imagenes = imagenes;
        for (int i = 0; i < imagenes.size(); i++) {
            File get = imagenes.get(i);
            System.out.println(get.getName());
        }
    }

    public List<String> getFileContentType() {
        return fileContentType;
    }

    public void setFileContentType(List<String> fileContentType) {
        this.fileContentType = fileContentType;
    }

    public List<String> getImagenesFileName() {
        return imagenesFileName;
    }

    public void setImagenesFileName(List<String> imagenesFileName) {
        this.imagenesFileName = imagenesFileName;
    }

    public String getFilesPath() {
        return filesPath;
    }

    public void setFilesPath(String filesPath) {
        this.filesPath = filesPath;
    }

}
