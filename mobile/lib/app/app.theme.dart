import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  colorScheme: const ColorScheme(
    primary: Colors.white,
    brightness: Brightness.light,
    onPrimary: Color(0xff288CE8),
    secondary: Color(0xffE8E8E8),
    onSecondary: Colors.black,
    error: Colors.white,
    onError: Colors.red,
    background: Colors.white,
    onBackground: Colors.black,
    surface: Color(0xffE8E8E8),
    onSurface: Colors.black,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll<Color>(Colors.pink),
      elevation: const MaterialStatePropertyAll<double>(2.0),
      shape: MaterialStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
      gapPadding: 3.0,
    ),
    filled: true,
    fillColor: Colors.grey.withOpacity(0.2),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 20,
      fontWeight: FontWeight.bold,
      height: 23.44 / 20,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 18,
      fontWeight: FontWeight.w500,
      height: 27 / 18,
    ),
    titleMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 15,
      fontWeight: FontWeight.w500,
      height: 22 / 15,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 18,
      fontWeight: FontWeight.w700,
      height: 27 / 18,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16,
      fontWeight: FontWeight.w500,
      height: 24 / 16,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 15,
      fontWeight: FontWeight.w500,
      height: 22.5 / 15,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedIconTheme: IconThemeData(color: Color(0xff288CE8), weight: 10),
    unselectedIconTheme: IconThemeData(color: Color(0xffBCBCBC), weight: 10),
    selectedItemColor: Colors.pink,
  ),
);
