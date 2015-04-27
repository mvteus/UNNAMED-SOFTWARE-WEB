package br.com.cidadeonlinesjc.model;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import br.com.cidadeonlinesjc.dao.LojaDAO;

@ManagedBean(name = "LojaBean")
@ViewScoped
public class Loja {
	private int id;
	private String endereco;
	private String complemento;
	private String bairro;
	private int idEmpresa;
	private Loja loja;

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
		this.endereco = endereco + getComplemento() + getBairro();
	}

	public int getIdEmpresa() {
		return idEmpresa;
	}

	public void setIdEmpresa(int idEmpresa) {
		this.idEmpresa = idEmpresa;
	}

	public void adicionaLoja() {
		LojaDAO dao = new LojaDAO();
		dao.adicionaLoja(this);
	}

	public void alteraLoja() {
		LojaDAO dao = new LojaDAO();
		dao.alteraLoja(this);
	}

	public void excluiLoja() {
		LojaDAO dao = new LojaDAO();
		dao.excluiLoja(this);
	}

}
