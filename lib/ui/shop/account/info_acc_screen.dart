import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoAccScreen extends StatefulWidget {
  const InfoAccScreen({Key? key}) : super(key: key);

  @override
  State<InfoAccScreen> createState() => _InfoAccScreenState();
}

class _InfoAccScreenState extends State<InfoAccScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C96F9),
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Informasi Pribadi",
            style: GoogleFonts.beVietnamPro(
                textStyle: const TextStyle(
                    color: Color(0xff1C96F9),
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.asset(
                "assets/shop/account/icon_close.svg",
              ),
            ),
          )),
      body: Stack(children: [
        SvgPicture.asset(
          "assets/shop/awan_info_pribadi.svg",
          fit: BoxFit.fitWidth,
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
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
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nama",
                    style: GoogleFonts.beVietnamPro(
                      textStyle: const TextStyle(
                          color: Color(0xff1C96F9), fontSize: 14),
                    ),
                  ),
                  Text(
                    "Wanda Fauzi",
                    style: GoogleFonts.beVietnamPro(
                      textStyle: const TextStyle(
                          color: Color(0xff1C96F9), fontSize: 14),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nomor Ponsel",
                    style: GoogleFonts.beVietnamPro(
                      textStyle: const TextStyle(
                          color: Color(0xff1C96F9), fontSize: 14),
                    ),
                  ),
                  Text(
                    "+62-822-1111-3333",
                    style: GoogleFonts.beVietnamPro(
                      textStyle: const TextStyle(
                          color: Color(0xff1C96F9), fontSize: 14),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Alamat Email",
                    style: GoogleFonts.beVietnamPro(
                      textStyle: const TextStyle(
                          color: Color(0xff1C96F9), fontSize: 14),
                    ),
                  ),
                  Text(
                    "wandafauzi@gmail.com",
                    style: GoogleFonts.beVietnamPro(
                      textStyle: const TextStyle(
                          color: Color(0xff1C96F9), fontSize: 14),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Password",
                    style: GoogleFonts.beVietnamPro(
                      textStyle: const TextStyle(
                          color: Color(0xff1C96F9), fontSize: 14),
                    ),
                  ),
                  Text(
                    "*****",
                    style: GoogleFonts.beVietnamPro(
                      textStyle:
                          const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  )
                ],
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
                height: 5,
              ),
              Text(
                "*Anda hanya dapat mengubah Nomor Ponsel, alamat email dan Password.",
                style: GoogleFonts.beVietnamPro(
                    textStyle:
                        const TextStyle(color: Colors.red, fontSize: 10)),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
