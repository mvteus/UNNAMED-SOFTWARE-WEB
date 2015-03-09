package br.com.cidadeonlinesjc.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.cidadeonlinesjc.dao.EmpresaDAO;
import br.com.cidadeonlinesjc.model.Empresa;

@WebServlet(name = "AdicionadorEmpresasServlet", urlPatterns = { "/adicionaEmpresa" })
public class AdicionadorEmpresasServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdicionadorEmpresasServlet() {

	}

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String endereco = request.getParameter("endereco");

		Empresa empresa = new Empresa();
		empresa.setNome(nome);
		empresa.setEmail(email);
		empresa.setEndereco(endereco);

		EmpresaDAO dao = new EmpresaDAO();
		dao.adicionaEmpresa(empresa);

		RequestDispatcher rd = request
				.getRequestDispatcher("views/empresa-adicionado.jsp");
		rd.forward(request, response);
	}
}