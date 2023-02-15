import 'package:shared_preferences/shared_preferences.dart';
String? lastColor;

class PrefsService {
 static const String _key = 'key';
 static save(String color) async {
   var prefs = await SharedPreferences.getInstance();
   prefs.setString(_key, color);
  }

  static searchData() async {
    var prefs = await SharedPreferences.getInstance();
    String? stringValue = prefs.getString(_key);
    return stringValue;
  }
}