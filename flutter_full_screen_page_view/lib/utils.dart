import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CleanApp extends StatelessWidget {
  final Widget home;

  CleanApp({
    required this.home,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.cyan, // iOS PWA status bar background color for light AND dark modes
        scaffoldBackgroundColor: Colors.white,
        textTheme: getTextTheme(context),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.grey.shade900,
        textTheme: getTextTheme(context),
      ),
    );
  }
}

getTextTheme(context) {
  return GoogleFonts.interTextTheme(
    Theme.of(context).textTheme, // If this is not set, then ThemeData.light().textTheme is used.
  );
}
