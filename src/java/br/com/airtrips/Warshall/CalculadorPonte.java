/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.airtrips.Warshall;

import br.com.airtrips.database.dao.PonteAereaDAO;
import br.com.airtrips.database.objects.PonteAerea;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author vini
 */
public class CalculadorPonte {

    public int[][] CriaMatrizDistancias(PonteAerea pa) throws SQLException, ClassNotFoundException {
        int matriz[][] = new int[10][10];
        // criando a matriz de distancias para utilizarmos para o calculo    
        for (int i = 0; i < 10; i++) {
            matriz[pa.getID_AEROPORTO_ORIGEM()][pa.getID_AEROPORTO_DESTINO()] = pa.getDISTANCIA();
            matriz[i][i] = 0;
        }

        return matriz;
    }

    public String retornaResultPonte(PonteAerea pa) throws SQLException, ClassNotFoundException {
        String result = "";
        int matriz[][] = CriaMatrizDistancias(pa);

        for (int linha = 0; linha < 10; linha++) {
            for (int coluna = 0; coluna < 10; coluna++) {
                result = result + matriz[linha][coluna] + " <br> ";
                System.out.print(matriz[linha][coluna]);
            }

        }

        return result;
    }
}
