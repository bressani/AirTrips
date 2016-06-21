/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.airtrips.database.objects;

/**
 *
 * @author Venator
 */
public class Passageiro {

    private int idPassageiro;
    private String cpf;
    private int idade;
    private char sexo;
    private char necessidadesEspeciais;

    public int getIdPassageiro() {
        return idPassageiro;
    }

    public void setIdPassageiro(int idPassageiro) {
        this.idPassageiro = idPassageiro;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public char getSexo() {
        return sexo;
    }

    public void setSexo(char sexo) {
        this.sexo = sexo;
    }

    public char getNecessidadesEspeciais() {
        return necessidadesEspeciais;
    }

    public void setNecessidadesEspeciais(char necessidadesEspeciais) {
        this.necessidadesEspeciais = necessidadesEspeciais;
    }

}
