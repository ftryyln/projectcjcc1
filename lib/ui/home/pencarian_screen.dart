import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cool_nav/cool_nav.dart';
import '../card_search.dart';

class Pencarian extends StatefulWidget {
  const Pencarian({Key? key}) : super(key: key);

  @override
  State<Pencarian> createState() => _PencarianState();
}

class _PencarianState extends State<Pencarian> {
  int currentIndex = 0;

  TextEditingController pencarianControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: Text(
              "Pencarian",
              style: GoogleFonts.beVietnamPro(
                  textStyle: const TextStyle(
                      color: Color(0xff46AD4C),
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
            ),
            leading: Image.asset("assets/back.png")
        ),
        backgroundColor: Color(0xff44A7AD),
        bottomNavigationBar: FlipBoxNavigationBar(
            currentIndex: currentIndex,
            verticalPadding: 20.0,
            items: <FlipBoxNavigationBarItem>[
              FlipBoxNavigationBarItem(
                name: 'Profil',
                selectedIcon: Icons.info_outline,
                unselectedIcon: Icons.info,
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
        body: Column(
          children: [
            Image.asset(
              "assets/awan_atas2.png",
              fit: BoxFit.fitWidth,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
            ),
            Column(
              children: [
                SizedBox(
                  height: 90,
                ),
                SizedBox(
                  height: 48,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.7,
                  child: TextField(

                    onChanged: (search) {
                      setState(() {
                        pencarianControler.text = search;
                      });
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Pencarian",
                      // label: Text("Pencarian",
                      //     style: GoogleFonts.beVietnamPro(
                      //         textStyle:
                      //         const TextStyle(fontSize: 14))),
                      prefixIcon: const Icon(Icons.search),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(15)),
                        // borderSide: BorderSide(
                        //     color: Colors.white)
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Hasil Pencarian : '${pencarianControler.text}'",
                    style: GoogleFonts.beVietnamPro(
                        textStyle:
                        TextStyle(color: Colors.white, fontSize: 14))),
                SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return CardSearch(
                          image: "assets/futsal.jpg",
                          title: "Pertandingan futsal antar siswa TK / sederajat.");
                    },
                  ),
                )
              ],
            )
          ],
        ));
  }
}
