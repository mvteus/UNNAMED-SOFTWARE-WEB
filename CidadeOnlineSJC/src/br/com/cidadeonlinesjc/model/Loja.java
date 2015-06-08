package br.com.cidadeonlinesjc.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import br.com.cidadeonlinesjc.dao.LojaDAO;

@ManagedBean(name = "LojaBean")
@SessionScoped
public class Loja implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String endereco;
	private String complemento;
	private String bairro;
	private Loja loja;
	private List<Loja> lojas;

	/*
	 * public Loja() { lojas = new LojaDAO().getListaLoja(); loja = new Loja();
	 * }
	 */

	public List<Loja> getListaLojas() {
		lojas = new ArrayList<Loja>();
		LojaDAO dao = new LojaDAO();
		lojas = dao.getListaLoja();
		return lojas;
	}

	public Loja getLoja() {
		return loja;
	}

	public void setLoja(Loja loja) {
		this.loja = loja;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco + this.getComplemento() + this.getBairro();
	}

	public void adicionaLoja() {
		LojaDAO dao = new LojaDAO();
		dao.adicionaLoja(this);
	}

	public void alteraLoja() {
		LojaDAO dao = new LojaDAO();
		dao.alteraLoja(this.loja);
	}

	public void excluiLoja() {
		LojaDAO dao = new LojaDAO();
		dao.excluiLoja(this.loja);
	}

}
