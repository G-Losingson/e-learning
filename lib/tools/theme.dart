import 'package:e_learning_app/color/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeApp {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.all(15)),
        shape: MaterialStateProperty.all<OutlinedBorder>(const StadiumBorder()),
        backgroundColor: MaterialStateProperty.all<Color>(tdYellow),
        elevation: MaterialStateProperty.all(0),
      ),
    ),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.openSans(
        color: tdRed,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: GoogleFonts.openSans(
        color: Colors.black,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: GoogleFonts.openSans(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
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

  static ThemeData darkTheme = ThemeData(brightness: Brightness.dark);
}
