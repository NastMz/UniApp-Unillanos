uniappScript.sql

-- -----------------------------------------------------
-- INSERT `UniAppUnillanos`.`Ruta`
-- -----------------------------------------------------
--Porfia
INSERT INTO Ruta (idRuta, nombre_ruta, sentido) VALUES ('porfU', 'Porfia', 0);
INSERT INTO Ruta (idRuta, nombre_ruta, sentido) VALUES ('porfV', 'Porfia', 1);
--Viva
INSERT INTO Ruta (idRuta, nombre_ruta, sentido) VALUES ('vivaU', 'Viva', 0);
INSERT INTO Ruta (idRuta, nombre_ruta, sentido) VALUES ('vivaV', 'Viva', 1);
--Villacentro
INSERT INTO Ruta (idRuta, nombre_ruta, sentido) VALUES ('vilcU', 'Villacentro', 0);
INSERT INTO Ruta (idRuta, nombre_ruta, sentido) VALUES ('vilcV', 'Villacentro', 1);
--Grama-Postobon
INSERT INTO Ruta (idRuta, nombre_ruta, sentido) VALUES ('grPsU', 'Grama - Postobon', 0);
INSERT INTO Ruta (idRuta, nombre_ruta, sentido) VALUES ('grPsV', 'Grama - Postobon', 1);
--Terminal
INSERT INTO Ruta (idRuta, nombre_ruta, sentido) VALUES ('termU', 'Terminal', 0);
INSERT INTO Ruta (idRuta, nombre_ruta, sentido) VALUES ('termV', 'Terminal', 1);
--Covisan
INSERT INTO Ruta (idRuta, nombre_ruta, sentido) VALUES ('covsU', 'Covisan', 0);
INSERT INTO Ruta (idRuta, nombre_ruta, sentido) VALUES ('covsV', 'Covisan', 1);
--Maracos
INSERT INTO Ruta (idRuta, nombre_ruta, sentido) VALUES ('marcU', 'Maracos', 0);
INSERT INTO Ruta (idRuta, nombre_ruta, sentido) VALUES ('marcV', 'Maracos', 1);
--Montecarlo
INSERT INTO Ruta (idRuta, nombre_ruta, sentido) VALUES ('montU', 'Montecarlo', 0);
INSERT INTO Ruta (idRuta, nombre_ruta, sentido) VALUES ('montV', 'Montecarlo', 1);
--Parque
INSERT INTO Ruta (idRuta, nombre_ruta, sentido) VALUES ('parqU', 'Parque', 0);
INSERT INTO Ruta (idRuta, nombre_ruta, sentido) VALUES ('parqV', 'Parque', 1);


-- -----------------------------------------------------
-- INSERT `UniAppUnillanos`.`Paradero`
-- -----------------------------------------------------

--Porfia
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pPorf1','Afueras bloque apartamentos','En la esquina a la entrada de la Madrid etapa 3',4.0593938,-73.6700653);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pPorf2','Supermercado Marketing','Supermercado Marketing',4.064833,-73.671318);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pPorf3','Salida los Chopos','Frente a la ferretería Las Palmas, diagonal a los Chopos',4.073257, -73.669342);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pPorf4','Congente','Frente a cajero congente',4.079063, -73.669262);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pPorf5','Consuerte','Diagonal templo católico semáforo Consuerte',4.079063, -73.669262);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pPorf6','Bomba Texaco','Esquina de la bomba de gasolina en la entrada a porfia',4.088458, -73.670179);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pPorf7',' Segunda entrada Samán','Segunda entrada Samán en el puente peatonal', 4.091312, -73.666702);

--Viva
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pViva1','Esquina semáforo de Viva','Frente al conjunto, donde está el semaforo',4.125370, -73.636071);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pViva2','Boutique Revival','Frente a la Boutique',4.124263, -73.634550);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pViva3','Casa Jeréz Inmobiliaria','En la esquina despues del parque donde está la cancha',4.123136,-73.6321427);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pViva4','Calle 33-45 esquina','En la papelería al lado de una tienda esquinera',4.1228957,-73.6296829);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pViva5','Panadería y pastelería La Cosmopolita','Panadería esquinera',4.1191422,-73.6284305);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pViva6','Carrera 28F esquina','Casa esquinera con un poste de luz',4.1198703,-73.6257133);

