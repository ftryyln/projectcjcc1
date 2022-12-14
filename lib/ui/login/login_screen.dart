import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tk_al_muhajirin/data/model/login_model.dart';
import 'package:tk_al_muhajirin/data/network_core.dart';
import 'package:tk_al_muhajirin/ui/login/forgot_password_screen.dart';
import 'package:tk_al_muhajirin/ui/shop/home_shop_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = true;
  bool isRemember = false;

  final formKey = GlobalKey<FormState>();
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();

  LoginModel? model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C96F9),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
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
                              color: Color(0xff1C96F9),
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
                          controller: controllerEmail,
                          validator: (value) {
                            if (controllerEmail.text.isEmpty) {
                              return "Email Tidak Boleh Kosong";
                            }
                          },
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
                          controller: controllerPassword,
                          validator: (value) {
                            if (controllerPassword.text.isEmpty) {
                              return "Password Tidak Boleh Kosong";
                            }
                          },
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
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPasswordScreen()));
                                },
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
                                border: Border.all(color: Color(0xff308612)),
                                borderRadius: BorderRadius.circular(14)),
                            child: TextButton(
                              onPressed: () async {
                                final form = formKey.currentState;
                                if (form!.validate()) {
                                  _doLogin();
                                  final storage = FlutterSecureStorage();
                                  await storage.write(key: "token", value: model?.data?.token);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HomeShopScreen()));
                                }
                              },
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
        ),
      ),
    );
  }



  Future _doLogin() async {
    try {
      var res = await NetworkCore().dio.post("api/login", data: {
        "email": controllerEmail.text,
        "password": controllerPassword.text
      });
      setState(() {
        model = LoginModel.fromJson(res.data);
      });
    } catch (e) {
      return [];
    }
  }
}
