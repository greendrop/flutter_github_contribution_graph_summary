import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  factory AppConfig() => _instance;
  AppConfig._internal();

  static final AppConfig _instance = AppConfig._internal();

  String env = 'local';
  bool displayEnv = true;

  Future<void> load() async {
    await dotenv.load(fileName: '.env');

    env = '';
    env = dotenv.env['ENV'].toString();
    displayEnv = env != 'prod';

    switch (env) {
      case 'prod':
        break;
    }
  }
}
