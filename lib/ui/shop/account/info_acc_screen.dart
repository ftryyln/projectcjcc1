import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoAcc extends StatefulWidget {
  const InfoAcc({Key? key}) : super(key: key);

  @override
  State<InfoAcc> createState() => _InfoAccState();
}

class _InfoAccState extends State<InfoAcc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C96F9),
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Profile Saya",
            style: GoogleFonts.beVietnamPro(
                textStyle: const TextStyle(
                    color: Color(0xff1C96F9),
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
          ),
          leading: Image.asset("assets/shop/icon_back.png")
      ),
      body: Column(
        children: [
          SvgPicture.asset(
            "assets/shop/awan_info.svg",
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}
