import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tk_al_muhajirin/ui/theme.dart';

class TextBox extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String label;
  double? space = 0;
  double? space2 = 0;

  TextBox({Key? key, this.title, this.subtitle, required this.label, this.space, this.space2}) : super(key: key);

  bool isObscure = true;
  bool isRemember = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? '',
          style: GoogleFonts.beVietnamPro(
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: space,
        ),
        Text(
          subtitle ?? '',
          style: GoogleFonts.beVietnamPro(
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: space2,
        ),
        Text(
          label,
          style: GoogleFonts.beVietnamPro().copyWith(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
                borderSide: BorderSide(
                  color: Color(0xff004781),
                  width: 2,
                )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 2,
                )),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
