package modeloDAO;

import config.Conexion;
import modeloDTO.Contrato;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ContratoDAO {

    private Conexion conexion = new Conexion();
    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;

    public List<Contrato> listar() {
        String sql = "SELECT * FROM contrato";
        List<Contrato> lista = new ArrayList<>();
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Contrato contrato = new Contrato();
                contrato.setId(rs.getInt("id"));
                contrato.setCodigo(rs.getString("codigo"));
                contrato.setDescripcion(rs.getString("descripcion"));
                contrato.setTipoContrato(rs.getString("tipo_contrato"));
                contrato.setFechaCreacion(rs.getString("fecha_creacion"));
                contrato.setFechaExpiracion(rs.getString("fecha_expiracion"));
                contrato.setValor(rs.getDouble("valor"));
                contrato.setPorcentajeComision(rs.getDouble("porcentaje_comision"));
                lista.add(contrato);
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }

    public Contrato listarPorId(int id) {
        String sql = "SELECT * FROM contrato WHERE id=?";
        Contrato contrato = new Contrato();
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                contrato.setId(rs.getInt("id"));
                contrato.setCodigo(rs.getString("codigo"));
                contrato.setDescripcion(rs.getString("descripcion"));
                contrato.setTipoContrato(rs.getString("tipo_contrato"));
                contrato.setFechaCreacion(rs.getString("fecha_creacion"));
                contrato.setFechaExpiracion(rs.getString("fecha_expiracion"));
                contrato.setValor(rs.getDouble("valor"));
                contrato.setPorcentajeComision(rs.getDouble("porcentaje_comision"));
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
        return contrato;
    }

    public void agregar(Contrato contrato) {
        String sql = "INSERT INTO contrato(codigo, descripcion, tipo_contrato, fecha_creacion, fecha_expiracion, valor, porcentaje_comision) VALUES(?,?,?,?,?,?,?)";
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, contrato.getCodigo());
            ps.setString(2, contrato.getDescripcion());
            ps.setString(3, contrato.getTipoContrato());
            ps.setString(4, contrato.getFechaCreacion());
            ps.setString(5, contrato.getFechaExpiracion());
            ps.setDouble(6, contrato.getValor());
            ps.setDouble(7, contrato.getPorcentajeComision());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
    }

    public void actualizar(Contrato contrato) {
        String sql = "UPDATE contrato SET codigo=?, descripcion=?, tipo_contrato=?, fecha_creacion=?, fecha_expiracion=?, valor=?, porcentaje_comision=? WHERE id=?";
        try {
            con = conexion.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, contrato.getCodigo());
            ps.setString(2, contrato.getDescripcion());
            ps.setString(3, contrato.getTipoContrato());
            ps.setString(4, contrato.getFechaCreacion());
            ps.setString(5, contrato.getFechaExpiracion());
            ps.setDouble(6, contrato.getValor());
            ps.setDouble(7, contrato.getPorcentajeComision());
            ps.setInt(8, contrato.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
    }

    public void eliminar(int id) {
        String sql = "DELETE FROM contrato WHERE id=?";
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
