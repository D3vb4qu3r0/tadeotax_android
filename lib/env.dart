import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env{
  String api_google_maps = dotenv.get('API_GOOGLE_MAPS', fallback: 'invalid maps api key');
  String api_prueba = dotenv.get('prueba', fallback: 'invalid prueba api key');

}