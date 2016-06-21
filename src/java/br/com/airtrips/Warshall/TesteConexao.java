/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.airtrips.Warshall;

import br.com.airtrips.database.dao.PonteAereaDAO;
import br.com.airtrips.database.objects.PonteAerea;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author Felipe
 */
public class TesteConexao {
    public static int[][] CriaMatrizDistancias() throws SQLException, ClassNotFoundException{
    PonteAereaDAO dao = new PonteAereaDAO();
    int matriz[][] = new int[10][10];   
    List<PonteAerea> pa = dao.search(); // puxa lista de objetos do Banco de Dados
       
        while(!pa.isEmpty()){
        // criando a matriz de distancias para utilizarmos para o calculo    
          for(int i=0;i<10;i++){              
             matriz[pa.get(i).getID_AEROPORTO_ORIGEM()][pa.get(i).getID_AEROPORTO_DESTINO()] = pa.get(i).getDISTANCIA();
             matriz[i][i]=0;
            }
          }
           return matriz;
    }
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        
    PonteAereaDAO dao = new PonteAereaDAO();
    int matriz[][] = CriaMatrizDistancias();   
    List<PonteAerea> pa = dao.search();
     
    
     
    for(int linha = 0;linha<10;linha++){
     for(int coluna=0;coluna<10;coluna++){
       System.out.print(matriz[linha][coluna]);
     }
      System.out.println();
    } 
        
        
        
    }
}