--Villacentro
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pVilc1','Frente Llanocentro','Debajo del puente peatonal frente a llanocentro al lado de Movistar',4.1331923,-73.6366531);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pVilc2','Comidas rapidas mazorcas','Frente al negocio Kikolo Mazorcas',4.1333947,-73.6353101);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pVilc3','Paradero busetas Dóminos','Paradero al lado del parqueadero antes del nuevo semaforo',4.1324333,-73.6324242);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pVilc4','Droguería la rebaja','Droguería antes de llegar a Sipote',4.1314713,-73.6295618);

--Grama-Postobon
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pGrPb1','Cuatro Parques','En el paradero de busetas que tiene el parque',4.158367, -73.640998);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pGrPb2','Picadas y algo más','En la esquina donde está el restaurante',4.157906, -73.637702);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pGrPb3','Frente Bomba Texaco','Frente Bomba Texaco',4.156651, -73.632235);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pGrPb4','Droguería la Providencia','En la esquina de la droguería',4.151178, -73.628527);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pGrPb5','Yamaha Jordán','Antes de llegar al semaforo en el motomusic',4.148175, -73.624406);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pGrPb6','Paradero busetas COFREM','Donde paran la busetas',4.147615, -73.620722);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pGrPb7','Fresilandia','Unas casas antes de Fresilandia, donde está un arbol con una silla',4.1416635,-73.6210014);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pGrPb8','Esquina parque SIKUANI','Abajo del puente peatonal frente SIKUANI',4.1369872,-73.6218195);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pGrPb9','Paradero busetas Cantarrana','Donde paran la busetas',4.1345282,-73.6230187);

--Terminal
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pTerm1','Yamaha Jordán','Antes de llegar al semaforo en el motomusic',4.148175, -73.624406);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pTerm2','Paradero busetas COFREM','Donde paran la busetas',4.147615, -73.620722);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pTerm3','Paradero buses Hato Grande','Diagonal a Hato Grande',4.1470082,-73.6168287);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pTerm4','Frente a Olimpica','Puesto de salud que está frente a Olimpica',4.1461767,-73.6112503);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pTerm5','Semaforo Manantial','Semaforo frente al CDA',4.1453019,-73.6066442);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pTerm6','Semaforo entrada Morgue','Semaforo que queda antes de voltear a la derecha para la morgue',4.1388252,-73.6029798);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pTerm7','La Cummins','Negocio llamado La Cummins al lado de los lugares donde se le echa aire a los carros',4.1352913,-73.6042122);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pTerm8','Colanta','Colanta ubicada antes de la bomba terpel y diagonal a la bomba del terminal',4.1306709,-73.6058219);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pTerm9','Llanabastos','Semaforo cuadra antes de llanabastos, donde se voltea para entrar a los barrios',4.1254451,-73.6098398);

--Covisan
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pCovs1','Semaforo pinilla','Primer semaforo bajando del CAI de la policía o semaforo para entrar al Pinilla',4.1375399,-73.5892802);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pCovs2','Bomba Terpel Covisan','Frente a la bomba terpel por donde bajan los carros',4.1371736,-73.5863872);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pCovs3','El Salitre','Entrada al barrio Ciudad Salitre',4.1375301,-73.5808545);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pCovs4','Apartamentos Amarilo','En la entrada a los apartamentos Amarilo - Catama',4.1358266,-73.5731425);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pCovs5','El campanario','Esquina volteando a la derecha del Campanario',4.1332609,-73.5653911);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pCovs6','Entrada San Antonio','Esquina entrada al barrio San Antonio',4.1281839,-73.569041);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pCovs7','Kirpan','Frente a la panadería llamada Kirpan en Kirpas',4.1179943,-73.5854076);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pCovs8','PanRolo','Barrio Villamelida, frente a la panadería Pan Rolo',4.1163216,-73.5972501);

--Maracos
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pMarc1','Bomba los Maracos','En la bomba Texaco al lado de la cancha sintetica',4.135574,-73.6181454);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pMarc2','Semaforo lavadero','En el semaforo al frente del lavadero esquinero',4.1340915,-73.6132462);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pMarc3','Parque Mi Llanura','En el semaforo del parque mi llanura, donde hay una señal de policía acostado',4.1326294,-73.608517);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pMarc4','Glorieta Terminal','Justo terminando la glorieta para seguir bajando por la avenida',4.1303038,-73.601359);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pMarc5','Semaforo Pinilla Alto','Esquina del Pinilla, ruta de la busetas, conexión con Covisan',4.1296156,-73.5894141);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pMarc6','Kirpan','Frente a la panadería llamada Kirpan en Kirpas',4.1179943,-73.5854076);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pMarc7','PanRolo','Barrio Villamelida, frente a la panadería Pan Rolo',4.1163216,-73.5972501);

