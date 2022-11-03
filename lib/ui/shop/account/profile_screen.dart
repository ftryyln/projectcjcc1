import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
          leading: Image.asset("assets/shop/icon_back.png")),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SvgPicture.asset(
            "assets/shop/awan_info.svg",
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
          Column(
            children: [
              Container(
                  child: SvgPicture.asset(
                "assets/shop/account/icon_person.svg",
                height: 180,
                width: 180,
              )),
              Text(
                "Wanda Fauzi",
                style: GoogleFonts.beVietnamPro(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
              ),
              Text(
                "Orang Tua Mahardhika Altaf",
                style: GoogleFonts.beVietnamPro(
                    textStyle: const TextStyle(
                        color: Color(0xff1C96F9), fontSize: 14)),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(400, 40),
                    backgroundColor: const Color(0xffFFFFFF),
                    elevation: 4,
                    shadowColor: const Color(0xFF003D86),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.black,
                            width: 2
                        ),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Ubah",
                    style: GoogleFonts.beVietnamPro(
                        textStyle: const TextStyle(
                            color: Color(0xff1C96F9),
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                "Logout",
                style: GoogleFonts.beVietnamPro(
                    textStyle: const TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
