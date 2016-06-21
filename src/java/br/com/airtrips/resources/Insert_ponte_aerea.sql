/*
  script de insercao dos dados das pontes aereas
   
         id dos aeroportos:
         1-bogotá
         2-quito
         3-lima
         4-santiago
         5-buenos aires
         6-rio de janeiro
         7-brasilia
         8-são paulo
         9-caracas
         10-la paz      
         
*/

/* ponte aerea bogota - quito*/
insert into ponte_aerea (id_ponte_aerea, id_aeroporto_origem, id_aeroporto_destino, 
distancia, qtd_escalas, id_aeroporto_escala) values (1, 1, 2, 731, 0, 0);

/* ponte aerea bogota - lima*/
insert into ponte_aerea (id_ponte_aerea, id_aeroporto_origem, id_aeroporto_destino, 
distancia, qtd_escalas, id_aeroporto_escala) values (2, 1, 3, 1882, 0, 0);

/* ponte aerea bogota - santiago*/
insert into ponte_aerea (id_ponte_aerea, id_aeroporto_origem, id_aeroporto_destino, 
distancia, qtd_escalas, id_aeroporto_escala) values(3, 1, 4, 4250, 1, 3);

/* ponte aerea bogota - buenos aires*/
insert into ponte_aerea (id_ponte_aerea, id_aeroporto_origem, id_aeroporto_destino, 
distancia, qtd_escalas, id_aeroporto_escala) values (4, 1, 5, 4667, 1, 1);


