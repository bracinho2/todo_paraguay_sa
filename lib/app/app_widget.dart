import 'package:cambona/cambona.dart';
import 'package:cambona/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/core/themes/app_theme_controller.dart';

import 'core/snackbar_manager/snackbar_manager.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});

  final appController = AppThemeController.instance;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: appController.selectedTheme,
      builder: (context, selectedTheme, _) {
        return MaterialApp.router(
          title: 'Todo Paraguay',
          scaffoldMessengerKey: SnackBarManager.snackKey,
          themeMode: selectedTheme,
          theme: myThemeLight,
          darkTheme: cambonaDarkTheme,
          debugShowCheckedModeBanner: false,
          routeInformationParser: Modular.routeInformationParser,
          routerDelegate: Modular.routerDelegate,
        );
      },
    );
  }
}
