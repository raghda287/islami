import 'package:flutter/material.dart';

class MyTheme {
  static const Color primaryColor = Color(0xffB7935F);
  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(headline1: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
      color: Colors.transparent,
    ),

bottomNavigationBarTheme: const BottomNavigationBarThemeData(
selectedIconTheme: IconThemeData(
  size: 45,
),
  unselectedIconTheme: IconThemeData(
    size: 42
  ),
  selectedItemColor: Colors.black,
  unselectedItemColor: Colors.white,
  showSelectedLabels: true,
  showUnselectedLabels: false,
),
  );
}
