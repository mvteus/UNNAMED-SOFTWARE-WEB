package br.com.cidadeonlinesjc.model;

import java.io.IOException;
import java.io.Serializable;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.servlet.http.Part;

import br.com.cidadeonlinesjc.dao.EmpresaDAO;

@ManagedBean(name = "EmpresaBean")
@ViewScoped
public class Empresa implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 4231118037416692815L;
	private Long id;
	private String cnpj;
	private String nome;
	private String email;
	/* private String logo; */
	private int idUsuario;
	private int idLoja;
	private Part file;
	private Empresa empresa;
	private List<Empresa> empresas;

	/*
	 * public Empresa() { empresas = new EmpresaDAO().getLista(); empresa = new
	 * Empresa(); }
	 */

	public int getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}

	public int getIdLoja() {
		return idLoja;
	}

	public void setIdLoja(int idLoja) {
		this.idLoja = idLoja;
	}

	public Part getFile() {
		return file;
	}

	public void setFile(Part file) {
		this.file = file;
	}

	/*
	 * public String getLogo() { return logo; }
	 */

	/*
	 * public void setLogo(String logo) { this.logo = logo; }
	 */

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

	public void adicionaEmpresa() {
		EmpresaDAO dao = new EmpresaDAO();
		dao.adicionaEmpresa(this.empresa);
	}

	public void alteraEmpresa() {
		EmpresaDAO dao = new EmpresaDAO();
		dao.alteraEmpresa(this.empresa);
	}

	public void excluiEmpresa() {
		EmpresaDAO dao = new EmpresaDAO();
		dao.excluiEmpresa(this.empresa);
	}

	public String subirLogo() throws IOException {

		file.write("C:\\" + getFilename(file));

		return "success";

	}

	private static String getFilename(Part part) {
		for (String cd : part.getHeader("content-disposition").split(";")) {
			if (cd.trim().startsWith("filename")) {
				String filename = cd.substring(cd.indexOf('=') + 1).trim()
						.replace("\"", "");
				return filename.substring(filename.lastIndexOf('/') + 1)
						.substring(filename.lastIndexOf('\\') + 1); // MS IE
																	// fix.
			}
		}
		return null;
	}

	public Empresa getEmpresa() {
		return empresa;
	}

	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}

	public List<Empresa> getEmpresas() {
		return empresas;
	}

	public void setEmpresas(List<Empresa> empresas) {
		this.empresas = empresas;
	}
}