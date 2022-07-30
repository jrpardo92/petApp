import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class InputDecorations {
  static InputDecoration authInputDecoration(
      {required String hintTextO,
      required String labelTextO,
      IconData? prefixIcon}) {
    return InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.amber),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.amber,
            width: 2,
          ),
        ),
        hintText: hintTextO,
        labelText: labelTextO,
        labelStyle: TextStyle(
          color: Colors.grey,
        ),
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon,
                color: Colors.amber,
              )
            : null);
  }
}
