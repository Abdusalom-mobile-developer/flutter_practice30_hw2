import 'package:hive/hive.dart';

class HiveUsage {
  static var box = Hive.box("small_database");

  static storeSignInUserInfo(Map<String, String> json) async {
    await box.put("signInInfo", json.toString());
  }

  static storeSignUpUserInfo(Map<String, String> json) async {
    await box.put("signUpInfo", json.toString());
  }

  static storeData(String key, String value) async {
    await box.put(key, value);
  }

  static getData(String key) {
    var response = box.get(key);
    return response ?? "404";
  }
}
