import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvHelper {
  static final String url = dotenv.get("LIVE_URL");
}
