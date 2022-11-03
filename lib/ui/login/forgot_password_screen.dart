import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tk_al_muhajirin/const/theme.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  int currentIndex = 0;
  bool isObscure = true;
  bool isObscure1 = true;
  String hint = 'Pilih Petanyaan Kemanan';
  List<String> items = ['Nama Mantan Kamu', 'Nama Samaran Kamu'];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Lupa Password",
            style: GoogleFonts.beVietnamPro(
                textStyle: const TextStyle(
                    color: Color(0xff46AD4C),
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
          ),
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset("assets/back.png"))),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              "assets/awan_atas2.png",
              fit: BoxFit.fitWidth,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                top: 100,
                right: 10,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Masukan Email Terdaftar',
                      style: GoogleFonts.beVietnamPro().copyWith(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: Icon(
                          Icons.email_rounded,
                          color: listColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsets.all(12),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Password Baru',
                      style: GoogleFonts.beVietnamPro().copyWith(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      obscureText: isObscure,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: IconButton(
                          icon: Icon(
                            isObscure
                                ? Icons.visibility_off_rounded
                                : Icons.visibility_rounded,
                            color: listColor,
                          ),
                          onPressed: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsets.all(12),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Konfirmasi Password',
                      style: GoogleFonts.beVietnamPro().copyWith(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      obscureText: isObscure1,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: IconButton(
                          icon: Icon(
                            isObscure1
                                ? Icons.visibility_off_rounded
                                : Icons.visibility_rounded,
                            color: listColor,
                          ),
                          onPressed: () {
                            setState(() {
                              isObscure1 = !isObscure1;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsets.all(12),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff308612)),
                            borderRadius: BorderRadius.circular(14)),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xff46AD4C),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: Text('Submit',
                              style: GoogleFonts.beVietnamPro(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
