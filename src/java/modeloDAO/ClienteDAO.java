package modeloDAO;

import config.Conexion;
import modeloDTO.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO {

    private Conexion conexion = new Conexion();
    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;

    public List<Cliente> listar() {
        String sql = "SELECT * FROM cliente";
        List<Cliente> lista = new ArrayList<>();
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Cliente cliente = new Cliente();
                cliente.setId(rs.getInt("id"));
                cliente.setCedula(rs.getString("cedula"));
                cliente.setNombreCompleto(rs.getString("nombre_completo"));
                cliente.setDireccion(rs.getString("direccion"));
                cliente.setFechaNacimiento(rs.getString("fecha_nacimiento"));
                cliente.setFechaExpedicion(rs.getString("fecha_expedicion"));
                cliente.setCorreo(rs.getString("correo"));
                cliente.setNumeroContacto1(rs.getString("numero_contacto1"));
                cliente.setNumeroContacto2(rs.getString("numero_contacto2"));
                lista.add(cliente);
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }

    public Cliente listarPorId(int id) {
        String sql = "SELECT * FROM cliente WHERE id=?";
        Cliente cliente = new Cliente();
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                cliente.setId(rs.getInt("id"));
                cliente.setCedula(rs.getString("cedula"));
                cliente.setNombreCompleto(rs.getString("nombre_completo"));
                cliente.setDireccion(rs.getString("direccion"));
                cliente.setFechaNacimiento(rs.getString("fecha_nacimiento"));
                cliente.setFechaExpedicion(rs.getString("fecha_expedicion"));
                cliente.setCorreo(rs.getString("correo"));
                cliente.setNumeroContacto1(rs.getString("numero_contacto1"));
                cliente.setNumeroContacto2(rs.getString("numero_contacto2"));
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
        return cliente;
    }

    public void agregar(Cliente cliente) {
        String sql = "INSERT INTO cliente(cedula, nombre_completo, direccion, fecha_nacimiento, fecha_expedicion, correo, numero_contacto1, numero_contacto2) VALUES(?,?,?,?,?,?,?,?)";
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, cliente.getCedula());
            ps.setString(2, cliente.getNombreCompleto());
            ps.setString(3, cliente.getDireccion());
            ps.setString(4, cliente.getFechaNacimiento());
            ps.setString(5, cliente.getFechaExpedicion());
            ps.setString(6, cliente.getCorreo());
            ps.setString(7, cliente.getNumeroContacto1());
            ps.setString(8, cliente.getNumeroContacto2());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
    }

    public void actualizar(Cliente cliente) {
        String sql = "UPDATE cliente SET cedula=?, nombre_completo=?, direccion=?, fecha_nacimiento=?, fecha_expedicion=?, correo=?, numero_contacto1=?, numero_contacto2=? WHERE id=?";
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, cliente.getCedula());
            ps.setString(2, cliente.getNombreCompleto());
            ps.setString(3, cliente.getDireccion());
            ps.setString(4, cliente.getFechaNacimiento());
            ps.setString(5, cliente.getFechaExpedicion());
            ps.setString(6, cliente.getCorreo());
            ps.setString(7, cliente.getNumeroContacto1());
            ps.setString(8, cliente.getNumeroContacto2());
            ps.setInt(9, cliente.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
    }

    public void eliminar(int id) {
        String sql = "DELETE FROM cliente WHERE id=?";
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
