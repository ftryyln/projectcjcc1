import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatelessWidget {
  //final String title;
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/logo_tk_green.png",
          width: 50,
          height: 50,
        ),
        SizedBox(
          width: 20,
        ),
        SizedBox(
            height: 30,
            width: MediaQuery.of(context).size.width * 0.7,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Pencarian",
                  label: Text("Pencarian",
                      style: GoogleFonts.beVietnamPro(
                          textStyle:
                          const TextStyle(fontSize: 14))),
                  prefixIcon: const Icon(Icons.search),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(15)),
                      borderSide: BorderSide(
                          color: Colors.white70))),
            )),
        
      ],
    );
  }
}
