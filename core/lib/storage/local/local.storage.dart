import 'package:core/utils/errors.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum LocalKeys { id }

class LocalStorage {
  static late SharedPreferences sharedPreferences;

  static Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> setBool(String key, bool value) async {
    await sharedPreferences.setBool(key, value);
  }

  Future<void> setString(String key, String value) async {
    await sharedPreferences.setString(key, value);
  }

  Future<bool> getBool(String key) async {
    return sharedPreferences.getBool(key) ?? false;
  }

  String getString(String key) {
    final result = sharedPreferences.getString(key);
    if (result == null) {
      throw LocalIdNullError("null id from local storage", source: "LocalStorage- getString");
    }
    return result;
  }
}
