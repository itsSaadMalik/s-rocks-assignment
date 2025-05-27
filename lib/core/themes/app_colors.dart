import 'package:flutter/material.dart';

class AppColors {
  static Color get appDarkbackgorund => const Color(0xFF2F2F39);

  static LinearGradient get appBarGradient => LinearGradient(
    colors: [
      // const Color.fromARGB(255, 255, 59, 118),
      const Color(0xFFa90140),
      const Color(0xFF550120),
    ],

    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
