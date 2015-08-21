package br.cefet.modelo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class AlunoDAO {

	private List<Aluno> lista = new ArrayList<Aluno>();
	public AlunoDAO() {
		lista.add(new Aluno("1001", "João Silveira", "Informática", new Date()));
		lista.add(new Aluno("1002", "Ana Beatriz Alencar", "Administração", new Date()));
		lista.add(new Aluno("1003", "Pedro Paulo Carvalho", "Turismo", new Date()));
		lista.add(new Aluno("1004", "Claudia Araújo", "Informática", new Date()));
		lista.add(new Aluno("1005", "Paulo Santos", "Informática", new Date()));
		lista.add(new Aluno("1006", "Tiago Vaz", "Turismo", new Date()));
		lista.add(new Aluno("1007", "Carolina Mendes", "Administração", new Date()));
		lista.add(new Aluno("1008", "Rodolfo Zappa", "Turismo", new Date()));
		lista.add(new Aluno("1009", "Gilberto Alves", "Administração", new Date()));
		lista.add(new Aluno("1010", "João Francisco Antunes", "", new Date()));
		lista.add(new Aluno("1011", "Juliana Albuquerque", "Turismo", new Date()));
	}
	
	public Aluno get(String matricula) {
		for(Aluno a:lista) {
			if (a.getMatricula().equals(matricula)) {
				return a;
			}
		}
		return null;
	}
	
	public List<Aluno> list() {
		return lista;
	}
	
	public List<Aluno> list(String curso) {
		List<Aluno> listaResult = new ArrayList<Aluno>();
		for(Aluno a:lista) {
			if(a.getCurso().equals(curso)) {
				listaResult.add(a);
			}
		}
		return listaResult;
	}
	
	public List<Aluno> getLista() {
		return this.lista;
	}
}
