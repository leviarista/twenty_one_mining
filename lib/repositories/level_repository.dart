import 'package:twenty_one_mining/entities/level.dart';

class LevelRepository {
  getLevels() {
    return [
      Level(1, 'Metales en Casa', 'assets/images/levels/level_1.png', ['Dormitorio', 'Cocina', 'Sala']),
      Level(2, 'Metales en la Medicina', 'assets/images/levels/level_2.png', ['Ambulancia', 'Hospital', 'Instrumentos y Equipos']),
      Level(3, 'Metales en Transporte', 'assets/images/levels/level_3.png', ['Aéreo', 'Terrestre', 'Marítimo']),
      Level(4, 'Metales en Agricultura', 'assets/images/levels/level_4.png', ['Maquinaría', 'Herramientas', 'Insumos']),
    ];
  }
}
