import 'package:twenty_one_mining/entities/level.dart';

class LevelRepository {
  getLevels() {
    return [
      Level(1, 'Minerales en Casa', 'assets/images/levels/level_1.png', ['Dormitorio', 'Cocina', 'Sala']),
      Level(2, 'Minerales en la Medicina', 'assets/images/levels/level_2.png', ['Ambulancia', 'Hospital', 'Instrumentos y Equipos']),
      Level(3, 'Minerales en Transporte', 'assets/images/levels/level_3.png', ['Aéreo', 'Terrestre', 'Marítimo']),
      Level(4, 'Minerales en Agricultura', 'assets/images/levels/level_4.png', ['Maquinaría', 'Herramientas', 'Insumos']),
    ];
  }
}
