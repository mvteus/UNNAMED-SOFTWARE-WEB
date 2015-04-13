package br.com.cidadeonlinesjc.model;

import javax.faces.bean.ManagedBean;

import br.com.cidadeonlinesjc.dao.CategoriaDAO;

@ManagedBean(name = "CategoriaBean")
public class Categoria {
	private int id;
	private String descricao;
	private int idSelecionado;

	public int getIdSelecionado() {
		return idSelecionado;
	}

	public void setIdSelecionado(int idSelecionado) {
		this.idSelecionado = idSelecionado;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public void adicionaCategoria() {
		CategoriaDAO dao = new CategoriaDAO();
		dao.adicionaCategoria(this);
	}

	public void alteraCategoria() {
		CategoriaDAO dao = new CategoriaDAO();
		dao.alteraCategoria(this);
	}

	public void excluiCategoria() {
		CategoriaDAO dao = new CategoriaDAO();
		dao.excluiCategoria(this);
	}
}
