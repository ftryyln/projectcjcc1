import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tk_al_muhajirin/ui/home/home_screen.dart';
import 'package:tk_al_muhajirin/ui/shop/account/info_acc_screen.dart';

class ProfileAccountScreen extends StatefulWidget {
  const ProfileAccountScreen({Key? key}) : super(key: key);

  @override
  State<ProfileAccountScreen> createState() => _ProfileAccountScreenState();
}

class _ProfileAccountScreenState extends State<ProfileAccountScreen> {
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
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset("assets/shop/icon_back.png"))),
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
              SizedBox(
                height: 20,
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xff1C96F9), width: 3),
                    color: Color(0xff1C96F9),
                    image: DecorationImage(
                      image: AssetImage("assets/struktur/wakasek.jpg"),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
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
                height: 50,
              ),
              TextButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(400, 40),
                    backgroundColor: const Color(0xffFFFFFF),
                    elevation: 4,
                    shadowColor: const Color(0xFF003D86),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InfoAccScreen()));
                  },
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
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text(
                  "Logout",
                  style: GoogleFonts.beVietnamPro(
                      textStyle: const TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
