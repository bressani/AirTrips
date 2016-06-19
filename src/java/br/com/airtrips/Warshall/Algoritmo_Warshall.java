/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.airtrips.Warshall;

import java.util.Scanner;

/**
 *
 * @author Renato
 */
public class Algoritmo_Warshall {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
         Scanner scan = new Scanner(System.in);
        System.out.println("digite o numero de vertices:");

        int numero = scan.nextInt();
        // matrizes de distancia e ultimo vertice
        int[][] mat_D = new int[numero][numero];
        int[][] mat_Pi = {{1, 2, 3}, {1, 2, 0}, {0, 2, 3}};
        int[][] arestas = {{2, 8, 5}, {3, 0, 0}, {0, 2, 0}};
        
        // Aplica 0 para loop e infinito para  caminhos desconhecidos.

        for (int linha = 0; linha < arestas.length; linha++) {
            for (int coluna = 0; coluna < arestas[linha].length; coluna++) {
                if (coluna == linha) {
                    mat_D[linha][coluna] = 0;

                } else if (arestas[linha][coluna] == 0) {
                    mat_D[linha][coluna] = 99;

                } else {
                    mat_D[linha][coluna] = arestas[linha][coluna];
                }
            }
        }
        //print da lista inicial
        System.out.println("\nA Lista D: \n");
        for (int linha = 0; linha < mat_D.length; linha++) {
            for (int coluna = 0; coluna < mat_D[linha].length; coluna++) {
                System.out.printf("\t %d \t", mat_D[linha][coluna]);
            }
            System.out.println();
        }
        /* procesaamento do Floid-Warshall, se a soma do vertice contigo na matriz D
        na posição  i,k + o vertice na posição k,j for menor que o atual, 
        ele sera substituido pela soma.
        matriz PI registra o ultimo vertice antes de chegar finalizar o caminho.
        
        */
        for (int k = 0; k < numero; k++) {
            for (int i = 0; i < numero; i++) {
                for (int j = 0; j < numero; j++) {
                    if (mat_D[i][k] + mat_D[k][j]
                            < mat_D[i][j]) {
                        mat_D[i][j] = mat_D[i][k]
                                + mat_D[k][j];
                        mat_Pi[i][j] = mat_Pi[i][k];
                    }
                }
            }
        }
        System.out.println("\nA Lista D final \n");
        for (int linha = 0; linha < mat_D.length; linha++) {
            for (int coluna = 0; coluna < mat_D[linha].length; coluna++) {
                System.out.printf("\t %d \t", mat_D[linha][coluna]);
            }
            System.out.println();
        }
        System.out.println("");

        System.out.println("\nA Lista PI final \n");
        for (int linha = 0; linha < mat_D.length; linha++) {
            for (int coluna = 0; coluna < mat_D[linha].length; coluna++) {
                System.out.printf("\t %d \t", mat_Pi[linha][coluna]);
            }
            System.out.println();
        }

    }
    
}
