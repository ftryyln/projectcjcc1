import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Struktur extends StatelessWidget {
  final String jabatan;
  final String image;
  final String nama;

  const Struktur(
      {Key? key,
      required this.jabatan,
      required this.image,
      required this.nama})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                jabatan,
                style: GoogleFonts.beVietnamPro(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 14,
              ),
              CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage(image),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                nama,
                style: GoogleFonts.beVietnamPro(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              )
            ]),
    );

  }
}
