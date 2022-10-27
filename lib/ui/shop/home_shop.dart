import 'package:carousel_slider/carousel_slider.dart';
import 'package:cool_nav/cool_nav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeShop extends StatefulWidget {
  const HomeShop({Key? key}) : super(key: key);

  @override
  State<HomeShop> createState() => _HomeShopState();
}

class _HomeShopState extends State<HomeShop> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff449849),
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            actions: [Image.asset("assets/person_icon.png")],
            title: SizedBox(
              height: 45,
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Pencarian",
                    prefixIcon: const Icon(Icons.search),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        borderSide: BorderSide(color: Colors.white70))),
              ),
            )),
        bottomNavigationBar: FlipBoxNavigationBar(
            currentIndex: currentIndex,
            verticalPadding: 20.0,
            items: <FlipBoxNavigationBarItem>[
              FlipBoxNavigationBarItem(
                name: 'Profil',
                selectedIcon: Icons.list_alt_outlined,
                unselectedIcon: Icons.list_alt,
                selectedBackgroundColor: Color(0xff1C96F9),
                unselectedBackgroundColor: Colors.white,
              ),
              FlipBoxNavigationBarItem(
                name: 'Galeri',
                selectedIcon: Icons.home_max_outlined,
                unselectedIcon: Icons.home_rounded,
                selectedBackgroundColor: Color(0xff46AD4C),
                unselectedBackgroundColor: Colors.white,
              ),
              FlipBoxNavigationBarItem(
                name: 'Shop',
                selectedIcon: Icons.shopping_cart_outlined,
                unselectedIcon: Icons.shopping_cart,
                selectedBackgroundColor: Color(0xffF82F40),
                unselectedBackgroundColor: Colors.white,
              ),
            ]),
        body: Column(children: [
          Container(
            child: Image.asset(
              "assets/awan_atas2.png",
              fit: BoxFit.fitWidth,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          SizedBox(
            height: 29,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: SizedBox(
                height: 1000,
                width: 370,
                child: Column(
                  children: [
                    Stack(children: [
                      CarouselSlider(
                        options: CarouselOptions(
                            height: 160, autoPlay: true, viewportFraction: 1),
                        items: [
                          'assets/shop/slider_buku.jpg',
                          'assets/shop/slider_buku2.jpg'
                        ].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      i,
                                      height: 200,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ));
                            },
                          );
                        }).toList(),
                      ),
                      Container(
                        alignment: Alignment.center,
                        color: Color(0xff505050),
                        width: 370,
                        child: Text(
                          "Best Seller",
                          style: GoogleFonts.beVietnamPro(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ),
                      )
                    ]),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            Container(
                                height: 170,
                                width: 170,
                                child: Image.asset(
                                    "assets/shop/category_book.jpg")),
                            Container(
                              alignment: Alignment.center,
                              color: Color(0xff505050),
                              width: 170,
                              child: Text(
                                "Best Seller",
                                style: GoogleFonts.beVietnamPro(
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                                height: 170,
                                width: 170,
                                child: Image.asset(
                                    "assets/shop/category_totebag.jpg")
                            ),
                            Container(
                              alignment: Alignment.center,
                              color: Color(0xff505050),
                              width: 170,
                              child: Text(
                                "Best Seller",
                                style: GoogleFonts.beVietnamPro(
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            Container(
                                height: 170,
                                width: 170,
                                child: Image.asset(
                                    "assets/shop/category_cloth.jpg")),
                            Container(
                              alignment: Alignment.center,
                              color: Color(0xff505050),
                              width: 170,
                              child: Text(
                                "Best Seller",
                                style: GoogleFonts.beVietnamPro(
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                                height: 170,
                                width: 170,
                                child: Image.asset(
                                    "assets/shop/category_alattulis.png")
                            ),
                            Container(
                              alignment: Alignment.center,
                              color: Color(0xff505050),
                              width: 170,
                              child: Text(
                                "Best Seller",
                                style: GoogleFonts.beVietnamPro(
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