--Montecarlo
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pMont1','La Rochela','Salida del barrio La Rochela a la avenida',4.1044181,-73.6568555);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pMont2','Bomba Terpel Playa Rica','Frente a la bomba Terpel',4.1072854,-73.6557697);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pMont3','Bahía Serramonte','Frente a la bomba Primax de Serramonte',4.1155424,-73.6490235);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pMont4','Amarilo','En la esquina del conjunto cimarron',4.1097822,-73.6329908);

--Parque
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pParq1','Parque de los estudiante','Diagonal al parque de los estudiante, al lado del Justo y Bueno',4.1459132,-73.6366358);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pParq2','Unicentro','Paradero de busetas Unicentro - Vía Pto. Lopez',4.1432595,-73.6334785);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pParq3','Tecniguayas','Diagonal al colegio Normal, esquina donde está el local Tecniguayas',4.138734,-73.6300699);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pParq4','La Industrial','Acera en frente del Colegio Industrial, en señalización junto al poste',4.1352434,-73.6273911);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pParq5','Makro','Paradero de busetas en Makro',4.1284916,-73.6222394);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pParq6','Alborada','Paradero de busetas al lado de Max-Autos',4.1246844,-73.619346);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pParq7','Cooperativa','Bajo el puente peatonal de la cooperativa',4.1156645,-73.6095403);
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pParq8','Bomba Primax','Luego de pasar el Ocoa, en la mitad de la bomba para',4.1108026,-73.6035419);

--Universidad
INSERT INTO Paradero (idParadero, lugar, detalles, longitud, latitud) VALUES ('pUni','Unillanos','Frente la entrada del parqueadero',4.0752029,-73.5855988);


-- -----------------------------------------------------
-- INSERT `UniAppUnillanos`.`Horario`
-- -----------------------------------------------------
--Hacia la U
INSERT INTO Horario (hora) VALUES ('05:10:00');
INSERT INTO Horario (hora) VALUES ('06:10:00');
INSERT INTO Horario (hora) VALUES ('07:20:00');
INSERT INTO Horario (hora) VALUES ('08:20:00');
INSERT INTO Horario (hora) VALUES ('11:30:00');
INSERT INTO Horario (hora) VALUES ('13:30:00');

--Hacia villavo
INSERT INTO Horario (hora) VALUES ('11:00:00');
INSERT INTO Horario (hora) VALUES ('12:00:00');
INSERT INTO Horario (hora) VALUES ('16:00:00');
INSERT INTO Horario (hora) VALUES ('17:00:00');
INSERT INTO Horario (hora) VALUES ('18:00:00');

--Parque // Se podría borrar y poner solo que cada 30 min :v
INSERT INTO Horario (hora) VALUES ('05:40:00');
INSERT INTO Horario (hora) VALUES ('06:40:00');
INSERT INTO Horario (hora) VALUES ('07:10:00');
INSERT INTO Horario (hora) VALUES ('07:40:00');
INSERT INTO Horario (hora) VALUES ('08:10:00');
INSERT INTO Horario (hora) VALUES ('08:40:00');
INSERT INTO Horario (hora) VALUES ('09:10:00');
INSERT INTO Horario (hora) VALUES ('09:40:00');
INSERT INTO Horario (hora) VALUES ('10:10:00');
INSERT INTO Horario (hora) VALUES ('10:40:00');
INSERT INTO Horario (hora) VALUES ('11:10:00');
INSERT INTO Horario (hora) VALUES ('11:40:00');
INSERT INTO Horario (hora) VALUES ('12:10:00');
INSERT INTO Horario (hora) VALUES ('12:40:00');
INSERT INTO Horario (hora) VALUES ('13:10:00');
INSERT INTO Horario (hora) VALUES ('13:40:00');
INSERT INTO Horario (hora) VALUES ('14:10:00');
INSERT INTO Horario (hora) VALUES ('14:40:00');
INSERT INTO Horario (hora) VALUES ('15:10:00');
INSERT INTO Horario (hora) VALUES ('15:40:00');
INSERT INTO Horario (hora) VALUES ('16:10:00');
INSERT INTO Horario (hora) VALUES ('16:40:00');
INSERT INTO Horario (hora) VALUES ('17:10:00');
INSERT INTO Horario (hora) VALUES ('17:40:00');
INSERT INTO Horario (hora) VALUES ('18:10:00');
INSERT INTO Horario (hora) VALUES ('18:40:00');
INSERT INTO Horario (hora) VALUES ('20:00:00');


-- -----------------------------------------------------
-- INSERT `UniAppUnillanos`.`RutaParadero`
-- -----------------------------------------------------

