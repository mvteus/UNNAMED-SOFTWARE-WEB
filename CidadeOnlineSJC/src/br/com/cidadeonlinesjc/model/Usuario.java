package br.com.cidadeonlinesjc.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import br.com.cidadeonlinesjc.dao.UsuarioDAO;

@ManagedBean(name = "UsuarioBean")
@ViewScoped
public class Usuario implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String senha;
	private String nome;
	private boolean permissao;
	private List<Usuario> usuarios;

	public List<Usuario> getListaUsuarios() {
		usuarios = new ArrayList<Usuario>();
		UsuarioDAO dao = new UsuarioDAO();
		usuarios = dao.getListaUsuario();
		return usuarios;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public boolean isPermissao() {
		return permissao;
	}

	public void setPermissao(boolean permissao) {
		this.permissao = permissao;
	}

	public void adicionaUsuario() {
		UsuarioDAO dao = new UsuarioDAO();
		dao.adicionaUsuario(this);
	}

	public void alteraUsuario() {
		UsuarioDAO dao = new UsuarioDAO();
		dao.alteraUsuario(this);
	}

	public void excluiUsuario() {
		UsuarioDAO dao = new UsuarioDAO();
		dao.excluiUsuario(this);
	}
}
