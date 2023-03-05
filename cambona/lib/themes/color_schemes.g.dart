import 'package:flutter/material.dart';

//color
//primary: Color(0xFFBC160E),
//secondary: Color(0xFFFFFFFF),
//tertiary: Color(0xff0038A8),

//Sistema de Cores
// const backgroud = Color(0xFF212332);
// const onBackgroud = Color(0xFF2A2D3E);
// const tertiary = Colors.white54;

//Cores para light

ColorScheme get lightColorScheme => ColorScheme(
      brightness: Brightness.light,
      background: Colors.black12,
      onBackground: Colors.white,
      primary: Colors.blue,
      onPrimary: Colors.white54,
      secondary: Colors.black87,
      onSecondary: Colors.black87,
      tertiary: Colors.black,
      error: Colors.red,
      onError: Colors.red,
      surface: Colors.white,
      onSurface: Colors.white,
    );

ColorScheme get darkColorScheme => ColorScheme(
      brightness: Brightness.dark,
      background: Color(0xFF212332),
      onBackground: Color(0xFF2A2D3E),
      primary: Colors.white,
      onPrimary: Colors.black87,
      secondary: Colors.white,
      onSecondary: Colors.white,
      tertiary: Colors.white,
      error: Colors.red,
      onError: Colors.red,
      surface: Colors.white,
      onSurface: Colors.white,
    );

class MinhasCores extends ColorScheme {
  MinhasCores(
      {required super.brightness,
      required super.primary,
      required super.onPrimary,
      required super.secondary,
      required super.onSecondary,
      required super.error,
      required super.onError,
      required super.background,
      required super.onBackground,
      required super.surface,
      required super.onSurface});
}
