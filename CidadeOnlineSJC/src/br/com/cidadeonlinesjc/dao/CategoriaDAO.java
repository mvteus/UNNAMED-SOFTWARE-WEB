package br.com.cidadeonlinesjc.dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;

import br.com.cidadeonlinesjc.jdbc.ConnectionFactory;
import br.com.cidadeonlinesjc.model.Categoria;

@ManagedBean(name = "CategoriaDAOBean")
public class CategoriaDAO implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 3590498636577365502L;
	private Connection con;
	private final String INSERT_CATEGORIA = "INSERT INTO categoria (Descricao) values (?)";
	private final String SELECT_CATEGORIA = "SELECT * FROM categoria";
	private final String DELETE_CATEGORIA = "DELETE FROM categoria WHERE idCategoria = (?)";
	private final String UPDATE_CATEGORIA = "UPDATE categoria SET Descricao=? WHERE idCategoria=?";

	public CategoriaDAO() {
		this.con = new ConnectionFactory().getConnection();
	}

	public void adicionaCategoria(Categoria categoria) {
		PreparedStatement stmt;

		try {
			stmt = con.prepareStatement(INSERT_CATEGORIA);

			stmt.setString(1, categoria.getDescricao());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Categoria> getListaCategoria() {
		List<Categoria> categorias = new ArrayList<Categoria>();
		PreparedStatement stmt;
		try {
			stmt = con.prepareStatement(SELECT_CATEGORIA);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				// Criando objeto Categoria.
				Categoria categoria = new Categoria();
				categoria.setId(rs.getInt("idCategoria"));
				categoria.setDescricao(rs.getString("Descricao"));

				// Adicionando objeto categoria na lista.
				categorias.add(categoria);
			}

			rs.close();
			stmt.close();

			return categorias;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void excluiCategoria(Categoria categoria) {
		PreparedStatement stmt;

		try {
			stmt = con.prepareStatement(DELETE_CATEGORIA);
			stmt.setInt(1, categoria.getId());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void alteraCategoria(Categoria categoria) {
		PreparedStatement stmt;
		try {
			stmt = con.prepareStatement(UPDATE_CATEGORIA);

			stmt.setString(1, categoria.getDescricao());
			stmt.setInt(2, categoria.getId());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
