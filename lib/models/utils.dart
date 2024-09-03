import 'package:flutter_practice30_hw2/models/user_info_classes.dart';
import 'package:logger/logger.dart';

class Utils {
  static final logger = Logger();

  // Method to print message using Logger package
  static d(String message) {
    logger.d(message);
  }

  static toJsonSignInInfo(UserSignInInfo info) {
    return {"email": info.email, "password": info.password};
  }

  static toJsonSignUpInfo(UserSignUpInfo info) {
    return {
      "email": info.email,
      "phoneNumber": info.phoneNumber,
      "address": info.address
    };
  }
}
