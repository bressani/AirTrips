/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.airtrips.Warshall;

/**
 *
 * @author Renato
 */
public class Entrada_mat {
       private int vertices;

    private int[][] matriz = new int[vertices][vertices];
    
    public Entrada_mat(int vertices){
        this.vertices = vertices;
    }

    public int[][] getMatriz() {
        return matriz;
    }

    public void setMatriz(int[][] matriz) {
        this.matriz = matriz;
    }
    
}
