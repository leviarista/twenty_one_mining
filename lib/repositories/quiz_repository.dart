import 'package:twenty_one_mining/entities/quiz.dart';

class QuizRepository {

  getQuiz(environment) {
    switch (environment) {
    // Metales en Casa
      case 'Dormitorio':
        return Quiz(1, 'Dormitorio', '¿Qué mineral se emplea en \n las baterias?', ['Litio', 'Wolframio', 'Paladio', 'Oro'], 1);
        break;
      case 'Cocina':
        return Quiz(1, 'Cocina', '¿Qué mineral se emplea el magnetrón \n de los microondas?', ['Oro', 'Paladio', 'Titanio', 'Cobre'], 3);
        break;
      case 'Sala':
        return Quiz(1, 'Sala', '¿Qué mineral se emplea en la elaboración \n de los LED?', ['Paladio', 'Silicio', 'Aluminio', 'Cobre'], 2);
        break;
    // Metales en la Medicina
      case 'Ambulancia':
        return Quiz(2, 'Ambulancia', 'Question', ['Opción 01', 'Opción 02', 'Opción 03', 'Opción 04'], 1);
        break;
      case 'Hospital':
        return Quiz(2, 'Hospital', 'Question', ['Opción 01', 'Opción 02', 'Opción 03', 'Opción 04'], 1);
        break;
      case 'Instrumentos y Equipos':
        return Quiz(2, 'Instrumentos y Equipos', 'Question', ['Opción 01', 'Opción 02', 'Opción 03', 'Opción 04'], 1);
        break;
    // Metales en Transporte
      case 'Aéreo':
        return Quiz(3, 'Aéreo', 'Question', ['Opción 01', 'Opción 02', 'Opción 03', 'Opción 04'], 1);
        break;
      case 'Terrestre':
        return Quiz(3, 'Terrestre', 'Question', ['Opción 01', 'Opción 02', 'Opción 03', 'Opción 04'], 1);
        break;
      case 'Marítimo':
        return Quiz(3, 'Marítimo', 'Question', ['Opción 01', 'Opción 02', 'Opción 03', 'Opción 04'], 1);
        break;
    // Metales en Agricultura
      case 'Maquinaría':
        return Quiz(4, 'Maquinaría', 'Question', ['Opción 01', 'Opción 02', 'Opción 03', 'Opción 04'], 1);
        break;
      case 'Herramientas':
        return Quiz(4, 'Herramientas', 'Question', ['Opción 01', 'Opción 02', 'Opción 03', 'Opción 04'], 1);
        break;
      case 'Insumos':
        return Quiz(4, 'Insumos', 'Question', ['Opción 01', 'Opción 02', 'Opción 03', 'Opción 04'], 1);
        break;
      default:
        break;
    }
  }
}
