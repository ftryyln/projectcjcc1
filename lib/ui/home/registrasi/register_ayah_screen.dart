import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tk_al_muhajirin/const/lego_button.dart';

class RegisterAyah extends StatefulWidget {
  const RegisterAyah({Key? key}) : super(key: key);

  @override
  State<RegisterAyah> createState() => _RegisterAyahState();
}

class _RegisterAyahState extends State<RegisterAyah> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF5400),
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Registrasi",
            style: GoogleFonts.beVietnamPro(
                textStyle: const TextStyle(
                    color: Color(0xff46AD4C),
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
          ),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/awan_atas2.png",
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
          SvgPicture.asset(
            "assets/registrasi/progress_yellow.svg",
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Column(children: [
              Stack(children: [
                SizedBox(
                  height: 1080,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  top: 90,
                  right: 0,
                  left: 0,
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    height: 950,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.black, width: 5)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Image.asset("assets/registrasi/picreg.jpg"),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Formulir Pendaftaran Siswa Baru",
                          style: GoogleFonts.beVietnamPro(
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Data Orang Tua",
                                style: GoogleFonts.beVietnamPro(
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                "Ayah",
                                style: GoogleFonts.beVietnamPro(
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text("Nama Lengkap",
                                  style: GoogleFonts.beVietnamPro().copyWith(
                                    color: Colors.black,
                                    fontSize: 14,
                                  )
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
                              const SizedBox(
                                height: 12,
                              ),
                              Text("Pekerjaan",
                                  style: GoogleFonts.beVietnamPro().copyWith(
                                    color: Colors.black,
                                    fontSize: 14,
                                  )
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
                              const SizedBox(
                                height: 12,
                              ),
                              Text("Pendidikan Terakhir",
                                  style: GoogleFonts.beVietnamPro().copyWith(
                                    color: Colors.black,
                                    fontSize: 14,
                                  )
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
                              const SizedBox(
                                height: 12,
                              ),
                              Text("Nomor WhatsApp / Nomor Ponsel",
                                  style: GoogleFonts.beVietnamPro().copyWith(
                                    color: Colors.black,
                                    fontSize: 14,
                                  )
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
                              const SizedBox(
                                height: 12,
                              ),
                              Text("Alamat Email",
                                  style: GoogleFonts.beVietnamPro().copyWith(
                                    color: Colors.black,
                                    fontSize: 14,
                                  )
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
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            LegoBack(
                                button: "assets/registrasi/yellow_lego_next.png",
                                textButton: "Back"),
                            LegoNext(
                                button:
                                    "assets/registrasi/red_lego_next.png",
                                textButton: "Next"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  child: Image.asset(
                    "assets/registrasi/lego.png",
                    fit: BoxFit.contain,
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ]),
            ])),
          ),
        ],
      ),
    );
  }
}