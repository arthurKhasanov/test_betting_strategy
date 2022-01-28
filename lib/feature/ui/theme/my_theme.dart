import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static final ligthTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(),
    primaryColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.grey[600], opacity: 0.8),
    textTheme: TextTheme(
        headline1: headline1ligthTheme,
        headline2: headline2ligthTheme,
        headline3: headline3ligthTheme,
        subtitle1: subtitle1ligthTheme,
      )
  );

  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey[850],
      colorScheme: const ColorScheme.dark(),
      primaryColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.purple[900], opacity: 0.8),
      textTheme: TextTheme(
        headline1: headline1Darktheme,
        headline2: headline2DarkTheme,
        headline3: headline3DarkTheme,
        subtitle1: subtitle1DarkTheme,
      ));
}

// DarkTheme
final TextStyle headline1Darktheme = GoogleFonts.montserrat(
  fontSize: 30,
  color: Colors.grey[300],
  fontWeight: FontWeight.bold,
);

final TextStyle headline2DarkTheme = GoogleFonts.montserrat(
  fontSize: 25,
  color: Colors.deepPurple[400],
  fontWeight: FontWeight.bold,
);

final TextStyle headline3DarkTheme = GoogleFonts.montserrat(
  fontSize: 20,
  color: Colors.grey[300],
  fontWeight: FontWeight.bold,
);

final TextStyle subtitle1DarkTheme = GoogleFonts.montserrat(
  fontSize: 15,
  color: Colors.grey[300],
);

// LigthTheme
final TextStyle headline1ligthTheme = GoogleFonts.montserrat(
  fontSize: 30,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

final TextStyle headline2ligthTheme = GoogleFonts.montserrat(
  fontSize: 25,
  color: Colors.black87,
  fontWeight: FontWeight.bold,
);

final TextStyle headline3ligthTheme = GoogleFonts.montserrat(
  fontSize: 20,
  color: Colors.black87,
  fontWeight: FontWeight.bold,
);

final TextStyle subtitle1ligthTheme = GoogleFonts.montserrat(
  fontSize: 15,
  color: Colors.black87,
);
