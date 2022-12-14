import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tk_al_muhajirin/const/lego_button.dart';
import 'package:tk_al_muhajirin/ui/payment/payment_screen.dart';

class RegisterIbuScreen extends StatefulWidget {
  const RegisterIbuScreen({Key? key}) : super(key: key);

  @override
  State<RegisterIbuScreen> createState() => _RegisterIbuScreenState();
}

class _RegisterIbuScreenState extends State<RegisterIbuScreen> {
  final formKey = GlobalKey<FormState>();

  final controllerNameParent = TextEditingController();
  final controllerWork = TextEditingController();
  final controllerEdu = TextEditingController();
  final controllerNo = TextEditingController();
  final controllerEmail = TextEditingController();

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
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Image.asset(
              "assets/awan_atas2.png",
              fit: BoxFit.fitWidth,
              width: MediaQuery.of(context).size.width,
            ),
            SvgPicture.asset(
              "assets/registrasi/progress_red.svg",
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
                    height: 1160,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Positioned(
                    top: 90,
                    right: 0,
                    left: 0,
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      height: 1030,
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
                                  "Ibu",
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
                                    )),
                                const SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  controller: controllerNameParent,
                                  validator: (value) {
                                    if (controllerEmail.text.isEmpty) {
                                      return "Nama Tidak Boleh Kosong";
                                    }
                                  },
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
                                    )),
                                const SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  controller: controllerWork,
                                  validator: (value) {
                                    if (controllerWork.text.isEmpty) {
                                      return "Pekerjaan Tidak Boleh Kosong";
                                    }
                                  },
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
                                    )),
                                const SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  controller: controllerEdu,
                                  validator: (value) {
                                    if (controllerEdu.text.isEmpty) {
                                      return "Pendidikan Terakhir Tidak Boleh Kosong";
                                    }
                                  },
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
                                    )),
                                const SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  controller: controllerNo,
                                  validator: (value) {
                                    if (controllerNo.text.isEmpty) {
                                      return "No Ponsel Tidak Boleh Kosong";
                                    }
                                  },
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
                                    )),
                                const SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  controller: controllerEmail,
                                  validator: (value) {
                                    if (controllerEmail.text.isEmpty) {
                                      return "Alamat Email Tidak Boleh Kosong";
                                    }
                                  },
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
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: LegoBack(
                                    button:
                                        "assets/registrasi/blue_lego_back.png",
                                    textButton: "Back"),
                              ),
                              GestureDetector(
                                onTap: () {
                                  final form = formKey.currentState;
                                  if (form!.validate()) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PaymentScreen()));
                                  }
                                },
                                child: LegoNext(
                                    button:
                                        "assets/registrasi/green_lego_send.png",
                                    textButton: "Daftar"),
                              ),
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
      ),
    );
  }
}
