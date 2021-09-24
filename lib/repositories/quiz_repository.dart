import 'package:twenty_one_mining/entities/quiz.dart';

class QuizRepository {
  getQuiz(environment) {
    switch (environment) {
      // Metales en Casa
      case 'Dormitorio':
        return Quiz(1, 'Dormitorio', '¿Qué mineral se emplea en \n las baterias?', ['Litio', 'Wolframio', 'Paladio', 'Oro'], 1);
        // break;
      case 'Cocina':
        return Quiz(1, 'Cocina', '¿Qué mineral se emplea el magnetrón \n de los microondas?', ['Oro', 'Paladio', 'Titanio', 'Cobre'], 3);
        // break;
      case 'Sala':
        return Quiz(1, 'Sala', '¿Qué mineral se emplea en la elaboración \n de los LED?', ['Paladio', 'Silicio', 'Aluminio', 'Cobre'], 2);
        // break;
      // Metales en la Medicina
      case 'Ambulancia':
        return Quiz(2, 'Ambulancia', '¿Qué minerales se emplean en la construcción\n del exterior y chasis de las ambulancias?',
            ['Oro – Plata', 'Aluminio – Estaño', 'Hierro – Aluminio', 'Plata – Cobre'], 3);
        // break;
      case 'Hospital':
        return Quiz(2, 'Hospital', '¿Qué minerales se emplean en la estructura de \nlas camillas clínicas?',
            ['Acero inoxidable', 'Aluminio', 'Hierro', 'Plata '], 1);
        // break;
      case 'Instrumentos y Equipos':
        return Quiz(2, 'Instrumentos y Equipos', '¿Cuál de estos minerales se emplea en\n la fabricación de un NEGATOSCOPIO',
            ['Galio', 'Magnesio', 'Plomo', 'Azufre'], 1);
        // break;
      // Metales en Transporte
      case 'Aéreo':
        return Quiz(3, 'Aéreo', '¿Qué minerales se emplean en\n el exterior del avión?',
            ['Aluminio – Titanio \nMagnesio', 'Estaño – Cobre - Oro', 'Plata – Cobre - Oro', 'Estaño – Cobre – Plata'], 1);
        // break;
      case 'Terrestre':
        return Quiz(3, 'Terrestre', '¿Qué mineral NO se emplea en \nla construcción del radiador?', ['Cobre', 'Aluminio', 'Latón', 'Oro'], 4);
        // break;
      case 'Marítimo':
        return Quiz(
            3, 'Marítimo', '¿Cuál es mineral principal empleado en\n la construcción de los Barcos?', ['Hierro', 'Aluminio', 'Latón', 'Oro'], 1);
        // break;
      // Metales en Agricultura
      case 'Maquinaría':
        return Quiz(4, 'Maquinaría', '¿Qué minerales se emplean en un TRACTOR?', ['Cobre', 'Manganeso', 'Magnesio', '1 y 3'], 4);
        // break;
      case 'Herramientas':
        return Quiz(4, 'Herramientas', '¿Qué mineral se emplea en los PICOS?',
            ['Carbono', 'Aleación de Hierro y \nCarbono', 'Estaño', 'Acero'], 4);
        // break;
      case 'Insumos':
        return Quiz(4, 'Insumos', '¿Qué minerales se usa dentro de la cal?', ['Aluminio', 'Fosfatos', 'Óxido de Calcio', 'Sulfato de Cobre'], 3);
        // break;
      default:
        break;
    }
  }
}
