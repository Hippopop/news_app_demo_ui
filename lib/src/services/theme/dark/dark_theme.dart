import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../extensions/colors_theme.dart';

const _theme = Colors.black;
const _text = Colors.white;
const _titleColor = Colors.white;
const _opposite = Colors.white;
const _mainAccent = Color(0xFFFE9901);
const _primaryColor = Color.fromARGB(255, 255, 255, 255);
const _primaryAccent = Color(0xFFF5FCF9);

const _secondaryText = Color.fromARGB(255, 220, 219, 219);
const _background = Color.fromARGB(255, 114, 114, 114);

const _secondaryColor = Color(0xFF1D1D35);
const _errorColor = Color(0xFFF03738);
const _warningColor = Color(0xFFF3BB1C);

final darkTheme = ThemeData.light(useMaterial3: false).copyWith(
  primaryColor: _primaryColor,
  scaffoldBackgroundColor: _theme,
  iconTheme: const IconThemeData(color: _primaryAccent),
  textTheme: GoogleFonts.interTextTheme()
      .apply(
        bodyColor: _text,
        displayColor: _text,
      )
      .copyWith(
        headlineSmall: const TextStyle(color: _titleColor),
        titleLarge: GoogleFonts.merriweather(color: _theme),
        titleMedium: GoogleFonts.merriweather(color: _text),
        bodyLarge: GoogleFonts.notoSerif(
          fontSize: 18,
          color: _text,
          fontWeight: FontWeight.normal,
        ),
      ),
  colorScheme: const ColorScheme.light(
    primary: _primaryColor,
    secondary: _mainAccent,
    error: _errorColor,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: _primaryAccent.withOpacity(0.7),
    unselectedItemColor: _primaryAccent.withOpacity(0.32),
    selectedIconTheme: const IconThemeData(color: _primaryColor),
    showUnselectedLabels: true,
  ),
  extensions: {
    ColorTheme(
      text: _text,
      theme: _theme,
      opposite: _opposite,
//
      background: _background,
      secondaryText: _secondaryText,
//

      primary: _primaryColor,
      accent: _mainAccent,
      errorState: _errorColor,
      warningState: _warningColor,
      primaryAccent: _primaryAccent,
    ),
  },
);
