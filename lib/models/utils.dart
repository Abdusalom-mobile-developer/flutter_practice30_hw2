import 'package:logger/logger.dart';

class Utils {

  static final logger = Logger();

  // Method to print message using Logger package
  static d(String message) {
    logger.d(message);
  }


}
