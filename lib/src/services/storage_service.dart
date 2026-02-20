import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  const StorageService._();

  static late SharedPreferences _prefs;

  static Future<void> init() async => _prefs = await SharedPreferences.getInstance();

  static String? getString(String key) => _prefs.getString(key);
  static Future<bool> setString(String key, String value) async => await _prefs.setString(key, value);

  static int? getInt(String key) => _prefs.getInt(key);
  static Future<bool> setInt(String key, int value) async => await _prefs.setInt(key, value);

  static bool getBool(String key, {bool defaultValue = false}) => _prefs.getBool(key) ?? defaultValue;
  static Future<bool> setBool(String key, bool value) async => await _prefs.setBool(key, value);

  static Future<bool> remove(String key) async => await _prefs.remove(key);
}
