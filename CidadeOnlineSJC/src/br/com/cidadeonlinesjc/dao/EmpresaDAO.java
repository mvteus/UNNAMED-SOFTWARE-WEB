package br.com.cidadeonlinesjc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;

import br.com.cidadeonlinesjc.jdbc.ConnectionFactory;
import br.com.cidadeonlinesjc.model.Empresa;

@ManagedBean(name = "EmpresaDAOBean")
public class EmpresaDAO {
	private final String INSERT_EMPRESAS = "INSERT INTO empresa (CNPJ, Nome, Email, idUsuario, idLoja) values (?, ?, ?, ?, ?)";
	private final String SELECT_EMPRESAS = "SELECT * FROM empresa";
	private final String DELETE_EMPRESAS = "DELETE FROM empresa WHERE cnpj = (?)";
	private final String UPDATE_EMPRESAS = "UPDATE empresa SET CNPJ=?, Nome=?, Email=?, idUsuario=?, idLoja=? WHERE idEmpresa=? ";
	private Connection con;

	public EmpresaDAO() {
		this.con = new ConnectionFactory().getConnection();
	}

	public void alteraEmpresa(Empresa empresa) {
		PreparedStatement stmt;

		try {
			stmt = con.prepareStatement(UPDATE_EMPRESAS);
			stmt.setString(1, empresa.getCnpj());
			stmt.setString(2, empresa.getNome());
			stmt.setString(3, empresa.getEmail());
			stmt.setInt(4, empresa.getIdUsuario());
			stmt.setInt(5, empresa.getIdLoja());
			stmt.setLong(6, empresa.getId());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void excluiEmpresa(Empresa empresa) {
		PreparedStatement stmt;

		try {
			stmt = con.prepareStatement(DELETE_EMPRESAS);
			stmt.setString(1, empresa.getCnpj());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void adicionaEmpresa(Empresa empresa) {
		PreparedStatement stmt;

		try {
			stmt = con.prepareStatement(INSERT_EMPRESAS);

			stmt.setString(1, empresa.getCnpj());
			stmt.setString(2, empresa.getNome());
			stmt.setString(3, empresa.getEmail());
			stmt.setInt(4, empresa.getIdUsuario());
			stmt.setInt(5, empresa.getIdLoja());

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
				empresa.setId(rs.getLong("idEmpresa"));
				empresa.setCnpj(rs.getString("CNPJ"));
				empresa.setNome(rs.getString("Nome"));
				empresa.setEmail(rs.getString("Email"));
				empresa.setIdUsuario(rs.getInt("idUsuario"));
				empresa.setIdLoja(rs.getInt("idLoja"));

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
