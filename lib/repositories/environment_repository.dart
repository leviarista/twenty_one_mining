import 'package:twenty_one_mining/entities/environment_Item.dart';

class EnvironmentRepository {
  getEnvironmentItems(environment) {
    switch (environment) {
      // Metales en Casa
      case 'Dormitorio':
        return [
          EnvironmentItem(1, 'assets/images/environments/dormitorio_item (1).png', 'stack', 5, null, null, 15, null),
          EnvironmentItem(2, 'assets/images/environments/dormitorio_item (2).png', 'stack', 15, null, null, 100,
              'Aluminio (Al) usado en la fabricación de tu trofeo, a menudo se pinta de otros colores para simular metales preciosos.'),
          EnvironmentItem(3, 'assets/images/environments/dormitorio_item (3).png', 'center', 90, null, null, null,
              'Litio (Li): usado en las baterías recargables de tu computadora. \n Oro (Au): Se usa en el procesador de tu computadora. \n Fósforo (P): Se usa en la pantalla de tu computadora.'),
          EnvironmentItem(4, 'assets/images/environments/dormitorio_item (4).png', 'center', 140, null, null, 50, null),
          EnvironmentItem(5, 'assets/images/environments/dormitorio_item (5).png', 'center', 140, 50, null, null, null),
          EnvironmentItem(6, 'assets/images/environments/dormitorio_item (6).png', 'center', 200, null, null, null, null),
          EnvironmentItem(7, 'assets/images/environments/dormitorio_item (7).png', 'center', 200, null, null, 50, null),
          EnvironmentItem(8, 'assets/images/environments/dormitorio_item (8).png', 'center', 200, 50, null, null, null),
          EnvironmentItem(9, 'assets/images/environments/dormitorio_item (9).png', 'center', null, null, 10, 15,
              'Hierro (Fe): Usado junto al Carbono para formar las cuerdas de tu guitarra.'),
          EnvironmentItem(10, 'assets/images/environments/dormitorio_item (10).png', 'center', null, null, 10, null,
              'Hierro (Fe): Se usa en los rodamientos de tu patineta combinado al cromo (Cr)'),
          EnvironmentItem(11, 'assets/images/environments/dormitorio_item (11).png', 'center', null, 15, 10, null, null),
          EnvironmentItem(12, 'assets/images/environments/dormitorio_item (12).png', 'center', null, 70, 0, null,
              'Tungsteno (W): Usado en el filamento que da luz dentro de los focos \n Cobre (Cu): Usado en el alambre o cable de tu lámpara.'),
        ];
        break;
      case 'Cocina':
        return [
          EnvironmentItem(1, 'assets/images/environments/cocina_item (1).png', 'center', 50, null, null, 15,
              'Sabías que los refrigeradores emplean laminas de alumnio en su construcción y en el sistema de enfriamiento se emplea cobre.'),
          EnvironmentItem(2, 'assets/images/environments/cocina_item (2).png', 'center', 50, null, null, null,
              'Sabías que la parte más impotante de los microondas es el magnetrón, y está hecho con titanio. \n Así mismo este electrodoméstico emplea: hierro, cobre y alumnio.'),
          EnvironmentItem(3, 'assets/images/environments/cocina_item (3).png', 'center', null, 50, null, null,
              'Sabías que en las cocinas se emplea el alumnio, cobre, hierro y demás metales en su construcción.'),
        ];
        break;
      case 'Sala':
        return [
          EnvironmentItem(1, 'assets/images/environments/sala_item (1).png', 'center', 50, null, null, 50,
              'Sabías que los televisores emplean chips para su funcionamiento y para la elaboración se emplea cobre, silicio, oro, entre otros.'),
          EnvironmentItem(2, 'assets/images/environments/sala_item (2).png', 'center', null, null, 50, 70,
              'Sabias que en los parlantes y la industria del sonido emplean plata, titanio, aluminio, oro y otros.'),
          EnvironmentItem(3, 'assets/images/environments/sala_item (3).png', 'center', null, 50, null, null,
              'Sabías que las nuevas tecnologías LED emplean sicilio en su elaboración.'),
        ];
        break;
      // Metales en la Medicina
      case 'Ambulancia':
        return [
          EnvironmentItem(1, 'assets/images/environments/ambulancia_item (1).png', 'center', null, null, null, null, null),
        ];
        break;
      case 'Hospital':
        return [
          EnvironmentItem(1, 'assets/images/environments/hospital_item (1).png', 'center', null, null, 15, 15,
              'CAMILLA CLÍNICA \n ⦁	Acero inoxidable(estructura), reservas: Hierro, Marcona. Cromo, Morococha (Junín) . Carbono, Cascas (La Libertad) \n ⦁	Aluminio, reservas: Toromocho (Junín)'),
          EnvironmentItem(2, 'assets/images/environments/hospital_item (2).png', 'center', 15, 105, null, null,
              'SUERO FISIOLÓGICO \n ⦁	Cloruro de Sodio, reservas: '),
          EnvironmentItem(3, 'assets/images/environments/hospital_item (3).png', 'center', 15, 15, null, null,
              'SUERO FISIOLÓGICO \n ⦁	Cloruro de Sodio, reservas: '),
        ];
        break;
      case 'Instrumentos y Equipos':
        return [
          EnvironmentItem(1, 'assets/images/environments/instrumentos_equipos_item (1).png', 'center', null, null, null, 15,
              'NEGATOSCOPIO (lector de radiografías) \n ⦁	Indio- galio- arsénico (luces LED), reservas: Morococha \n ⦁	Aluminio, reservas: Toromocho \n ⦁	Acero inoxidable(estructura), reservas: Hierro, Marcona. Cromo, Morococha. Carbono, Cascas.'),
          EnvironmentItem(2, 'assets/images/environments/instrumentos_equipos_item (2).png', 'center', null, null, null, null,
              'MOBILIARIO QUIRURGICO: \n ⦁	 Cobre (cables de conexión), reservas: Antamina (Ancash), Toquepala, Cerro Verde, Cuajone y Tintaya (Arequipa) \n ⦁	Hierro(estructura), reservas: Hierro, Marcona (Ica)'),
          EnvironmentItem(3, 'assets/images/environments/instrumentos_equipos_item (3).png', 'center', null, 15, null, null,
              'ELECTROCARDIÓGRAFO \n ⦁	Aluminio(estructura), reservas: Toromocho \n ⦁	Plata (electrodo desechable), reservas: Antamina (Ancash) \n ⦁	Litio (batería recargable). reservas: Macusani (Puno)'),
        ];
        break;
      // Metales en Transporte
      case 'Aéreo':
        return [
          EnvironmentItem(1, 'assets/images/environments/aereo_item (1).png', 'stack', 50, null, null, 15, '''CABINA DE MANDO:
•	FIBRA DE CARBONO 
•	Magnesio
•	Zinc
'''),
          EnvironmentItem(2, 'assets/images/environments/aereo_item (2).png', 'center', 50, null, null, null, '''PANTALLAS MULTIFUNCIÓN:
⦁	Cobre 
⦁	INDIO
⦁	Germanio
⦁	Silicio
'''),
          EnvironmentItem(3, 'assets/images/environments/aereo_item (3).png', 'center', 50, 15, null, null, '''AURICULARES:
⦁	CABLES DE COBRE
⦁	Estaño 
⦁	Silicio 
⦁	Galio'''),
          EnvironmentItem(4, 'assets/images/environments/aereo_item (4).png', 'center', null, null, 15, 15, '''EXTERIOR DEL AVIÓN:
⦁	Aluminio
⦁	Titanio
⦁	Magnesio
'''),
          EnvironmentItem(5, 'assets/images/environments/aereo_item (5).png', 'center', null, null, 15, null, '''LUCES INTERIORES (LUCES LED):
⦁	INDIO
⦁	GALIO
⦁	NITRÓGENO
'''),
          EnvironmentItem(6, 'assets/images/environments/aereo_item (6).png', 'center', null, 15, 15, null, '''ASIENTO DEL AVION:
⦁	COBRE (CABLEADO INTERNO)
⦁	CARBON (PARA LA CREACIÓN DEL PLÁSTICO DEL QUE ESTÁ HECHO)
⦁	Aceros con alineaciones de cromo. Aluminio, níquel, vanadio. (PERNOS DEL ASIENTO)
'''),
        ];
        break;
      case 'Terrestre':
        return [
          EnvironmentItem(1, 'assets/images/environments/terrestre_item (1).png', 'center', 15, null, null, null, '''CHASIS DEL CARRO:
⦁	ACERO (HIERRO Y CARBONO)
⦁	ALUMINIO
'''),
          EnvironmentItem(2, 'assets/images/environments/terrestre_item (2).png', 'center', null, null, 50, 15, '''MOTOR:
⦁	Cobre
 Aluminio
⦁	Cromo
⦁	Indio
⦁	Vanadio
⦁	Indio
⦁	Magnesio
'''),
          EnvironmentItem(3, 'assets/images/environments/terrestre_item (3).png', 'center', null, null, 15, 100, '''LLANTA (RINES):
⦁	ALUMINIO 
⦁	MAGNESIO
⦁	HIERRO (TIERCAS)'''),
          EnvironmentItem(4, 'assets/images/environments/terrestre_item (4).png', 'center', null, 100, 15, null, '''RADIADOR:
 COBRE
⦁	ALUMINIO 
⦁	LATÓN (COBRE Y ZINC)'''),
          EnvironmentItem(5, 'assets/images/environments/terrestre_item (5).png', 'center', null, 15, 50, null, '''BATERÍA:
⦁	LITIO
⦁	COBALTO
⦁	PLOMO
⦁	COBRE'''),
        ];
        break;
      case 'Marítimo':
        return [
          EnvironmentItem(1, 'assets/images/environments/maritimo_item (1).png', 'center', 50, null, null, null, '''CASCO DEL BARCO: 
⦁	HIERRO 
⦁	CARBONO
⦁	ALUMINIO
'''),
          EnvironmentItem(2, 'assets/images/environments/maritimo_item (2).png', 'center', null, null, 50, 50, '''SUPERESTRUCTURA DE BARCO:
⦁	HIERRO 
⦁	CARBONO
⦁	COBRE
⦁	ALUMINIO
⦁	TITANIO
⦁	BRONCE (COBRE Y ESTAÑO)
'''),
          EnvironmentItem(3, 'assets/images/environments/maritimo_item (3).png', 'center', null, 50, 50, null, '''PUENTE DE MANDO DE BARCO:
⦁	COBRE
⦁	ESTAÑO
⦁	ALUMINIO
⦁	LITIO
⦁	FIBRA DE CARBONO
'''),
        ];
        break;
      // Metales en Agricultura
      case 'Maquinaría':
        return [
          EnvironmentItem(1, 'assets/images/environments/maquinaria_item (1).png', 'center', null, null, null, null, '''* Motor: 
Cobre, Aluminio, Cromo, Indio, Vanadio, Indio, Magnesio
* Llantas: 
Alambres acerados, Enmallados
* PERNOS Y AROS:
Acero inoxidable, Aceros son alineaciones de cromo. Aluminio, níquel, vanadio.
* Pintura:
Cobre, Fierro, Plomo, Selenio, Cadmio
'''),
        ];
        break;
      case 'Herramientas':
        return [
          EnvironmentItem(1, 'assets/images/environments/herramientas_item (1).png', 'center', 15, null, null, 15,
              'PALA: \nAcero aleación de hierro y carbono.'),
          EnvironmentItem(2, 'assets/images/environments/herramientas_item (2).png', 'center', 25, null, null, 100, 'RASTRILLO: \n*	Hierro'),
          EnvironmentItem(3, 'assets/images/environments/herramientas_item (3).png', 'center', 15, 100, null, null,
              'Escoba: \n*	Acero aleación de hierro y carbono'),
          EnvironmentItem(4, 'assets/images/environments/herramientas_item (4).png', 'center', 15, 15, null, null,
              'Azadilla de horquilla o escardillo: \n*	Acero o aluminio'),
          EnvironmentItem(5, 'assets/images/environments/herramientas_item (5).png', 'center', null, null, 0, 15,
              'REGADERA: \n*	Aluminio,\n*	Estaño\n*	Hierro'),
          EnvironmentItem(6, 'assets/images/environments/herramientas_item (6).png', 'center', null, null, 0, 85, 'PICO: \n*	Acero '),
          EnvironmentItem(
              7, 'assets/images/environments/herramientas_item (7).png', 'center', null, 15, 0, null, 'CARRETILLA: \n*	Acero Inoxidable'),
        ];
        break;
      case 'Insumos':
        return [
          EnvironmentItem(1, 'assets/images/environments/insumos_item (1).png', 'center', null, null, null, 15,
              'CAL: \n*	Oxido de Calcio Disponible (CaO)\n*	Hidróxido de Calcio Disponible (Ca(OH)2)\n*	Oxido de Magnesio (MgO)\n*	Residuos Insolubles en (HCl)'),
          EnvironmentItem(
              2, 'assets/images/environments/insumos_item (2).png', 'center', null, null, null, null, 'FOSFATOS: \n*	Fosfato de Amonio (H₁₂N₃O₄P)'),
          EnvironmentItem(3, 'assets/images/environments/insumos_item (3).png', 'center', null, 15, null, null, 'UREA: \n*	Nitrógeno (N)'),
        ];
        break;
      default:
        break;
    }
  }
}
