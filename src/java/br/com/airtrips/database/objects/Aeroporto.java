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
public class Aeroporto{
    private int idAeroporto;
    private int idPonte;
    private String endereco;
    private String cidade;
    private String pais;

    public int getIdAeroporto() {
        return idAeroporto;
    }

    public void setIdAeroporto(int idAeroporto) {
        this.idAeroporto = idAeroporto;
    }

    public int getIdPonte() {
        return idPonte;
    }

    public void setIdPonte(int idPonte) {
        this.idPonte = idPonte;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }
    
    
    
}
