import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils.dart';

var mainFont = "Raleway";

void main() {
  runApp(CleanApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        pageSnapping: false,
        children: [
          firstPage(),
          secondPage(),
          thirdPage(),
        ],
      ),
    );
  }

  Container firstPage() {
    return Container(
      padding: const EdgeInsets.all(20.0),
      color: Colors.orange,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "First page",
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                mainFont,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  Container secondPage() {
    return Container(
      padding: const EdgeInsets.all(20.0),
      color: Colors.pink,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Second page",
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                mainFont,
                fontSize: 50,
                fontWeight: FontWeight.bold,
                // color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  Container thirdPage() {
    return Container(
      padding: const EdgeInsets.all(20.0),
      color: Colors.purple,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Third page",
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                mainFont,
                // color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
