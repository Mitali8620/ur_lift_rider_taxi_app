import 'package:flutter/material.dart';
import 'package:urmusic_world/screens/mytheme_preference.dart';

// import '../screens/mytheme_preference.dart';

class ModelTheme extends ChangeNotifier {
  late bool _isDark;
  late MyThemePreferences _preferences;
  bool get isDark => _isDark;

  ModelTheme() {
    _isDark = false;
    _preferences = MyThemePreferences();
    getPreferences();
  }

  // Switching the themes
  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }

  // Toggle theme method
  void toggleTheme() {
    isDark = !isDark;
  }

  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }
}
