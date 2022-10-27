import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LegoNext extends StatelessWidget {

  final String button;
  final String textButton;
  const LegoNext({Key? key, required this.button, required this.textButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: Stack(
        children: [
          Image.asset(button),
          Positioned.fill(
            top: 7,
            child: Center(
              child: Text(textButton, style: GoogleFonts.beVietnamPro(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class LegoBack extends StatelessWidget {
  final String button;
  final String textButton;
  const LegoBack({Key? key, required this.button, required this.textButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Stack(
        children: [
          Image.asset(button),
          Positioned.fill(
            top: 7,
            child: Center(
              child: Text(textButton, style: GoogleFonts.beVietnamPro(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

