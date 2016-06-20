/*
  Script de Insercao dos dados das Pontes Aereas
   
         Id dos Aeroportos:
         1-Bogotá
         2-Quito
         3-Lima
         4-Santiago
         5-Buenos Aires
         6-Rio de Janeiro
         7-Brasilia
         8-São Paulo
         9-Caracas
         10-La Paz      
         
*/

/* Ponte Aerea Bogota - Quito*/
INSERT INTO ponte_aerea (ID_PONTE_AEREA, ID_AEROPORTO_ORIGEM, ID_AEROPORTO_DESTINO, 
DISTANCIA, QTD_ESCALAS, ID_AEROPORTO_ESCALA) VALUES (1, 1, 2, 731, 0, 0);

/* Ponte Aerea Bogota - Lima*/
INSERT INTO ponte_aerea (ID_PONTE_AEREA, ID_AEROPORTO_ORIGEM, ID_AEROPORTO_DESTINO, 
DISTANCIA, QTD_ESCALAS, ID_AEROPORTO_ESCALA) VALUES (2, 1, 3, 1882, 0, 0);

/* Ponte Aerea Bogota - Santiago*/
INSERT INTO ponte_aerea (ID_PONTE_AEREA, ID_AEROPORTO_ORIGEM, ID_AEROPORTO_DESTINO, 
DISTANCIA, QTD_ESCALAS, ID_AEROPORTO_ESCALA) VALUES(3, 1, 4, 4250, 1, 3);

/* Ponte Aerea Bogota - Buenos Aires*/
INSERT INTO ponte_aerea (ID_PONTE_AEREA, ID_AEROPORTO_ORIGEM, ID_AEROPORTO_DESTINO, 
DISTANCIA, QTD_ESCALAS, ID_AEROPORTO_ESCALA) VALUES (4, 1, 5, 4667, 1, 1);