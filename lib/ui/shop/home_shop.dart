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
        bottomNavigationBar: FlipBoxNavigationBar(
            currentIndex: currentIndex,
            verticalPadding: 20.0,
            items: <FlipBoxNavigationBarItem>[
              FlipBoxNavigationBarItem(
                name: 'Profil',
                selectedIcon: Icons.info_outline_rounded,
                unselectedIcon: Icons.info_outlined,
                selectedBackgroundColor: Color(0xff1C96F9),
                unselectedBackgroundColor: Colors.white,
              ),
              FlipBoxNavigationBarItem(
                name: 'Galeri',
                selectedIcon: Icons.photo_library_outlined,
                unselectedIcon: Icons.photo_library,
                selectedBackgroundColor: Color(0xff46AD4C),
                unselectedBackgroundColor: Colors.white,
              ),
              FlipBoxNavigationBarItem(
                name: 'Shop',
                selectedIcon: Icons.shopping_bag_outlined,
                unselectedIcon: Icons.shopping_bag,
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
        ]));
  }
}
