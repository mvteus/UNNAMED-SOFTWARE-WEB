package br.com.cidadeonlinesjc.model;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;

import org.primefaces.model.UploadedFile;

import br.com.cidadeonlinesjc.dao.EmpresaDAO;

@ManagedBean(name = "EmpresaBean")
@ViewScoped
public class Empresa {
	private Long id;
	private String cnpj;
	private String nome;
	private String email;
	private String logo;
	private int Usuario_idUsuario;
	private UploadedFile file;
	private Empresa empresa;

	public UploadedFile getFile() {
		return file;
	}

	public void setFile(UploadedFile file) {
		this.file = file;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public int getUsuario_idUsuario() {
		return Usuario_idUsuario;
	}

	public void setUsuario_idUsuario(int usuario_idUsuario) {
		Usuario_idUsuario = usuario_idUsuario;
	}

	public void adicionaEmpresa() {
		EmpresaDAO dao = new EmpresaDAO();
		dao.adicionaEmpresa(this);
	}

	public void alteraEmpresa() {
		EmpresaDAO dao = new EmpresaDAO();
		dao.alteraEmpresa(this);
	}

	public void excluiEmpresa() {
		EmpresaDAO dao = new EmpresaDAO();
		dao.excluiEmpresa(this);
	}

	public void subirLogo() {
		if (file != null) {
			FacesMessage message = new FacesMessage("Sucesso",
					file.getFileName() + " foi subido.");
			FacesContext.getCurrentInstance().addMessage(null, message);
		}
	}

	public Empresa getEmpresa() {
		return empresa;
	}

	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}
}