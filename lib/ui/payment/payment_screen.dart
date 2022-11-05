import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tk_al_muhajirin/ui/home/home_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool shouldPop = false;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return shouldPop;
      },
      child: Scaffold(
        backgroundColor: Color(0xff46AD4C),
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: Text(
              "Pembayaran",
              style: GoogleFonts.beVietnamPro(
                  textStyle: const TextStyle(
                      color: Color(0xff46AD4C),
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
            ),
            leading: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomeScreen()));
                },
                child: SvgPicture.asset(
                  "assets/payment/icon_close_green.svg",
                ),
              ),
            )),
        body: Column(
          children: [
            Image.asset(
              "assets/awan_atas2.png",
              fit: BoxFit.fitWidth,
              width: MediaQuery.of(context).size.width,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const WebView(
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: 'https://demo.midtrans.com',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
