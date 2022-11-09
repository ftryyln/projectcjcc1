import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class InfoAccScreen extends StatefulWidget {
  const InfoAccScreen({Key? key}) : super(key: key);

  @override
  State<InfoAccScreen> createState() => _InfoAccScreenState();
}

class _InfoAccScreenState extends State<InfoAccScreen> {
  final controllerName = TextEditingController();
  final controllerPhoneNumber = TextEditingController();
  final controllerEmail = TextEditingController();

  bool isNameEdit = false;
  bool isPhoneNumberEdit = false;
  bool isEmailEdit = false;

  File? gettedPhoto;

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
      body: SingleChildScrollView(
        child: Stack(children: [
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
                          image: gettedPhoto == null
                              ? AssetImage("assets/struktur/wakasek.jpg")
                                  as ImageProvider<Object>
                              : FileImage(File(gettedPhoto!.path)),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    getSinglePhoto();
                  },
                  child: Text(
                    "Ubah Foto Profil",
                    style: GoogleFonts.beVietnamPro(
                      textStyle: const TextStyle(
                          color: Color(0xff1C96F9),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nama",
                      style: GoogleFonts.beVietnamPro(
                        textStyle:
                            const TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 200,
                      child: TextFormField(
                        textAlign: TextAlign.left,
                        controller: controllerName,
                        enabled: isNameEdit,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.all(12),
                        ),
                      ),
                    ),
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
                        textStyle:
                            const TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 200,
                      child: TextFormField(
                        textAlign: TextAlign.left,
                        controller: controllerPhoneNumber,
                        enabled: isPhoneNumberEdit,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.all(12),
                        ),
                      ),
                    ),
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
                        textStyle:
                            const TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 200,
                      child: TextFormField(
                        textAlign: TextAlign.left,
                        controller: controllerEmail,
                        enabled: isEmailEdit,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.all(12),
                        ),
                      ),
                    ),
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
                          side: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(25)),
                    ),
                    onPressed: () {
                      setState(() {
                        isNameEdit = !isNameEdit;
                        isPhoneNumberEdit = !isPhoneNumberEdit;
                        isEmailEdit = !isEmailEdit;
                      });
                      if(isNameEdit == true) {

                      }
                    },
                    child: Text(
                      isNameEdit == true ? "Simpan" : "Ubah",
                      style: GoogleFonts.beVietnamPro(
                          textStyle: const TextStyle(
                              color: Color(0xff1C96F9),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    )),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  getSinglePhoto() async {
    final ImagePicker picker = ImagePicker();
    // Pick an image
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      File file = File(image.path);
      setState(() {
        gettedPhoto = file;
      });
    } else {
      // User canceled the picker
    }
  }
}
