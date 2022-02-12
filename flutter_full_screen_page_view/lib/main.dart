import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils.dart';

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
              "This is the FIRST page!",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontSize: 20,
                // fontStyle: FontStyle.italic,
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
              "This is the SECOND page!",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontSize: 20,
                color: Colors.white,

                // fontStyle: FontStyle.italic,
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
              "This is the THIRD page!",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
                // fontStyle: FontStyle.italic,
              ),
            )
          ],
        ),
      ),
    );
  }
}
