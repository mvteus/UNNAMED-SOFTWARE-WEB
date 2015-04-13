package br.com.cidadeonlinesjc.model;

import javax.faces.bean.ManagedBean;

import br.com.cidadeonlinesjc.dao.UsuarioDAO;

@ManagedBean(name = "UsuarioBean")
public class Usuario {
	private int id;
	private String senha;
	private String nome;
	private boolean permissao;

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
	
	public void adicionaUsuario(){
		UsuarioDAO dao = new UsuarioDAO();
		dao.adicionaUsuario(this);
	}
	
	public void alteraUsuario(){
		UsuarioDAO dao = new UsuarioDAO();
		dao.alteraUsuario(this);
	}
	
	public void excluiUsuario(){
		UsuarioDAO dao = new UsuarioDAO();
		dao.excluiUsuario(this);
	}
}
