import 'package:flutter/material.dart';
import 'package:wedding_hall_project/theme/app_colors.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;
  AppColors get mode => _isDarkMode ? AppColors.dark : AppColors.light;
  void toggleTheme(bool value) {
    _isDarkMode = value;
    notifyListeners();
  }
}
