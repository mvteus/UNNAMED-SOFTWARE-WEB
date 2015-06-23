package br.com.cidadeonlinesjc.bean;

import java.io.Serializable;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import br.com.cidadeonlinesjc.dao.CategoriaDAO;
import br.com.cidadeonlinesjc.model.Categoria;

@ManagedBean
@ViewScoped
public class CategoriaBean implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 3941890322306657823L;
	private Categoria categoria;
	private List<Categoria> listaCategoria;
	private CategoriaDAO dao;

	public CategoriaBean() {
		categoria = new Categoria();
		listaCategoria = dao.getListaCategoria();
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	public List<Categoria> getListaCategoria() {
		return listaCategoria;
	}

	public void setListaCategoria(List<Categoria> listaCategoria) {
		this.listaCategoria = listaCategoria;
	}

	public void alterarCategoria() {
		dao.alteraCategoria(this.categoria);
	}

	public void excluiCategoria() {
		dao.excluiCategoria(this.categoria);
	}

}