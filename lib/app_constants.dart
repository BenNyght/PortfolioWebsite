import 'package:flutter/material.dart';

class AppStrings {
  static const name = 'Benjamin Finlay';
  static const location = 'Gold Coast, Australia';
  static const resumeUrl = 'https://drive.google.com/file/d/15aXZSbEgxLWnYhSjiCQtATbNkoBf5Yjn/view?usp=sharing';
  static const linkedInUrl = 'https://www.linkedin.com/in/benjamin-finlay/';
  static const email = 'mail.benjaminfinlay@gmail.com';
  static const githubUrl = 'https://github.com/BenNyght';

  static String get title {
    final startYear = 2019;
    final currentYear = DateTime.now().year;
    final years = currentYear - startYear;
    return 'Game Software Engineer — $years+ Years’ Experience';
  }
}

class AppColors {
  static const background = Color(0xFF1E1E1E);
  static const navbar = Color(0xFF2C2C2C);
  static const primary = Color(0xFFFAB089);
  static const primaryDark = Color(0xFFE67C3E);
  static const chipBackground1 = Color(0xFFE67C3E);
  static const chipBackground2 = Color(0xFFDD8755);
  static const chipBackground3 = Color(0xFFD9936B);
  static const chipText = Colors.black;
}