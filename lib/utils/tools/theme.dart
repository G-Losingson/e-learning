import 'package:e_learning_app/utils/color/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeApp {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.openSans(
        color: tdBlack,
        fontSize: 32,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: GoogleFonts.openSans(
        color: tdBlack,
        fontSize: 13,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: GoogleFonts.openSans(
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: tdBlack,
          width: 5,
        ),
      ),
      iconColor: Colors.black,
      labelStyle: GoogleFonts.openSans(
        color: Colors.black,
        fontSize: 13,
        fontWeight: FontWeight.w400,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
      size: 30,
      weight: 20,
    ),
  );

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      textTheme: TextTheme(
        titleLarge: GoogleFonts.openSans(
          color: tdWhite,
          fontSize: 32,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: GoogleFonts.openSans(
          color: tdWhite,
          fontSize: 13,
          fontWeight: FontWeight.w700,
        ),
        titleSmall: GoogleFonts.openSans(
          color: tdWhite,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: tdWhite,
            width: 5,
          ),
        ),
        iconColor: Colors.black,
        labelStyle: GoogleFonts.openSans(
          color: tdWhite,
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
      ),
      iconTheme: const IconThemeData(
        color: tdWhite,
        size: 30,
        weight: 20,
      ));
}
