import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'config_local.dart';

dynamic configApp() {
  switch (DotEnv().env['FLUTTER_ENV']) {
    case 'local':
      return configLocal();
    case 'dev':
      return {
        "SERVER_HOST": "localhost",
        "SERVER_PORT": "6630",
      };
    case 'prod':
      return {
        "SERVER_HOST": "localhost",
        "SERVER_PORT": "6630",
      };
    default:
      print('env invalid');
      return {};
  }
}
