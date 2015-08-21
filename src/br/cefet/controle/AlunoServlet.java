package br.cefet.controle;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.cefet.modelo.Aluno;
import br.cefet.modelo.AlunoDAO;


public class AlunoServlet extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) 
		 throws IOException {
				AlunoDAO dao = new AlunoDAO();
				List<Aluno>lista = dao.list();
				
				PrintWriter out = response.getWriter();
				out.println("<html>");
				out.println("<head>");
				out.println("<title>Relação de alunos</title>");
				out.println("</head>");
				out.println("<body>");
				out.println("<h1>Alunos cadastrados</h1>");
				out.println("<a href=\"/cefet-taglib/index.jsp\">Voltar</a>");
				out.println("<ul>");
				for (Aluno aluno:lista) {
					out.println("<li>");
					out.println( aluno.getMatricula() + " - " + aluno.getNome());
					out.println("</li>");
				}
				out.println("</ul>");
				out.println("<a href=\"/cefet-taglib/index.jsp\">Voltar</a>");
				out.println("</body>");
				out.println("</html>");
	}
	
}
