import 'package:twenty_one_mining/entities/environment_Item.dart';

class EnvironmentRepository {
  getEnvironmentItems(environment) {
    switch (environment) {
      // Metales en Casa
      case 'Dormitorio':
        return [
          // EnvironmentItem(1, 'assets/images/environments/dormitorio_item (1).png', 'stack', 5, null, null, 15, null),
          EnvironmentItem(2, 'assets/images/environments/dormitorio_item (2).png', 'stack', 5, null, null, 50,
              '•	Aluminio (Al) usado en la fabricación de tu trofeo, a menudo se pinta de otros colores para simular metales preciosos.'),
          EnvironmentItem(3, 'assets/images/environments/dormitorio_item (3).png', 'center', 50, null, null, null,
              '•	Litio (Li): usado en las baterías recargables de tu computadora. \n •	Oro (Au): Se usa en el procesador de tu computadora. \n •	Fósforo (P): Se usa en la pantalla de tu computadora.'),
          // EnvironmentItem(4, 'assets/images/environments/dormitorio_item (4).png', 'center', 140, null, null, 50, null),
          // EnvironmentItem(5, 'assets/images/environments/dormitorio_item (5).png', 'center', 140, 50, null, null, null),
          // EnvironmentItem(6, 'assets/images/environments/dormitorio_item (6).png', 'center', 200, null, null, null, null),
          // EnvironmentItem(7, 'assets/images/environments/dormitorio_item (7).png', 'center', 200, null, null, 50, null),
          // EnvironmentItem(8, 'assets/images/environments/dormitorio_item (8).png', 'center', 200, 50, null, null, null),
          EnvironmentItem(9, 'assets/images/environments/dormitorio_item (9).png', 'center', null, null, 50, 15,
              '•	Hierro (Fe): Usado junto al Carbono para formar las cuerdas de tu guitarra.'),
          EnvironmentItem(10, 'assets/images/environments/dormitorio_item (10).png', 'center', null, null, 0, null,
              '•	Hierro (Fe): Se usa en los rodamientos de tu patineta combinado al cromo (Cr)'),
          // EnvironmentItem(11, 'assets/images/environments/dormitorio_item (11).png', 'center', null, 15, 10, null, null),
          EnvironmentItem(12, 'assets/images/environments/dormitorio_item (12).png', 'center', null, 70, 50, null,
              '•	Tungsteno (W): Usado en el filamento que da luz dentro de los focos \n •	Cobre (Cu): Usado en el alambre o cable de tu lámpara.'),
        ];
      // break;
      case 'Cocina':
        return [
          EnvironmentItem(1, 'assets/images/environments/cocina_item (1).png', 'center', 50, null, null, 15,
              'Sabías que los refrigeradores emplean laminas de Alumnio en su construcción y en el sistema de enfriamiento se emplea Cobre.'),
          EnvironmentItem(2, 'assets/images/environments/cocina_item (2).png', 'center', 50, null, null, null,
              'Sabías que la parte más impotante de los microondas es el magnetrón, y está hecho con Titanio. \n Así mismo este electrodoméstico emplea: Hierro, Cobre y Alumnio.'),
          EnvironmentItem(3, 'assets/images/environments/cocina_item (3).png', 'center', null, 50, null, null,
              'Sabías que en las cocinas se emplea el Alumnio, Cobre, Hierro y demás metales en su construcción.'),
        ];
      // break;
      case 'Sala':
        return [
          EnvironmentItem(1, 'assets/images/environments/sala_item (1).png', 'center', 50, null, null, 50,
              'Sabías que los televisores emplean chips para su funcionamiento y para la elaboración se emplea Cobre, Silicio, Oro, entre otros.'),
          EnvironmentItem(2, 'assets/images/environments/sala_item (2).png', 'center', null, null, 50, 70,
              'Sabías que en los parlantes y la industria del sonido emplean Plata, Titanio, Aluminio, Oro y otros.'),
          EnvironmentItem(3, 'assets/images/environments/sala_item (3).png', 'center', null, 50, null, null,
              'Sabías que las nuevas tecnologías LED emplean Silicio en su elaboración.'),
        ];
      // break;
      // Metales en la Medicina
      case 'Ambulancia':
        return [
          EnvironmentItem(1, 'assets/images/environments/ambulancia_item (1).png', 'center', null, null, null, null,
              'Sabías que las ambulancias poseen muchos minerales en su construcción, desde el Hierro y Aluminio en la construcción del chasis y exterior, hasta Silicio en las ventanas y aún más en los instrumentos que tienen a bordo.'),
        ];
      // break;
      case 'Hospital':
        return [
          EnvironmentItem(1, 'assets/images/environments/hospital_item (1).png', 'center', null, null, 15, 15,
              'CAMILLA CLÍNICA \n ⦁	Acero inoxidable(estructura). Hierro. Cromo . Carbono. \n ⦁	Aluminio.'),
          EnvironmentItem(
              2, 'assets/images/environments/hospital_item (2).png', 'center', 15, 105, null, null, 'SUERO FISIOLÓGICO \n ⦁	Cloruro de Sodio.'),
          EnvironmentItem(
              3, 'assets/images/environments/hospital_item (3).png', 'center', 15, 15, null, null, 'SUERO FISIOLÓGICO \n ⦁	Cloruro de Sodio. '),
        ];
      // break;
      case 'Instrumentos y Equipos':
        return [
          EnvironmentItem(1, 'assets/images/environments/instrumentos_equipos_item (1).png', 'center', null, null, null, 15,
              'NEGATOSCOPIO (lector de radiografías) \n ⦁	Indio - Galio - Arsénico (luces LED). \n ⦁	Aluminio. \n ⦁	Acero inoxidable(estructura), Hierro, Cromo, Carbono.'),
          EnvironmentItem(2, 'assets/images/environments/instrumentos_equipos_item (2).png', 'center', null, null, null, null,
              'MOBILIARIO QUIRURGICO: \n ⦁	 Cobre (cables de conexión). \n ⦁	Hierro(estructura).'),
          EnvironmentItem(3, 'assets/images/environments/instrumentos_equipos_item (3).png', 'center', null, 15, null, null,
              'ELECTROCARDIÓGRAFO \n ⦁	Aluminio(estructura). \n ⦁	Plata (electrodo desechable). \n ⦁	Litio (batería recargable).'),
        ];
      // break;
      // Metales en Transporte
      case 'Aéreo':
        return [
          EnvironmentItem(1, 'assets/images/environments/aereo_item (1).png', 'stack', 50, null, null, 15, '''CABINA DE MANDO:
•	Fibra de Carbono 
•	Magnesio
•	Zinc
'''),
          EnvironmentItem(2, 'assets/images/environments/aereo_item (2).png', 'center', 50, null, null, null, '''PANTALLAS MULTIFUNCIÓN:
⦁	Cobre 
⦁	Indio
⦁	Germanio
⦁	Silicio
'''),
          EnvironmentItem(3, 'assets/images/environments/aereo_item (3).png', 'center', 50, 15, null, null, '''AURICULARES:
⦁	Cables de Cobre
⦁	Estaño 
⦁	Silicio 
⦁	Galio'''),
          EnvironmentItem(4, 'assets/images/environments/aereo_item (4).png', 'center', null, null, 15, 15, '''EXTERIOR DEL AVIÓN:
⦁	Aluminio
⦁	Titanio
⦁	Magnesio
'''),
          EnvironmentItem(5, 'assets/images/environments/aereo_item (5).png', 'center', null, null, 15, null, '''LUCES INTERIORES (LUCES LED):
⦁	Indio
⦁	Galio
⦁	Nitrógeno
'''),
          EnvironmentItem(6, 'assets/images/environments/aereo_item (6).png', 'center', null, 15, 15, null, '''ASIENTO DEL AVION:
⦁	Cobre (Cableado interno)
⦁	Carbón (para la creación del plástico del que está hecho)
⦁	Aceros con alineaciones de Cromo. Aluminio, níquel, vanadio. (Pernos del asiento)
'''),
        ];
      // break;
      case 'Terrestre':
        return [
          EnvironmentItem(1, 'assets/images/environments/terrestre_item (1).png', 'center', 15, null, null, null, '''CHASIS DEL CARRO:
⦁	Acero (Hierro Y Carbono)
⦁	Aluminio
'''),
          EnvironmentItem(2, 'assets/images/environments/terrestre_item (2).png', 'center', null, null, 50, 15, '''MOTOR:
⦁	Cobre
⦁	Aluminio
⦁	Cromo
⦁	Indio
⦁	Vanadio
⦁	Indio
⦁	Magnesio
'''),
          EnvironmentItem(3, 'assets/images/environments/terrestre_item (3).png', 'center', null, null, 15, 100, '''LLANTA (RINES):
⦁	Aluminio 
⦁	Magnesio
⦁	Hierro (Tuercas)'''),
          EnvironmentItem(4, 'assets/images/environments/terrestre_item (4).png', 'center', null, 100, 15, null, '''RADIADOR:
⦁	Cobre
⦁	Aluminio 
⦁	Latón (Cobre y Zinc)'''),
          EnvironmentItem(5, 'assets/images/environments/terrestre_item (5).png', 'center', null, 15, 50, null, '''BATERÍA:
⦁	Litio
⦁	Cobalto
⦁	Plomo
⦁	Cobre'''),
        ];
      // break;
      case 'Marítimo':
        return [
          EnvironmentItem(1, 'assets/images/environments/maritimo_item (1).png', 'center', 50, null, null, null, '''CASCO DEL BARCO: 
⦁	Hierro 
⦁	Carbono
⦁	Aluminio
'''),
          EnvironmentItem(2, 'assets/images/environments/maritimo_item (2).png', 'center', null, null, 50, 50, '''SUPERESTRUCTURA DE BARCO:
⦁	Hierro 
⦁	Carbono
⦁	Cobre
⦁	Aluminio
⦁	Titanio
⦁	Bronce (Cobre y Estaño)
'''),
          EnvironmentItem(3, 'assets/images/environments/maritimo_item (3).png', 'center', null, 50, 50, null, '''PUENTE DE MANDO DE BARCO:
⦁	Cobre
⦁	Estaño
⦁	Aluminio
⦁	Litio
⦁	Fibra de Carbono
'''),
        ];
      // break;
      // Metales en Agricultura
      case 'Maquinaría':
        return [
          EnvironmentItem(1, 'assets/images/environments/maquinaria_item (1).png', 'center', null, null, null, null, '''⦁ Motor: Cobre, Aluminio, Cromo, Vanadio, Indio, Magnesio
⦁ Llantas: Alambres acerados, Enmallados
⦁ Pernos y Aros: Acero inoxidable, Aceros son alineaciones de cromo. Aluminio, Níquel, Vanadio.
⦁ Pintura: Cobre, Fierro, Plomo, Selenio, Cadmio
'''),
        ];
      // break;
      case 'Herramientas':
        return [
          EnvironmentItem(
              1, 'assets/images/environments/herramientas_item (1).png', 'center', 15, null, null, 15, 'Pala: \nAcero aleación de Hierro y Carbono.'),
          EnvironmentItem(2, 'assets/images/environments/herramientas_item (2).png', 'center', 25, null, null, 100, 'Rastrillo: \n⦁	Hierro'),
          EnvironmentItem(3, 'assets/images/environments/herramientas_item (3).png', 'center', 15, 100, null, null,
              'Rastrillo de Hojas: \n⦁	Acero aleación de Hierro y Carbono'),
          EnvironmentItem(4, 'assets/images/environments/herramientas_item (4).png', 'center', 15, 15, null, null,
              'Azadilla de horquilla o escardillo: \n⦁	Acero o aluminio'),
          EnvironmentItem(
              5, 'assets/images/environments/herramientas_item (5).png', 'center', null, null, 0, 15, 'Regadera: \n⦁	Aluminio,\n⦁	Estaño\n⦁	Hierro'),
          EnvironmentItem(6, 'assets/images/environments/herramientas_item (6).png', 'center', null, null, 0, 85, 'Pico: \n⦁	Acero '),
          EnvironmentItem(7, 'assets/images/environments/herramientas_item (7).png', 'center', null, 15, 0, null, 'Carretilla: \n⦁	Acero Inoxidable'),
        ];
      // break;
      case 'Insumos':
        return [
          EnvironmentItem(1, 'assets/images/environments/insumos_item (1).png', 'center', null, null, null, 15,
              'Cal: \nSe usa para estabilizar el pH del suelo y está formada por Óxido de calcio(CaO) '),
          EnvironmentItem(2, 'assets/images/environments/insumos_item (2).png', 'center', null, null, null, null,
              'Fosfatos: \nEstán conformados por minerales de Fósforo para aportar riqueza al suelo y se produzcan eficientemente los alimentos.'),
          EnvironmentItem(3, 'assets/images/environments/insumos_item (3).png', 'center', null, 15, null, null,
              'Urea: \nLa Urea está formada por Nitrato de Amonio y gracias al nitrógeno que posee las plantas pueden crecer de manera adecuada.'),
        ];
      // break;
      default:
        break;
    }
  }
}
