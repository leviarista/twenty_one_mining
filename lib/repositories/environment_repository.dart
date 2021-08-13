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
        break;
      case 'Sala':
        break;
      // Metales en la Medicina
      case 'Ambulancia':
        break;
      case 'Hospital':
        break;
      case 'Instrumentos y Equipos':
        break;
      // Metales en Transporte
      case 'Aéreo':
        break;
      case 'Terrestre':
        break;
      case 'Marítimo':
        break;
      // Metales en Agricultura
      case 'Maquinaría':
        break;
      case 'Herramientas':
        break;
      case 'Insumos':
        break;
      default:
        break;
    }
  }
}
