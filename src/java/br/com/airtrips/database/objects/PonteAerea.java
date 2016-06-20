/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.airtrips.database.objects;

/**
 *
 * @author Felipe
 */
public class PonteAerea {
    private int ID_PONTE_AEREA;
    private int ID_AEROPORTO_ORIGEM;
    private int ID_AEROPORTO_DESTINO;
    private int DISTANCIA;  
    private int QTD_ESCALAS;
    private int ID_AEROPORTO_ESCALA;  

    public int getQTD_ESCALAS() {
        return QTD_ESCALAS;
    }

    public void setQTD_ESCALAS(int QTD_ESCALAS) {
        this.QTD_ESCALAS = QTD_ESCALAS;
    }

    public int getID_AEROPORTO_ESCALA() {
        return ID_AEROPORTO_ESCALA;
    }

    public void setID_AEROPORTO_ESCALA(int ID_AEROPORTO_ESCALA) {
        this.ID_AEROPORTO_ESCALA = ID_AEROPORTO_ESCALA;
    }
    
    
    

    public int getID_PONTE_AEREA() {
        return ID_PONTE_AEREA;
    }

    public void setID_PONTE_AEREA(int ID_PONTE_AEREA) {
        this.ID_PONTE_AEREA = ID_PONTE_AEREA;
    }

    public int getID_AEROPORTO_ORIGEM() {
        return ID_AEROPORTO_ORIGEM;
    }

    public void setID_AEROPORTO_ORIGEM(int ID_AEROPORTO_ORIGEM) {
        this.ID_AEROPORTO_ORIGEM = ID_AEROPORTO_ORIGEM;
    }

    public int getID_AEROPORTO_DESTINO() {
        return ID_AEROPORTO_DESTINO;
    }

    public void setID_AEROPORTO_DESTINO(int ID_AEROPORTO_DESTINO) {
        this.ID_AEROPORTO_DESTINO = ID_AEROPORTO_DESTINO;
    }

    public int getDISTANCIA() {
        return DISTANCIA;
    }

    public void setDISTANCIA(int DISTANCIA) {
        this.DISTANCIA = DISTANCIA;
    }
}
