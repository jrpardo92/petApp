import 'package:flutter/material.dart';

class AppTheme {
  // color principal
  static const Color primary = Color(0xffFFAF36);
  // Configuracion del tema global
  static final ThemeData ligthTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    // configuracion de appbar
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
  );
}
