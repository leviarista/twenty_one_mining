import 'package:twenty_one_mining/entities/quiz.dart';

class QuizRepository {

  getQuiz(environment) {
    switch (environment) {
    // Metales en Casa
      case 'Dormitorio':
        return Quiz(1, 'Dormitorio', '¿Qué mineral se emplea en \n las baterias?', ['Litio', 'Wolframio', 'Paladio', 'Oro'], 1);
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
