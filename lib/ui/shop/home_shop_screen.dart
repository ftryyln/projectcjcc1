import 'package:carousel_slider/carousel_slider.dart';
import 'package:cool_nav/cool_nav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tk_al_muhajirin/ui/shop/account/profile_account_screen.dart';
import 'package:tk_al_muhajirin/ui/shop/cart_screen.dart';
import 'package:tk_al_muhajirin/ui/shop/daftar_pesanan_screen.dart';
import 'package:tk_al_muhajirin/ui/shop/list_category_screen.dart';

class HomeShopScreen extends StatefulWidget {
  const HomeShopScreen({Key? key}) : super(key: key);

  @override
  State<HomeShopScreen> createState() => _HomeShopScreenState();
}

class _HomeShopScreenState extends State<HomeShopScreen> {
  int indexBottomNavShop = 0;

  List<String> sliderHomeShop = [
    'assets/shop/slider_buku.jpg',
    'assets/shop/slider_buku2.jpg'
  ];

  Widget selectedHomeShopPage() {
    switch (indexBottomNavShop) {
      case 1:
        return DaftarPesananScreen();
      case 2:
        return CartScreen();
      default:
        return SingleChildScrollView(
          child: Column(children: [
            Container(
              child: Image.asset(
                "assets/awan_atas2.png",
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Best Seller",
                          style: GoogleFonts.beVietnamPro(
                              textStyle: const TextStyle(
                                  color: Color(0xff449849),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          color: Colors.transparent,
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: CarouselSlider(
                            options: CarouselOptions(
                                clipBehavior: Clip.none,
                                height: 170,
                                autoPlay: true,
                                viewportFraction: 1),
                            items: sliderHomeShop.map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    height: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        image: DecorationImage(
                                            fit: BoxFit.fitWidth,
                                            image: AssetImage(i))),
                                    width: MediaQuery.of(context).size.width,
                                  );
                                },
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ListCategoryScreen()));
                                  },
                                  child: Card(
                                    color: Colors.transparent,
                                    elevation: 7,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 170,
                                          width: 170,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              image: DecorationImage(
                                                  fit: BoxFit.fitWidth,
                                                  image: AssetImage(
                                                      "assets/shop/category_book.jpg"))),
                                          //width: MediaQuery.of(context).size.width,
                                        ),
                                        Positioned(
                                          top: 65,
                                          bottom: 65,
                                          right: 0,
                                          left: 0,
                                          child: Container(
                                            alignment: Alignment.center,
                                            color:
                                                Colors.white.withOpacity(0.8),
                                            width: 170,
                                            child: Text(
                                              "Book",
                                              style: GoogleFonts.beVietnamPro(
                                                  textStyle: const TextStyle(
                                                      color: Color(0xff449849),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
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
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            image: DecorationImage(
                                                fit: BoxFit.fitWidth,
                                                image: AssetImage(
                                                    "assets/shop/category_totebag.jpg"))),
                                        //width: MediaQuery.of(context).size.width,
                                      ),
                                      Positioned(
                                        top: 65,
                                        bottom: 65,
                                        right: 0,
                                        left: 0,
                                        child: Container(
                                          alignment: Alignment.center,
                                          color: Colors.white.withOpacity(0.8),
                                          width: 170,
                                          child: Text(
                                            "Backpack",
                                            style: GoogleFonts.beVietnamPro(
                                                textStyle: const TextStyle(
                                                    color: Color(0xff449849),
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold)),
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
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            image: DecorationImage(
                                                fit: BoxFit.fitWidth,
                                                image: AssetImage(
                                                    "assets/shop/category_cloth.jpg"))),
                                        //width: MediaQuery.of(context).size.width,
                                      ),
                                      Positioned(
                                        top: 65,
                                        bottom: 65,
                                        right: 0,
                                        left: 0,
                                        child: Container(
                                          alignment: Alignment.center,
                                          color: Colors.white.withOpacity(0.8),
                                          width: 170,
                                          child: Text(
                                            "Cloth",
                                            style: GoogleFonts.beVietnamPro(
                                                textStyle: const TextStyle(
                                                    color: Color(0xff449849),
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold)),
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
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            image: DecorationImage(
                                                fit: BoxFit.fitWidth,
                                                image: AssetImage(
                                                    "assets/shop/category_alattulis.png"))),
                                        //width: MediaQuery.of(context).size.width,
                                      ),
                                      Positioned(
                                        top: 65,
                                        bottom: 65,
                                        right: 0,
                                        left: 0,
                                        child: Container(
                                          alignment: Alignment.center,
                                          color: Colors.white.withOpacity(0.8),
                                          width: 170,
                                          child: Text(
                                            "Alat Tulis",
                                            style: GoogleFonts.beVietnamPro(
                                                textStyle: const TextStyle(
                                                    color: Color(0xff449849),
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold)),
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
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ]),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff449849),
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          actions: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileAccountScreen()));
                },
                child: Image.asset("assets/person_icon.png"))
          ],
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
          currentIndex: indexBottomNavShop,
          selectedItemTheme: IconThemeData(color: Colors.white, size: 35),
          textStyle: TextStyle(color: Colors.white),
          unselectedItemTheme:
              IconThemeData(color: Color(0xff1C96F9), size: 35),
          verticalPadding: 20.0,
          onTap: (index) {
            setState(() {
              indexBottomNavShop = index;
            });
          },
          items: <FlipBoxNavigationBarItem>[
            FlipBoxNavigationBarItem(
              name: '',
              selectedIcon: Icons.home_outlined,
              unselectedIcon: Icons.home_rounded,
              selectedBackgroundColor: Color(0xff46AD4C),
              unselectedBackgroundColor: Colors.white,
            ),
            FlipBoxNavigationBarItem(
              name: '',
              selectedIcon: Icons.list_alt_outlined,
              unselectedIcon: Icons.list_alt,
              selectedBackgroundColor: Color(0xff1C96F9),
              unselectedBackgroundColor: Colors.white,
            ),
            FlipBoxNavigationBarItem(
              name: '',
              selectedIcon: Icons.shopping_cart_outlined,
              unselectedIcon: Icons.shopping_cart,
              selectedBackgroundColor: Color(0xffF82F40),
              unselectedBackgroundColor: Colors.white,
            ),
          ]),
      body: selectedHomeShopPage(),
    );
  }
}
