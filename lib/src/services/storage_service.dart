import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  const StorageService._();

  static late SharedPreferences _prefs;

  static Future<void> init() async => _prefs = await SharedPreferences.getInstance();

  static String? getString(String key) => _prefs.getString(key);

  static bool getBool(String key, {bool defaultValue = false}) => _prefs.getBool(key) ?? defaultValue;

  static Future<bool> setString(String key, String value) async => await _prefs.setString(key, value);

  static Future<bool> setBool(String key, bool value) async => await _prefs.setBool(key, value);

  static Future<bool> remove(String key) async => await _prefs.remove(key);
}
