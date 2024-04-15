import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeModel extends ChangeNotifier {
  bool _isDark = false;

  bool get isDark => _isDark;

  Future<void> loadTheme() {
    return SharedPreferences.getInstance().then((prefs) {
      _isDark = prefs.getBool('darkTheme') ?? false;
      notifyListeners();
    });
  }

  Future<void> toggleTheme() {
    _isDark = !_isDark;
    return SharedPreferences.getInstance().then((prefs) {
      prefs.setBool('darkTheme', _isDark);
      notifyListeners();
    });
  }
}
