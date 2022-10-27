import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cool_nav/cool_nav.dart';
import 'package:tk_al_muhajirin/ui/top.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<String> titleEkskul = [
    'Berkuda',
    'Futsal',
  ];

  List<String> descEkskul = [
    'Berkuda dapat meningkatkan pembelajaran, memori, pemecahan masalah, ' +
        'dan kemampuan kognitif pada anak.',
    'Futsal untuk melatih kerja sama tim, meningkatkan kesehatan paru-paru, ' +
        'mencegah obesitas dan akan meningkatkan kemampuan pada anak untuk' +
        'berpikir cepat',
  ];

  int currentIndexFasilitas = 0;
  List<String> fasilitas = [
    'Taman Bermain',
    'Lapangan Futsal',
    'Computer Room',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ]
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/ombak.png",
                  fit: BoxFit.fitWidth,
                  height: MediaQuery.of(context).size.height * 0.62,
                  width: MediaQuery.of(context).size.width,
                ),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "TK Al-Muhajirin",
                              style: GoogleFonts.beVietnamPro(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const SizedBox(
                              height: 9,
                            ),
                            Text(
                                "TK Al-Muhajirin berupaya untuk mengembangkan segenap potensi " +
                                    "yang dimiliki anak melalui kegiatan bermain sambil belajar. " +
                                    "Bermain sebagai sarana sosialisasi yang diharapkan dapat memberi " +
                                    "kesempatan anak untuk bereksplorasi, berekspresi, berkreasi dan " +
                                    "belajar secara menyenangkan.",
                                style: GoogleFonts.beVietnamPro(
                                    textStyle:
                                        const TextStyle(color: Colors.white))),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              alignment: Alignment.center,
                              margin: const EdgeInsets.only(top: 10),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(400, 34),
                                    backgroundColor: const Color(0xffFFD600),
                                    foregroundColor: Colors.amberAccent,
                                    elevation: 4,
                                    shadowColor: const Color(0xFF003D86),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Pendaftaran Siswa Baru",
                                    style: GoogleFonts.beVietnamPro(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.zero,
              child: CarouselSlider(
                options: CarouselOptions(
                    height: 200.0, autoPlay: true, viewportFraction: 1),
                items: [
                  'assets/tk.jpg',
                  'assets/taman_bermain.jpg',
                  'assets/kelas.jpg'
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width * 0.92,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              i,
                              height: 200,
                              fit: BoxFit.fill,
                            ),
                          ));
                    },
                  );
                }).toList(),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Text(
                    "Mengapa Memilih TK Al-Muhajirin?",
                    style: GoogleFonts.beVietnamPro(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 20,
                  ), //Slider to text
                  Text(
                    '"Metode pembelajaran di TK Al-Muhajirin dapat menggali potensi, kreativitas dan minat anak secara maksimal"',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.beVietnamPro(
                        textStyle:
                            const TextStyle(color: Colors.black, fontSize: 16)),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Image.asset(
                  "assets/ombak_pilih_kelas.png",
                  fit: BoxFit.fitHeight,
                  height: MediaQuery.of(context).size.height * 1.1,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  top: 70,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text("Pilihan Kelas",
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
                                fontSize: 16,
                                fontWeight: FontWeight.bold))),
                  ),
                ),
                Positioned(
                  top: 110,
                  left: 20,
                  right: 20,
                  child: Center(
                    child: Container(
                      height: 335,
                      width: 370,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 4,
                              spreadRadius: 4,
                            )
                          ],
                          color: Colors.white,
                          border: Border.all(
                              color: const Color(0xff0075FF), width: 5)),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 15),
                            child: Text("Kelas Reguler",
                                style: GoogleFonts.beVietnamPro(
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold))),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.238,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: const DecorationImage(
                                image: AssetImage("assets/kelas.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 15),
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: Text(
                                "Kelas reguler di TK Al-Muhajirin dilaksanakan secara offline " +
                                    "dan siswa datang ke sekolah setiap hari Senin sampai dengan hari Jumat",
                                style: GoogleFonts.beVietnamPro(
                                    textStyle: const TextStyle(
                                        color: Colors.black, fontSize: 12))),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 470,
                  left: 20,
                  right: 20,
                  child: Center(
                    child: Container(
                      height: 375,
                      width: 390,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 4,
                              spreadRadius: 4,
                            )
                          ],
                          color: Colors.white,
                          border: Border.all(
                              color: const Color(0xff0075FF), width: 5)),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 15),
                            child: Text("Kelas Ekstrakulikuler",
                                style: GoogleFonts.beVietnamPro(
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold))),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.zero,
                            child: Container(
                              child: Column(
                                children: [
                                  CarouselSlider(
                                    options: CarouselOptions(
                                        height: 200.0,
                                        autoPlay: true,
                                        onPageChanged: (index, reason) {
                                          setState(() {
                                            currentIndex = index;
                                          });
                                        },
                                        viewportFraction: 1),
                                    items: [
                                      'assets/berkuda.png',
                                      'assets/futsal.jpg',
                                    ].map((i) {
                                      return Builder(
                                        builder: (BuildContext context) {
                                          return Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.238,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.8,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: Image.asset(
                                                i,
                                                //height: 200,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    }).toList(),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 15),
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16),
                                    alignment: Alignment.centerLeft,
                                    child: Text(titleEkskul[currentIndex],
                                        style: GoogleFonts.beVietnamPro(
                                            textStyle: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold))),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 15),
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16),
                                    child: Text(descEkskul[currentIndex],
                                        style: GoogleFonts.beVietnamPro(
                                            textStyle: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 12))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Image.asset(
                  "assets/rumah_balok.png",
                  fit: BoxFit.contain,
                  height: 360,
                  //height: MediaQuery.of(context).size.height * 0.9,
                  //width: MediaQuery.of(context).size.width * 0.9,
                ),
                Positioned(
                  top: 30,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Fasilitas Sekolah",
                      style: GoogleFonts.beVietnamPro(
                        textStyle: TextStyle(
                            shadows: [
                              Shadow(
                                offset: const Offset(0, 4),
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 4,
                              ),
                            ],
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                Positioned(
                  top: 100,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.zero,
                    child: Container(
                      child: Column(
                        children: [
                          CarouselSlider(
                            options: CarouselOptions(
                                height: 200.0,
                                autoPlay: true,
                                onPageChanged: (indexF, reason) {
                                  setState(() {
                                    currentIndexFasilitas = indexF;
                                  });
                                },
                                viewportFraction: 1),
                            items: [
                              'assets/taman_bermain.jpg',
                              'assets/lapangan_futsal.jpg',
                              'assets/computer_room.jpg',
                            ].map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    height: MediaQuery.of(context)
                                        .size
                                        .height *
                                        0.238,
                                    width: MediaQuery.of(context)
                                        .size
                                        .width *
                                        0.8,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: ClipRRect(
                                      borderRadius:
                                      BorderRadius.circular(5),
                                      child: Image.asset(
                                        i,
                                        //height: 200,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 15),
                            padding: const EdgeInsets.only(
                                left: 16, right: 16),
                            alignment: Alignment.centerLeft,
                            child: Center(
                              child: Text(fasilitas[currentIndex],
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
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
