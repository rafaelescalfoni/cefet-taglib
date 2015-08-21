package br.cefet.modelo;

import java.util.Date;

public class Aluno {
	private String matricula;
	private String nome;
	private String curso;
	private Date dataInscricao;
	
	public Aluno(){
		
	}
	
	public Aluno(String mat, String nome, String curso, Date data) {
		this.matricula = mat;
		this.nome = nome;
		this.curso = curso;
		this.dataInscricao = data;
	}
	
	
	public String getMatricula() {
		return matricula;
	}
	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCurso() {
		return curso;
	}
	public void setCurso(String curso) {
		this.curso = curso;
	}

	public Date getDataInscricao() {
		return dataInscricao;
	}

	public void setDataInscricao(Date dataInscricao) {
		this.dataInscricao = dataInscricao;
	}
	
	
}
