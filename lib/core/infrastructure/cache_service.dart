import 'package:shared_preferences/shared_preferences.dart';

class CacheService {
  static final CacheService _singleton = new CacheService._internal();
  static SharedPreferences? _prefs;

  CacheService._internal();

  static Future<CacheService> getInstance() async {
    _prefs ??= await SharedPreferences.getInstance();
    return _singleton;
  }

  static void put(dynamic key, String value) {
    if (key != null) _prefs!.setString(key.toString(), value);
  }

  static String? get(dynamic key) {
    return (key != null) ? _prefs!.getString(key.toString()) : null;
  }

  static void clearAll() {
    _prefs!.clear();
  }

  static void remove(String key) {
    if (key == null) return;
    _prefs!.remove(key);
  }

  static void clearKeys(List<String> keys) {
    if (keys == null) return;
    keys.forEach((key) => _prefs!.remove(key));
  }
}
