import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = true;
  bool isRemember = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C96F9),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/awan_atas.png",
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                top: 50,
                child: Text(
                  "Login",
                  style: GoogleFonts.beVietnamPro(
                      textStyle: const TextStyle(
                          color: Color(0xff46AD4C),
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
          Container(
            height: 400,
            padding: const EdgeInsets.all(22),
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 100,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //EMAIL INPUT
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: GoogleFonts.beVietnamPro(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.email_rounded,
                          color: Color(0xff1C96F9),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                              color: Color(0xff004781),
                              width: 2,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2,
                            )),
                        contentPadding: const EdgeInsets.all(12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                //PASSWORD INPUT
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: GoogleFonts.beVietnamPro(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      obscureText: isObscure,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            isObscure
                                ? Icons.visibility_off_rounded
                                : Icons.visibility_rounded,
                            color: Color(0xff1C96F9),
                          ),
                          onPressed: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                              color: Color(0xff004781),
                              width: 2,
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                              color: Color(0xff004781),
                              width: 2,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2,
                            )),
                        contentPadding: const EdgeInsets.all(12),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 6.0),
                      // height: MediaQuery.of(context).size.height,
                      // width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isRemember = !isRemember;
                              });
                            },
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsets.zero,
                                  child: Checkbox(
                                    value: isRemember,
                                    onChanged: (bool? data) {
                                      setState(
                                        () {
                                          isRemember = data!;
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Text('Ingatkan Saya',
                                    style: GoogleFonts.beVietnamPro(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text('Lupa Password ?',
                                style: GoogleFonts.beVietnamPro(
                                  textStyle: TextStyle(
                                    color: Color(0xFF660066),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff308612)),borderRadius: BorderRadius.circular(14)
                        ),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xff46AD4C),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: Text('Login',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
