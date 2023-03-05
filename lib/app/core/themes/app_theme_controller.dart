import 'package:flutter/material.dart';

class AppThemeController {
  AppThemeController._();

  static final instance = AppThemeController._();

  final selectedTheme = ValueNotifier<ThemeMode>(ThemeMode.light);

  void changeTheme() {
    if (selectedTheme.value == ThemeMode.light) {
      selectedTheme.value = ThemeMode.dark;
      return;
    }
    selectedTheme.value = ThemeMode.light;
  }
}
