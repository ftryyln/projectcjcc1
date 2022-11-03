import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tk_al_muhajirin/const/top.dart';
import 'package:tk_al_muhajirin/helper/photohero.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tk_al_muhajirin/ui/home/detail_galeri_screen.dart';

class Galeri extends StatefulWidget {
  const Galeri({Key? key}) : super(key: key);

  @override
  State<Galeri> createState() => _GaleriState();
}

class _GaleriState extends State<Galeri> {
  int currentIndex = 0;
  List<String> galeri = [
    'assets/galeri/0.jpg',
    'assets/galeri/1.jpg',
    'assets/galeri/2.jpg',
    'assets/galeri/3.jpg',
    'assets/galeri/4.jpg',
    'assets/galeri/5.jpg',
    'assets/galeri/6.jpg',
    'assets/galeri/7.jpg',
    'assets/galeri/8.jpg',
    'assets/galeri/9.jpg',
    'assets/galeri/10.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFA800),
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/awan_atas.png",
                  fit: BoxFit.fitWidth,
                  width: MediaQuery.of(context).size.width,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 44),
                  child: Column(
                    children: [
                      Search(),
                      const SizedBox(
                        height: 85,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          child: Column(
                            children: [
                              Text("Galeri",
                                  style: GoogleFonts.beVietnamPro(
                                      textStyle: TextStyle(
                                          shadows: [
                                        Shadow(
                                          offset: const Offset(0, 4),
                                          color: Colors.black.withOpacity(0.25),
                                          blurRadius: 4,
                                        ),
                                      ],
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold))),
                            ],
                          ))
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 536,
              width: 400,
              child: MasonryGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                itemCount: galeri.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: GestureDetector(
                        child: PhotoHero(
                      tag: index.toString(),
                      photo: galeri[index],
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailGaleriScreen(tag: index.toString())));
                      },
                    )),
                  );
                },
              ),
            )
          ],
        ));
  }
}
