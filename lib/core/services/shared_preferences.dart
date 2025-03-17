import 'package:shared_preferences/shared_preferences.dart';

 class SharedPreferencesHelper {
  // Private constructor
  SharedPreferencesHelper._();

  // Singleton instance
  static final SharedPreferencesHelper _instance = SharedPreferencesHelper._();

  // Getter for the instance
  static SharedPreferencesHelper get instance => _instance;

  // SharedPreferences object
  static late SharedPreferences _prefs;

  // Initialize SharedPreferences
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Example methods to save and retrieve data

  // Save a string
  Future<void> saveString(String key, String value) async {
    await _prefs.setString(key, value);
  }

  // Get a string
  String? getString(String key) {
    return _prefs.getString(key);
  }

  // Save an integer
  Future<void> saveInt(String key, int value) async {
    await _prefs.setInt(key, value);
  }

  // Get an integer
  int? getInt(String key) {
    return _prefs.getInt(key);
  }

  // Save a boolean
  static  saveBool(String key, bool value)  {
     _prefs.setBool(key, value);
  }

  // Get a boolean
  static bool? getBool(String key) {
    return _prefs.getBool(key) ?? false;
  }

  // Remove a key
  Future<void> remove(String key) async {
    await _prefs.remove(key);
  }

  // Clear all data
  Future<void> clear() async {
    await _prefs.clear();
  }
}