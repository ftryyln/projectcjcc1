import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int currentIndex = 0;
  bool onCheck = false;
  final counterController = TextEditingController();

  @override
  void initState() {
    super.initState();
    counterController.text = "0";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff449849),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Keranjang",
          style: GoogleFonts.beVietnamPro(
              textStyle: const TextStyle(
                  color: Color(0xff46AD4C),
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/awan_atas2.png",
              fit: BoxFit.fitWidth,
              width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(
              height: 9,
            ),
            ListView(
              primary: false,
              shrinkWrap: true,
              children: List<String>.generate(10, (i) => 'Item $i')
                  .map((e) => SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Checkbox(
                                fillColor: const MaterialStatePropertyAll(
                                    Colors.white),
                                checkColor: Colors.blue,
                                value: onCheck,
                                onChanged: (value) {
                                  setState(() {
                                    onCheck = !onCheck;
                                  });
                                },
                              ),
                              Card(
                                elevation: 7,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                  height: 105,
                                  width: 105,
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      image: DecorationImage(
                                          fit: BoxFit.fitWidth,
                                          image: AssetImage(
                                              "assets/shop/category_book.jpg"))),
                                  //width: MediaQuery.of(context).size.width,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Buku Tulis",
                                    style: GoogleFonts.beVietnamPro(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Sinar Dunia",
                                    style: GoogleFonts.beVietnamPro(
                                        textStyle: const TextStyle(
                                            color: Colors.white, fontSize: 16)),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Rp. 45.000",
                                    style: GoogleFonts.beVietnamPro(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              333),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: SvgPicture.asset(
                                            "assets/shop/trash_icon.svg"),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (counterController.text != "0") {
                                              counterController.text =
                                                  (int.parse(counterController
                                                              .text) -
                                                          1)
                                                      .toString();
                                            }
                                          });
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: SvgPicture.asset(
                                              "assets/shop/icon_min.svg"),
                                        ),
                                      ),
                                      SizedBox(
                                          height: 25,
                                          width: 50,
                                          child: TextField(
                                            enabled: false,
                                            textAlign: TextAlign.center,
                                            controller: counterController,
                                            decoration: const InputDecoration(
                                                fillColor: Colors.white,
                                                filled: true,
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.grey,
                                                        width: 2))),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              counterController.text =
                                                  (int.parse(counterController
                                                              .text) +
                                                          1)
                                                      .toString();
                                            });
                                          },
                                          child: SvgPicture.asset(
                                              "assets/shop/icon_plush.svg"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
