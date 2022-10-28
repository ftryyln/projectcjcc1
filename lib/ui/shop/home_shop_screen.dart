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
            )
        ),
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
        body: SingleChildScrollView(
          child: Column(children: [
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
            SizedBox(
              height: 1000,
              width: 370,
              child: Column(
                children: [
                  Card(
                    color: Colors.transparent,
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Stack(children: [
                      CarouselSlider(
                        options: CarouselOptions(
                            clipBehavior: Clip.none,
                            height: 160,
                            autoPlay: true,
                            viewportFraction: 1),
                        items: [
                          'assets/shop/slider_buku.jpg',
                          'assets/shop/slider_buku2.jpg'
                        ].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        image: AssetImage(i))),
                                width: MediaQuery.of(context).size.width,
                              );
                            },
                          );
                        }).toList(),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            color: Color(0xff505050).withOpacity(0.7),
                          ),
                          alignment: Alignment.center,
                          height: 40,
                          child: Text(
                            "Best Seller",
                            style: GoogleFonts.beVietnamPro(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        color: Colors.transparent,
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          children: [
                            Container(
                              height: 170,
                              width: 170,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage("assets/shop/category_book.jpg"))),
                              //width: MediaQuery.of(context).size.width,
                            ),
                            Positioned(
                              top: 65,
                              bottom: 65,
                              right: 0,
                              left: 0,
                              child: Container(
                                alignment: Alignment.center,
                                color: Color(0xff505050).withOpacity(0.7),
                                width: 170,
                                child: Text(
                                  "Book",
                                  style: GoogleFonts.beVietnamPro(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          children: [
                            Container(
                              height: 170,
                              width: 170,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage("assets/shop/category_totebag.jpg"))),
                              //width: MediaQuery.of(context).size.width,
                            ),
                            Positioned(
                              top: 65,
                              bottom: 65,
                              right: 0,
                              left: 0,
                              child: Container(
                                alignment: Alignment.center,
                                color: Color(0xff505050).withOpacity(0.7),
                                width: 170,
                                child: Text(
                                  "Backpack",
                                  style: GoogleFonts.beVietnamPro(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            )
                          ],
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
                      Card(
                        color: Colors.transparent,
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          children: [
                            Container(
                              height: 170,
                              width: 170,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage("assets/shop/category_cloth.jpg"))),
                              //width: MediaQuery.of(context).size.width,
                            ),
                            Positioned(
                              top: 65,
                              bottom: 65,
                              right: 0,
                              left: 0,
                              child: Container(
                                alignment: Alignment.center,
                                color: Color(0xff505050).withOpacity(0.7),
                                width: 170,
                                child: Text(
                                  "Cloth",
                                  style: GoogleFonts.beVietnamPro(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Card(
                        color: Colors.transparent,
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          children: [
                            Container(
                              height: 170,
                              width: 170,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage("assets/shop/category_alattulis.png"))),
                              //width: MediaQuery.of(context).size.width,
                            ),
                            Positioned(
                              top: 65,
                              bottom: 65,
                              right: 0,
                              left: 0,
                              child: Container(
                                alignment: Alignment.center,
                                color: Color(0xff505050).withOpacity(0.7),
                                width: 170,
                                child: Text(
                                  "Alat Tulis",
                                  style: GoogleFonts.beVietnamPro(
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
