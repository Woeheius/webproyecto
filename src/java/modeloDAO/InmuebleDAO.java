package modeloDAO;

import config.Conexion;
import modeloDTO.Inmueble;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InmuebleDAO {

    private Conexion conexion = new Conexion();
    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;

    public List<Inmueble> listar() {
        String sql = "SELECT * FROM inmueble";
        List<Inmueble> lista = new ArrayList<>();
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Inmueble inmueble = new Inmueble();
                inmueble.setId(rs.getInt("id"));
                inmueble.setCodigo(rs.getString("codigo"));
                inmueble.setDescripcion(rs.getString("descripcion"));
                inmueble.setTipoInmueble(rs.getString("tipo_inmueble"));
                inmueble.setModalidad(rs.getString("modalidad"));
                inmueble.setPrecio(rs.getDouble("precio"));
                inmueble.setEstado(rs.getString("estado"));
                inmueble.setCantidadBanos(rs.getInt("cantidad_banos"));
                inmueble.setTamano(rs.getDouble("tamano"));
                inmueble.setDepartamento(rs.getString("departamento"));
                inmueble.setCiudad(rs.getString("ciudad"));
                inmueble.setDireccion(rs.getString("direccion"));
                lista.add(inmueble);
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }

    public Inmueble listarPorId(int id) {
        String sql = "SELECT * FROM inmueble WHERE id=?";
        Inmueble inmueble = new Inmueble();
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                inmueble.setId(rs.getInt("id"));
                inmueble.setCodigo(rs.getString("codigo"));
                inmueble.setDescripcion(rs.getString("descripcion"));
                inmueble.setTipoInmueble(rs.getString("tipo_inmueble"));
                inmueble.setModalidad(rs.getString("modalidad"));
                inmueble.setPrecio(rs.getDouble("precio"));
                inmueble.setEstado(rs.getString("estado"));
                inmueble.setCantidadBanos(rs.getInt("cantidad_banos"));
                inmueble.setTamano(rs.getDouble("tamano"));
                inmueble.setDepartamento(rs.getString("departamento"));
                inmueble.setCiudad(rs.getString("ciudad"));
                inmueble.setDireccion(rs.getString("direccion"));
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
        return inmueble;
    }

    public void agregar(Inmueble inmueble) {
        String sql = "INSERT INTO inmueble(codigo, descripcion, tipo_inmueble, modalidad, precio, estado, cantidad_banos, tamano, departamento, ciudad, direccion) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, inmueble.getCodigo());
            ps.setString(2, inmueble.getDescripcion());
            ps.setString(3, inmueble.getTipoInmueble());
            ps.setString(4, inmueble.getModalidad());
            ps.setDouble(5, inmueble.getPrecio());
            ps.setString(6, inmueble.getEstado());
            ps.setInt(7, inmueble.getCantidadBanos());
            ps.setDouble(8, inmueble.getTamano());
            ps.setString(9, inmueble.getDepartamento());
            ps.setString(10, inmueble.getCiudad());
            ps.setString(11, inmueble.getDireccion());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
    }

    public void actualizar(Inmueble inmueble) {
        String sql = "UPDATE inmueble SET codigo=?, descripcion=?, tipo_inmueble=?, modalidad=?, precio=?, estado=?, cantidad_banos=?, tamano=?, departamento=?, ciudad=?, direccion=? WHERE id=?";
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, inmueble.getCodigo());
            ps.setString(2, inmueble.getDescripcion());
            ps.setString(3, inmueble.getTipoInmueble());
            ps.setString(4, inmueble.getModalidad());
            ps.setDouble(5, inmueble.getPrecio());
            ps.setString(6, inmueble.getEstado());
            ps.setInt(7, inmueble.getCantidadBanos());
            ps.setDouble(8, inmueble.getTamano());
            ps.setString(9, inmueble.getDepartamento());
            ps.setString(10, inmueble.getCiudad());
            ps.setString(11, inmueble.getDireccion());
            ps.setInt(12, inmueble.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
    }

    public void eliminar(int id) {
        String sql = "DELETE FROM inmueble WHERE id=?";
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
