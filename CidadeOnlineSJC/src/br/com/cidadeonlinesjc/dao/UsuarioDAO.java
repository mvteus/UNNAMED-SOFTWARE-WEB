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
import br.com.cidadeonlinesjc.model.Usuario;

@ManagedBean(name = "UsuarioDAOBean")
@ViewScoped
public class UsuarioDAO {
	private Connection con;
	private final String INSERT_USUARIO = "INSERT INTO usuario (senha, nome, permissao) values (?, ?, ?)";
	private final String SELECT_USUARIO = "SELECT * FROM usuario";
	private final String DELETE_USUARIO = "DELETE FROM usuario WHERE idUsuario = (?)";
	private final String UPDATE_USUARIO = "UPDATE empresa SET senha=?, nome=?, permissao=? WHERE idUsuario=? ";

	public UsuarioDAO() {
		this.con = new ConnectionFactory().getConnection();
	}

	public void adicionaUsuario(Usuario usuario) {
		PreparedStatement stmt;

		try {
			stmt = con.prepareStatement(INSERT_USUARIO);

			stmt.setString(1, usuario.getSenha());
			stmt.setString(2, usuario.getNome());
			stmt.setBoolean(3, usuario.isPermissao());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Usuario> getListaUsuario() {
		List<Usuario> usuarios = new ArrayList<Usuario>();
		PreparedStatement stmt;
		try {
			stmt = con.prepareStatement(SELECT_USUARIO);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				// Criando objeto Usuario.
				Usuario usuario = new Usuario();
				usuario.setId(rs.getInt("idUsuario"));
				usuario.setSenha(rs.getString("Senha"));
				usuario.setNome(rs.getString("Nome"));
				usuario.setPermissao(rs.getBoolean("Permissao"));

				// Adicionando objeto Usuario na lista.
				usuarios.add(usuario);
			}

			rs.close();
			stmt.close();

			return usuarios;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void alteraUsuario(Usuario usuario) {
		PreparedStatement stmt;

		try {
			stmt = con.prepareStatement(UPDATE_USUARIO);
			stmt.setString(1, usuario.getSenha());
			stmt.setString(2, usuario.getNome());
			stmt.setBoolean(3, usuario.isPermissao());
			stmt.setInt(4, usuario.getId());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public void excluiUsuario(Usuario usuario) {
		PreparedStatement stmt;

		try {
			stmt = con.prepareStatement(DELETE_USUARIO);
			stmt.setInt(1, usuario.getId());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}
}