-- Porfia/U
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('porfU','pPorf1');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('porfU','pPorf2');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('porfU','pPorf3');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('porfU','pPorf4');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('porfU','pPorf5');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('porfU','pPorf6');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('porfU','pPorf7');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('porfU','pUni');

-- U/Porfia
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('porfV','pUni');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('porfV','pPorf7');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('porfV','pPorf6');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('porfV','pPorf5');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('porfV','pPorf4');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('porfV','pPorf3');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('porfV','pPorf2');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('porfV','pPorf1');


-- Viva/U vivaU pViva1
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vivaU','pViva1');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vivaU','pViva2');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vivaU','pViva3');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vivaU','pViva4');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vivaU','pViva5');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vivaU','pViva6');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vivaU','pUni');

-- U/Viva
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vivaV','pUni');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vivaV','pViva6');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vivaV','pViva5');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vivaV','pViva4');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vivaV','pViva3');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vivaV','pViva2');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vivaV','pViva1');


-- Villacentro/U
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vilcU','pVilc1');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vilcU','pVilc2');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vilcU','pVilc3');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vilcU','pVilc4');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vilcU','pUni');

-- U/Villacentro
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vilcV','pUni');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vilcV','pVilc4');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vilcV','pVilc3');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vilcV','pVilc2');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('vilcV','pVilc1');


-- Grama-Postobon/U
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsU','pGrPs1');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsU','pGrPs2');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsU','pGrPs3');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsU','pGrPs4');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsU','pGrPs5');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsU','pGrPs6');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsU','pGrPs7');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsU','pGrPs8');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsU','pGrPs9');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsU','pUni');

-- U/Grama-Postobon
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsV','pUni');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsV','pGrPs9');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsV','pGrPs8');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsV','pGrPs7');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsV','pGrPs6');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsV','pGrPs5');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsV','pGrPs4');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsV','pGrPs3');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsV','pGrPs2');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('grPsV','pGrPs1');


-- Terminal/U
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termU','pTerm1');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termU','pTerm2');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termU','pTerm3');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termU','pTerm4');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termU','pTerm5');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termU','pTerm6');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termU','pTerm7');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termU','pTerm8');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termU','pTerm9');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termU','pUni');

-- U/Terminal
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termV','pUni');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termV','pTerm9');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termV','pTerm8');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termV','pTerm7');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termV','pTerm6');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termV','pTerm5');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termV','pTerm4');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termV','pTerm3');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termV','pTerm2');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('termV','pTerm1');


--  Covisan/U
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('covsU','pCovs1');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('covsU','pCovs2');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('covsU','pCovs3');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('covsU','pCovs4');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('covsU','pCovs5');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('covsU','pCovs6');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('covsU','pCovs7');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('covsU','pCovs8');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('covsU','pUni');

--  U/Covisan
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('covsV','pUni');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('covsV','pCovs8');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('covsV','pCovs7');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('covsV','pCovs6');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('covsV','pCovs5');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('covsV','pCovs4');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('covsV','pCovs3');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('covsV','pCovs2');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('covsV','pCovs1');


-- Maracos/U
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('marcU','pMarc1');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('marcU','pMarc2');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('marcU','pMarc3');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('marcU','pMarc4');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('marcU','pMarc5');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('marcU','pMarc6');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('marcU','pMarc7');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('marcU','pUni');

-- U/Maracos
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('marcV','pUni');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('marcV','pMarc7');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('marcV','pMarc6');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('marcV','pMarc5');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('marcV','pMarc4');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('marcV','pMarc3');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('marcV','pMarc2');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('marcV','pMarc1');


-- Montecarlo/U
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('montU','pMarc1');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('montU','pMarc2');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('montU','pMarc3');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('montU','pMarc4');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('montU','pUni');

-- U/Montecarlo
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('montV','pUni');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('montV','pMarc4');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('montV','pMarc3');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('montV','pMarc2');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('montV','pMarc1');


-- Parque/U
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('parqU','pParq1');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('parqU','pParq2');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('parqU','pParq3');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('parqU','pParq4');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('parqU','pParq5');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('parqU','pParq6');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('parqU','pParq7');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('parqU','pParq8');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('parqU','pUni');

-- U/Parque
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('parqU','pUni');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('parqU','pParq8');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('parqU','pParq7');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('parqU','pParq6');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('parqU','pParq5');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('parqU','pParq4');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('parqU','pParq3');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('parqU','pParq2');
INSERT INTO RutaParadero (idRuta, idParadero) VALUES ('parqU','pParq1');


