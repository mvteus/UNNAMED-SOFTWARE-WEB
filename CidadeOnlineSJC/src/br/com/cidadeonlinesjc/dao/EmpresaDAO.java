package br.com.cidadeonlinesjc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.cidadeonlinesjc.jdbc.ConnectionFactory;
import br.com.cidadeonlinesjc.model.Empresa;

public class EmpresaDAO {
	final String INSERT_EMPRESAS = "INSERT INTO empresas (nome, email, endereco) values (?, ?, ?)";
	final String SELECT_EMPRESAS = "SELECT * FROM empresas";
	private Connection con;

	public EmpresaDAO() {
		this.con = new ConnectionFactory().getConnection();
	}

	public void adicionaEmpresa(Empresa empresa) {
		PreparedStatement stmt;

		try {
			stmt = con.prepareStatement(INSERT_EMPRESAS);

			stmt.setString(1, empresa.getNome());
			stmt.setString(2, empresa.getEmail());
			stmt.setString(3, empresa.getEndereco());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public List<Empresa> getLista() {
		List<Empresa> empresas = new ArrayList<Empresa>();
		PreparedStatement stmt;
		try {
			stmt = con.prepareStatement(SELECT_EMPRESAS);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				// Criando objeto Empresa.
				Empresa empresa = new Empresa();
				empresa.setId(rs.getLong("id"));
				empresa.setNome(rs.getString("nome"));
				empresa.setEmail(rs.getString("email"));
				empresa.setEndereco(rs.getString("endereco"));

				// Adicionando objeto na lista.
				empresas.add(empresa);
			}

			rs.close();
			stmt.close();

			return empresas;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
