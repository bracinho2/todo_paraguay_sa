import 'package:cambona/cambona.dart';
import 'package:cambona/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

ThemeData get cambonaLightTheme => ThemeData(
      scaffoldBackgroundColor: lightColorScheme.background,
      drawerTheme: DrawerThemeData(
        backgroundColor: lightColorScheme.onBackground,
      ),
      listTileTheme: ListTileThemeData(
        iconColor: lightColorScheme.secondary,
      ),
      iconTheme: IconThemeData(
        color: lightColorScheme.onSecondary,
      ),
      textTheme: TextTheme(
        subtitle1: TextStyle(
          fontSize: 16,
          color: lightColorScheme.secondary,
        ),
        headline6: TextStyle(
          fontSize: 16,
          color: lightColorScheme.tertiary,
        ),
      ),
      colorScheme: myThemeLight.colorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            lightColorScheme.onBackground,
          ),
          foregroundColor: MaterialStatePropertyAll(
            lightColorScheme.tertiary,
          ),
        ),
      ),
    );

ThemeData get cambonaDarkTheme => ThemeData(
      scaffoldBackgroundColor: darkColorScheme.background,
      drawerTheme: DrawerThemeData(
        backgroundColor: darkColorScheme.onBackground,
      ),
      listTileTheme: ListTileThemeData(
        iconColor: darkColorScheme.tertiary,
      ),
      iconTheme: IconThemeData(
        color: darkColorScheme.tertiary,
      ),
      textTheme: TextTheme(
        subtitle1: TextStyle(
          fontSize: 16,
          color: darkColorScheme.tertiary,
        ),
        headline6: TextStyle(
          fontSize: 16,
          color: darkColorScheme.tertiary,
        ),
      ),
      colorScheme: darkColorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            darkColorScheme.onBackground,
          ),
          foregroundColor: MaterialStatePropertyAll(
            darkColorScheme.tertiary,
          ),
        ),
      ),
    );
