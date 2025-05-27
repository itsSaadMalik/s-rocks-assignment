import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get appTheme => ThemeData(
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: const Color.fromARGB(
          255,
          231,
          231,
          231,
        ).withValues(alpha: .099),
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    iconTheme: IconThemeData(color: Colors.white),
    textTheme: TextTheme(
      bodyMedium: GoogleFonts.syne(color: Colors.white, letterSpacing: 1),
    ),
  );
}
