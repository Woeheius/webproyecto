package modeloDAO;

import config.Conexion;
import modeloDTO.Propietario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PropietarioDAO {

    private Conexion conexion = new Conexion();
    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;

    public List<Propietario> listar() {
        String sql = "SELECT * FROM propietario";
        List<Propietario> lista = new ArrayList<>();
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Propietario propietario = new Propietario();
                propietario.setId(rs.getInt("id"));
                propietario.setCedula(rs.getString("cedula"));
                propietario.setNombreCompleto(rs.getString("nombre_completo"));
                propietario.setDireccion(rs.getString("direccion"));
                propietario.setFechaNacimiento(rs.getString("fecha_nacimiento"));
                propietario.setFechaExpedicion(rs.getString("fecha_expedicion"));
                propietario.setCorreo(rs.getString("correo"));
                propietario.setNumeroContacto1(rs.getString("numero_contacto1"));
                propietario.setNumeroContacto2(rs.getString("numero_contacto2"));
                lista.add(propietario);
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }

    public Propietario listarPorId(int id) {
        String sql = "SELECT * FROM propietario WHERE id=?";
        Propietario propietario = new Propietario();
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                propietario.setId(rs.getInt("id"));
                propietario.setCedula(rs.getString("cedula"));
                propietario.setNombreCompleto(rs.getString("nombre_completo"));
                propietario.setDireccion(rs.getString("direccion"));
                propietario.setFechaNacimiento(rs.getString("fecha_nacimiento"));
                propietario.setFechaExpedicion(rs.getString("fecha_expedicion"));
                propietario.setCorreo(rs.getString("correo"));
                propietario.setNumeroContacto1(rs.getString("numero_contacto1"));
                propietario.setNumeroContacto2(rs.getString("numero_contacto2"));
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
        return propietario;
    }

    public void agregar(Propietario propietario) {
        String sql = "INSERT INTO propietario(cedula, nombre_completo, direccion, fecha_nacimiento, fecha_expedicion, correo, numero_contacto1, numero_contacto2) VALUES(?,?,?,?,?,?,?,?)";
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, propietario.getCedula());
            ps.setString(2, propietario.getNombreCompleto());
            ps.setString(3, propietario.getDireccion());
            ps.setString(4, propietario.getFechaNacimiento());
            ps.setString(5, propietario.getFechaExpedicion());
            ps.setString(6, propietario.getCorreo());
            ps.setString(7, propietario.getNumeroContacto1());
            ps.setString(8, propietario.getNumeroContacto2());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
    }

    public void actualizar(Propietario propietario) {
        String sql = "UPDATE propietario SET cedula=?, nombre_completo=?, direccion=?, fecha_nacimiento=?, fecha_expedicion=?, correo=?, numero_contacto1=?, numero_contacto2=? WHERE id=?";
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, propietario.getCedula());
            ps.setString(2, propietario.getNombreCompleto());
            ps.setString(3, propietario.getDireccion());
            ps.setString(4, propietario.getFechaNacimiento());
            ps.setString(5, propietario.getFechaExpedicion());
            ps.setString(6, propietario.getCorreo());
            ps.setString(7, propietario.getNumeroContacto1());
            ps.setString(8, propietario.getNumeroContacto2());
            ps.setInt(9, propietario.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
    }

    public void eliminar(int id) {
        String sql = "DELETE FROM propietario WHERE id=?";
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
    }
}
