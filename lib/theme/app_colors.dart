import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class AppColors {
  final Color background;
  final Color primary;
  final Color text;
  final Color surface;

  const AppColors({
    required this.background,
    required this.primary,
    required this.text,
    required this.surface,
  });

  static const light = AppColors(
    background: Color(0xFFFFFFFF),
    primary: Color(0xFF8B5E3C),
    text: Color(0xFF222222),
    surface: Color(0xFFFFFFFF),
  );

  static const dark = AppColors(
    background: Color(0xFF121212),
    primary: Color(0xFFD6A77A),
    text: Color(0xFFF5F5F5),
    surface: Color(0xFF1E1E1E),
  );
}
