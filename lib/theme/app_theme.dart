import 'package:flutter/material.dart';

class AppTheme {
  // color principal
  static const Color primary = Color(0xffFFAF36);
  static const Color colorSecundary = Color(0xff038EF3);
  // Configuracion del tema global
  static final ThemeData ligthTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    // configuracion de appbar
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.white,
  );
  // configuracion de stylo de titulos
  static const textoPrincipal = TextStyle(
    fontSize: 16,
  );
}
