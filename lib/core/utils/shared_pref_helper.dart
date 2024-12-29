import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static final SharedPreferencesHelper _instance = SharedPreferencesHelper._internal();
  late SharedPreferences _prefs;

  // Private constructor
  SharedPreferencesHelper._internal();

  // Factory constructor to return the same instance
  factory SharedPreferencesHelper() {
    return _instance;
  }

  // Initialize the SharedPreferences instance
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Save a String value
  Future<void> setString(String key, String value) async {
    await _prefs.setString(key, value);
  }

  // Retrieve a String value
  String? getString(String key) {
    return _prefs.getString(key);
  }

  // Save an int value
  Future<void> setInt(String key, int value) async {
    await _prefs.setInt(key, value);
  }

  // Retrieve an int value
  int? getInt(String key) {
    return _prefs.getInt(key);
  }

  // Save a boolean value
  Future<void> setBool(String key, bool value) async {
    await _prefs.setBool(key, value);
  }

  // Retrieve a boolean value
  bool? getBool(String key) {
    return _prefs.getBool(key);
  }

  // Save a double value
  Future<void> setDouble(String key, double value) async {
    await _prefs.setDouble(key, value);
  }

  // Retrieve a double value
  double? getDouble(String key) {
    return _prefs.getDouble(key);
  }

  // Save a List of Strings
  Future<void> setStringList(String key, List<String> value) async {
    await _prefs.setStringList(key, value);
  }

  // Retrieve a List of Strings
  List<String>? getStringList(String key) {
    return _prefs.getStringList(key);
  }

  // Remove a value by key
  Future<void> remove(String key) async {
    await _prefs.remove(key);
  }

  // Clear all preferences
  Future<void> clear() async {
    await _prefs.clear();
  }
}
