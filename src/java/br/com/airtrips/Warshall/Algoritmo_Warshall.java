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
public class Algoritmo_Warshall {

    /**
     *
     * @param origem
     * @param destino
     * @return
     */
    public String AlgoritmoWharshall(int origem, int destino) {

        int numero = 10;
        // matrizes de distancia e ultimo vertice
        int[][] mat_D = new int[numero][numero];
        //int[][] mat_D = new int[numero][numero];
        /*
         Id dos Aeroportos:
         00-Bogotá
         01-Quito
         02-Lima
         03-Santiago
         04-Buenos Aires
         05-Rio de Janeiro
         06-Brasilia
         07-São Paulo
         08-Caracas
         09-La Paz      
        
        
        Obs: ficamos com preguiça de alterar o codigo para ter um id 01.
         */
        String[] aeroporto = {"Bogotá", "Quito", "Lima", "Santiago", "Buenos Aires",
            "Rio de Janeiro", "Brasilia", "São Paulo", "Caracas", "La Paz"};
        //matriz de ultimo vertcie alimentaca com percursos iniciais conhecidos.
        int[][] mat_Pi
                = {{1, 2, 3, 0, 0, 0, 0, 8, 9, 0},
                {1, 2, 3, 0, 0, 0, 0, 0, 0, 0},
                {1, 2, 3, 4, 0, 0, 0, 0, 9, 10},
                {0, 0, 3, 4, 5, 0, 0, 0, 0, 10},
                {0, 0, 0, 4, 5, 6, 0, 8, 0, 10},
                {0, 0, 0, 0, 5, 6, 7, 8, 0, 0},
                {0, 0, 0, 0, 0, 6, 7, 8, 0, 0},
                {1, 0, 0, 0, 5, 6, 7, 8, 9, 0},
                {1, 0, 3, 0, 0, 0, 0, 8, 9, 0},
                {0, 0, 3, 4, 5, 0, 0, 0, 0, 10}};

        /*Como o projeto nao estipula uma distancia quando há ligação a distancia é 1
         quando não há ligação distancia é 0*/
        int[][] arestas
                = {{1, 1, 1, 0, 0, 0, 0, 1, 1, 0},
                {1, 1, 1, 0, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 0, 0, 0, 0, 1, 1},
                {0, 0, 1, 1, 1, 0, 0, 0, 0, 1},
                {0, 0, 0, 1, 1, 1, 0, 1, 0, 1},
                {0, 0, 0, 0, 1, 1, 1, 1, 0, 0},
                {0, 0, 0, 0, 0, 1, 1, 1, 0, 0},
                {1, 0, 0, 0, 1, 1, 1, 1, 1, 0},
                {1, 0, 1, 0, 0, 0, 0, 1, 1, 0},
                {0, 0, 1, 1, 1, 0, 0, 0, 0, 1}};

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
        for (int i = 0; i < mat_D.length; i++) {
            for (int j = 0; j < mat_D[i].length; j++) {
                System.out.printf("\t %d \t", mat_Pi[j][i]);
            }
            System.out.println();
        }

        System.out.println("---------------------------------------------------------------------------------------");
        //search por voo
        //search por voo

        int distancia = 0;
        if (mat_D[origem][destino] == 1) {
            distancia = 1;
            return "Origem: " + aeroporto[origem] + "<br>"
                    + "Destino: " + aeroporto[destino] + "<br><br>"
                    + "Voo Sem Escala";
        }

        if (mat_D[origem][destino] == 2) {
            distancia = 2;
            String escala = aeroporto[mat_Pi[origem][destino]];
            return "Origem: " + aeroporto[origem] + "<br>"
                    + "Destino: " + aeroporto[destino] + "<br><br>"
                    + "Escala: " + escala + "<br>"
                    + "Distância: " + distancia;
        }

        if (mat_D[origem][destino] == 3) {
            distancia = 3;
            String primeira = aeroporto[mat_Pi[destino][mat_Pi[origem][destino]]];
            String segunda = aeroporto[mat_Pi[origem][destino]];
            return "Origem: " + aeroporto[origem] + "<br>"
                    + "Destino: " + aeroporto[destino] + "<br><br>"
                    + "Distância: " + distancia + "<br><br>"
                    + "1ª escala: " + primeira + "<br>"
                    + "2ª escala: " + segunda + "<br>";
        }
        return "0";
    }
}