-- -----------------------------------------------------
-- INSERT `UniAppUnillanos`.`Servicio`
-- -----------------------------------------------------

-- Porfia ida

INSERT INTO Servicio (idRuta, idHorario) VALUES ('porfU',1);
--INSERT INTO Servicio (idRuta, idHorario) VALUES ('porfU',2);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('porfU',3);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('porfU',4);
--INSERT INTO Servicio (idRuta, idHorario) VALUES ('porfU',5);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('porfU',6);

-- Porfia Vuelta

--INSERT INTO Servicio (idRuta, idHorario) VALUES ('porfV',7);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('porfV',8);
--INSERT INTO Servicio (idRuta, idHorario) VALUES ('porfV',9);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('porfV',10);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('porfV',11);

------------------
-- Viva ida
INSERT INTO Servicio (idRuta, idHorario) VALUES ('vivaU',1);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('vivaU',2);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('vivaU',3);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('vivaU',4);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('vivaU',5);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('vivaU',6);

-- Viva Vuelta

INSERT INTO Servicio (idRuta, idHorario) VALUES ('vivaV',7);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('vivaV',8);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('vivaV',9);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('vivaV',10);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('vivaV',11);

------------------
-- Villacentro ida
INSERT INTO Servicio (idRuta, idHorario) VALUES ('vilcU',1);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('vilcU',2);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('vilcU',3);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('vilcU',4);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('vilcU',5);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('vilcU',6);

-- Villacentro Vuelta

INSERT INTO Servicio (idRuta, idHorario) VALUES ('vilcV',7);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('vilcV',8);
--INSERT INTO Servicio (idRuta, idHorario) VALUES ('vilcV',9);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('vilcV',10);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('vilcV',11);

------------------
-- Grama-Postobon ida
INSERT INTO Servicio (idRuta, idHorario) VALUES ('grPsU',1);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('grPsU',2);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('grPsU',3);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('grPsU',4);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('grPsU',5);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('grPsU',6);

-- Grama-Postobon Vuelta

INSERT INTO Servicio (idRuta, idHorario) VALUES ('grPsV',7);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('grPsV',8);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('grPsV',9);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('grPsV',10);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('grPsV',11);

------------------
-- Terminal ida
INSERT INTO Servicio (idRuta, idHorario) VALUES ('termU',1);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('termU',2);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('termU',3);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('termU',4);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('termU',5);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('termU',6);

-- Terminal Vuelta

INSERT INTO Servicio (idRuta, idHorario) VALUES ('termV',7);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('termV',8);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('termV',9);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('termV',10);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('termV',11);

------------------
-- Covisan ida
INSERT INTO Servicio (idRuta, idHorario) VALUES ('covsU',1);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('covsU',2);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('covsU',3);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('covsU',4);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('covsU',5);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('covsU',6);

-- Covisan Vuelta

INSERT INTO Servicio (idRuta, idHorario) VALUES ('covsV',7);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('covsV',8);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('covsV',9);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('covsV',10);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('covsV',11);

------------------
-- Maracos ida
INSERT INTO Servicio (idRuta, idHorario) VALUES ('marcU',1);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('marcU',2);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('marcU',3);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('marcU',4);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('marcU',5);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('marcU',6);

-- Maracos Vuelta

INSERT INTO Servicio (idRuta, idHorario) VALUES ('marcV',7);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('marcV',8);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('marcV',9);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('marcV',10);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('marcV',11);

------------------
-- Montecarlo ida
INSERT INTO Servicio (idRuta, idHorario) VALUES ('montU',1);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('montU',2);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('montU',3);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('montU',4);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('montU',5);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('montU',6);

-- Montecarlo Vuelta

INSERT INTO Servicio (idRuta, idHorario) VALUES ('montV',7);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('montV',8);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('montV',9);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('montV',10);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('montV',11);

------------------
-- Parque ida
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',1);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',12);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',2);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',13);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',14);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',15);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',16);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',17);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',18);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',19);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',20);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',21);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',22);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',23);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',24);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',25);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',26);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',27);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',28);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',29);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',30);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',31);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',32);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',33);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',34);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',35);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',36);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqU',37);


-- Montecarlo Vuelta

INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',12);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',2);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',13);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',14);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',15);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',16);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',17);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',18);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',19);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',20);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',21);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',22);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',23);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',24);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',25);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',26);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',27);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',28);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',29);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',30);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',31);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',32);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',33);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',34);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',35);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',36);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',37);
INSERT INTO Servicio (idRuta, idHorario) VALUES ('parqV',38);