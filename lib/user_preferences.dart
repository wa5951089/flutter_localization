import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {

  static SharedPreferences? _preferences;

  static init() async => _preferences = await SharedPreferences.getInstance();

  static Future<bool?> set(key,value) async=> await _preferences?.setString(key, value);

  static String? get(key)=> _preferences?.getString(key);
}