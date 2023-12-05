import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// This override is a workaround required to theme the app-wide [TextTheme].
TextTheme get textTheme => TextTheme(
      displayLarge: GoogleFonts.inter(
          fontSize: 94, fontWeight: FontWeight.w300, letterSpacing: -1.5),
      displayMedium: GoogleFonts.inter(
          fontSize: 59, fontWeight: FontWeight.w300, letterSpacing: -0.5),
      displaySmall:
          GoogleFonts.inter(fontSize: 47, fontWeight: FontWeight.w400),
      headlineMedium: GoogleFonts.inter(
          fontSize: 33, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      headlineSmall:
          GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.w400),
      titleLarge: GoogleFonts.inter(
          fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
      titleMedium: GoogleFonts.inter(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
      titleSmall: GoogleFonts.inter(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
      bodyLarge: GoogleFonts.inter(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
      bodyMedium: GoogleFonts.inter(
          fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      labelLarge: GoogleFonts.inter(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
      bodySmall: GoogleFonts.inter(
          fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
      labelSmall: GoogleFonts.inter(
          fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
    );

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  unselectedWidgetColor: Colors.black54,
  textTheme: textTheme,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    centerTitle: false,
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
  ),
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateColor.resolveWith((states) {
      return states.contains(MaterialState.selected)
          ? const Color(0xFF237A6A)
          : Colors.white;
    }),
    trackColor: MaterialStateColor.resolveWith((states) {
      return states.contains(MaterialState.selected)
          ? const Color(0xFF237A6A)
          : Colors.grey;
    }),
  ),
  popupMenuTheme: const PopupMenuThemeData(
    color: Colors.white,
    shape: RoundedRectangleBorder(),
  ),
  dialogTheme: const DialogTheme(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(),
  ),
  cardColor: Colors.white,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.black,
    ),
  ),
  listTileTheme: ListTileThemeData(
    dense: true,
    selectedTileColor: Colors.grey.shade300,
    selectedColor: Colors.black,
    horizontalTitleGap: 0,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black54,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF237A6A)),
    ),
  ),
  scrollbarTheme: ScrollbarThemeData(
    thickness: MaterialStateProperty.all(3),
    thumbVisibility: MaterialStateProperty.all(true),
  ),
  sliderTheme: const SliderThemeData(
    thumbColor: Color(0xFF237A6A),
    activeTrackColor: Color(0xFF237A6A),
    inactiveTrackColor: Colors.grey,
    trackShape: RectangularSliderTrackShape(),
    trackHeight: 2,
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
  ),
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(
        primary: const Color(0xFF237A6A),
        secondary: const Color(0xFF237A6A),
        brightness: Brightness.light,
      )
      .copyWith(background: Colors.white),
);

/// Shows when the current mode is a dark theme.
final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  textTheme: textTheme,
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateColor.resolveWith((states) {
      return states.contains(MaterialState.selected) ? Colors.red : Colors.grey;
    }),
    trackColor: MaterialStateColor.resolveWith((states) {
      return states.contains(MaterialState.selected)
          ? const Color(0xFF237A6A)
          : Colors.grey;
    }),
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    centerTitle: false,
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
  ),
  popupMenuTheme: const PopupMenuThemeData(
    color: Color.fromARGB(255, 30, 30, 30),
    shape: RoundedRectangleBorder(),
  ),
  dialogTheme: const DialogTheme(
    backgroundColor: Color.fromARGB(255, 30, 30, 30),
    shape: RoundedRectangleBorder(),
  ),
  cardColor: const Color.fromARGB(255, 30, 30, 30),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.white,
    ),
  ),
  listTileTheme: ListTileThemeData(
    dense: true,
    selectedTileColor: Colors.grey.shade600,
    selectedColor: Colors.white,
    horizontalTitleGap: 0,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white70,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFF237A6A),
      ),
    ),
  ),
  scrollbarTheme: ScrollbarThemeData(
    thumbVisibility: MaterialStateProperty.all(true),
  ),
  sliderTheme: const SliderThemeData(
    thumbColor: Color(0xFF237A6A),
    activeTrackColor: Color(0xFF237A6A),
    inactiveTrackColor: Colors.grey,
    trackShape: RectangularSliderTrackShape(),
    trackHeight: 2,
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
  ),
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(
        primary: const Color(0xFF237A6A),
        secondary: const Color(0xFF237A6A),
        brightness: Brightness.dark,
      )
      .copyWith(background: Colors.black),
);
