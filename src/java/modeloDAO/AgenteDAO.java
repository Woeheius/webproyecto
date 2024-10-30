package modeloDAO;

import config.Conexion;
import modeloDTO.Agente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AgenteDAO {

    private Conexion conexion = new Conexion();
    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;

    public List<Agente> listar() {
        String sql = "SELECT * FROM agente";
        List<Agente> lista = new ArrayList<>();
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Agente agente = new Agente();
                agente.setId(rs.getInt("id"));
                agente.setLogin(rs.getString("login"));
                agente.setPassword(rs.getString("password"));
                agente.setCedula(rs.getString("cedula"));
                agente.setNombreCompleto(rs.getString("nombre_completo"));
                agente.setDireccion(rs.getString("direccion"));
                agente.setFechaNacimiento(rs.getString("fecha_nacimiento"));
                agente.setFechaExpedicion(rs.getString("fecha_expedicion"));
                agente.setCorreo(rs.getString("correo"));
                agente.setCelular(rs.getString("celular"));
                lista.add(agente);
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }

    public Agente listarPorId(int id) {
        String sql = "SELECT * FROM agente WHERE id=?";
        Agente agente = new Agente();
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                agente.setId(rs.getInt("id"));
                agente.setLogin(rs.getString("login"));
                agente.setPassword(rs.getString("password"));
                agente.setCedula(rs.getString("cedula"));
                agente.setNombreCompleto(rs.getString("nombre_completo"));
                agente.setDireccion(rs.getString("direccion"));
                agente.setFechaNacimiento(rs.getString("fecha_nacimiento"));
                agente.setFechaExpedicion(rs.getString("fecha_expedicion"));
                agente.setCorreo(rs.getString("correo"));
                agente.setCelular(rs.getString("celular"));
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
        return agente;
    }

    public void agregar(Agente agente) {
        String sql = "INSERT INTO agente(login, password, cedula, nombre_completo, direccion, fecha_nacimiento, fecha_expedicion, correo, celular) VALUES(?,?,?,?,?,?,?,?,?)";
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, agente.getLogin());
            ps.setString(2, agente.getPassword());
            ps.setString(3, agente.getCedula());
            ps.setString(4, agente.getNombreCompleto());
            ps.setString(5, agente.getDireccion());
            ps.setString(6, agente.getFechaNacimiento());
            ps.setString(7, agente.getFechaExpedicion());
            ps.setString(8, agente.getCorreo());
            ps.setString(9, agente.getCelular());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
    }

    public void actualizar(Agente agente) {
        String sql = "UPDATE agente SET login=?, password=?, cedula=?, nombre_completo=?, direccion=?, fecha_nacimiento=?, fecha_expedicion=?, correo=?, celular=? WHERE id=?";
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, agente.getLogin());
            ps.setString(2, agente.getPassword());
            ps.setString(3, agente.getCedula());
            ps.setString(4, agente.getNombreCompleto());
            ps.setString(5, agente.getDireccion());
            ps.setString(6, agente.getFechaNacimiento());
            ps.setString(7, agente.getFechaExpedicion());
            ps.setString(8, agente.getCorreo());
            ps.setString(9, agente.getCelular());
            ps.setInt(10, agente.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
    }

    public void eliminar(int id) {
        String sql = "DELETE FROM agente WHERE id=?";
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
    }
    // Archivo: src/java/modeloDAO/AgenteDAO.java

public Agente validarCredenciales(String login, String password) {
    String sql = "SELECT * FROM agente WHERE login = ? AND password = ?";
    Agente agente = null;

    try {
        con = conexion.Conexion();
        ps = con.prepareStatement(sql);
        ps.setString(1, login);
        ps.setString(2, password);
        rs = ps.executeQuery();

        if (rs.next()) {
            agente = new Agente();
            agente.setId(rs.getInt("id"));
            agente.setLogin(rs.getString("login"));
            agente.setPassword(rs.getString("password"));
            agente.setCedula(rs.getString("cedula"));
            agente.setNombreCompleto(rs.getString("nombre_completo"));
            agente.setDireccion(rs.getString("direccion"));
            agente.setFechaNacimiento(rs.getString("fecha_nacimiento"));
            agente.setFechaExpedicion(rs.getString("fecha_expedicion"));
            agente.setCorreo(rs.getString("correo"));
            agente.setCelular(rs.getString("celular"));
        }
    } catch (SQLException e) {
        System.out.println("Error al validar credenciales: " + e.getMessage());
    }
    return agente;
}

}
