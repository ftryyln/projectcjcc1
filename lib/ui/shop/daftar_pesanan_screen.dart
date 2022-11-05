import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tk_al_muhajirin/ui/shop/cart_screen.dart';

class DaftarPesananScreen extends StatefulWidget {
  const DaftarPesananScreen({Key? key}) : super(key: key);

  @override
  State<DaftarPesananScreen> createState() => _DaftarPesananScreenState();
}

class _DaftarPesananScreenState extends State<DaftarPesananScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff44A7AD),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Daftar Pesanan",
          style: GoogleFonts.beVietnamPro(
              textStyle: const TextStyle(
                  color: Color(0xff46AD4C),
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                "assets/awan_atas2.png",
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 130,
                width: 390,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 7,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 105,
                        width: 105,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: AssetImage(
                                    "assets/shop/category_book.jpg"))),
                        //width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Buku Tulis",
                              style: GoogleFonts.beVietnamPro(
                                  textStyle: const TextStyle(
                                      color: Color(0xff308612),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Text(
                              "Sinar Dunia",
                              style: GoogleFonts.beVietnamPro(
                                  textStyle: const TextStyle(
                                      color: Color(0xff308612), fontSize: 16)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Total Pesanan",
                                      style: GoogleFonts.beVietnamPro(
                                          textStyle: const TextStyle(
                                              color: Color(0xff44A7AD),
                                              fontSize: 16)),
                                    ),
                                    Text(
                                      "Rp. 45.000",
                                      style: GoogleFonts.beVietnamPro(
                                          textStyle: const TextStyle(
                                              color: Color(0xff308612),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width - 355,
                                ),
                                GestureDetector(
                                  onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CartScreen()));

                                  },
                                  child: Container(
                                    alignment: Alignment.bottomRight,
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Color(0xff308612), width: 2),
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        "Beli Lagi",
                                        style: GoogleFonts.beVietnamPro(
                                          textStyle: const TextStyle(
                                              color: Color(0xff308612),
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        // SizedBox(
                        //   height: 22,
                        // ),
                      ],
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
