/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.airtrips.database.objects;

import java.time.LocalDate;

/**
 *
 * @author Venator
 */
public class Venda {
    
    private int idVenda;
    private int idPonteAerea;
    private int idPassageiro;
    private String cpf;
    private LocalDate dataVenda;
    private int qtdPassagens;
    private double valor;

    public int getIdVenda() {
        return idVenda;
    }

    public void setIdVenda(int idVenda) {
        this.idVenda = idVenda;
    }

    public int getIdPonteAerea() {
        return idPonteAerea;
    }

    public void setIdPonteAerea(int idPonteAerea) {
        this.idPonteAerea = idPonteAerea;
    }

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

    public LocalDate getDataVenda() {
        return dataVenda;
    }

    public void setDataVenda(LocalDate dataVenda) {
        this.dataVenda = dataVenda;
    }

    public int getQtdPassagens() {
        return qtdPassagens;
    }

    public void setQtdPassagens(int qtdPassagens) {
        this.qtdPassagens = qtdPassagens;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }
    
    
}
