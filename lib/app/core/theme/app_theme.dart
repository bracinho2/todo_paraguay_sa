import 'package:flutter/material.dart';

const primaryColor = Color(0xffD52B1E);
const secundaryColor = Color(0xffFFFFFF);
const thirdColor = Color(0xff0038A8);

final themeLight = ThemeData(
  //ESQUEMA DE CORES
  primaryColor: primaryColor,
  scaffoldBackgroundColor: primaryColor,

  //Scaffold backgroud color
  backgroundColor: primaryColor,

  //APPBAR
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: primaryColor,
    iconTheme: IconThemeData(
      color: primaryColor,
    ),
  ),

  //ELEVATED BUTTOM
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      textStyle: const TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16,
      ),
    ),
  ),

  //Icon
  iconTheme: const IconThemeData(
    color: secundaryColor,
  ),

  //TEXTOS
  textTheme: const TextTheme(
    labelLarge: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: secundaryColor,
    ),
    labelMedium: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: secundaryColor,
    ),
    labelSmall: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 16,
      //fontWeight: FontWeight.bold,
      color: secundaryColor,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 24,
      color: secundaryColor,
    ),
  ),

  //INPUT DECORATION THEME
  inputDecorationTheme: const InputDecorationTheme(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: primaryColor,
        width: 0.0,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    labelStyle: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 14,
      color: secundaryColor,
    ),
    iconColor: primaryColor,
    prefixIconColor: primaryColor,
    suffixIconColor: secundaryColor,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primaryColor, width: 0.0),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    ),
  ),
);
