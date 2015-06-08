package br.com.cidadeonlinesjc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import br.com.cidadeonlinesjc.jdbc.ConnectionFactory;
import br.com.cidadeonlinesjc.model.Loja;

@ManagedBean(name = "LojaDAOBean")
@ViewScoped
public class LojaDAO {
	private Connection con;
	private final String INSERT_LOJA = "INSERT INTO loja (endereco) VALUES (?)";
	private final String SELECT_LOJA = "SELECT * FROM loja";
	private final String DELETE_LOJA = "DELETE FROM loja WHERE idLoja = (?)";
	private final String UPDATE_LOJA = "UPDATE loja SET endereco=? WHERE idLoja=?";

	public LojaDAO() {
		this.con = new ConnectionFactory().getConnection();
	}

	public void adicionaLoja(Loja loja) {
		PreparedStatement stmt;

		try {
			stmt = con.prepareStatement(INSERT_LOJA);

			stmt.setString(1, loja.getEndereco());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Loja> getListaLoja() {
		List<Loja> lojas = new ArrayList<Loja>();
		PreparedStatement stmt;
		try {
			stmt = con.prepareStatement(SELECT_LOJA);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				// Criando objeto Loja.
				Loja loja = new Loja();
				loja.setId(rs.getInt("idLoja"));
				loja.setEndereco(rs.getString("Endereco"));

				// Adicionando objeto categoria na lista.
				lojas.add(loja);
			}

			rs.close();
			stmt.close();

			return lojas;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void excluiLoja(Loja loja) {
		PreparedStatement stmt;

		try {
			stmt = con.prepareStatement(DELETE_LOJA);
			stmt.setInt(1, loja.getId());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void alteraLoja(Loja loja) {
		PreparedStatement stmt;
		try {
			stmt = con.prepareStatement(UPDATE_LOJA);

			stmt.setString(1, loja.getEndereco());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
