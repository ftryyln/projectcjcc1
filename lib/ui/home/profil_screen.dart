import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tk_al_muhajirin/ui/struktur.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tk_al_muhajirin/ui/top.dart';
import 'package:cool_nav/cool_nav.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  int currentIndex = 0;

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
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/ombak_profil.png",
                    fit: BoxFit.fitWidth,
                    height: MediaQuery.of(context).size.height * 0.64,
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
                                  "Profil",
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
                                        textStyle: const TextStyle(
                                            color: Colors.white))),
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
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Sambutan Kepala Sekolah",
                    style: GoogleFonts.beVietnamPro(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/struktur/kepsek.jpg"),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Drs. Nabila, M.Pd.",
                    style: GoogleFonts.beVietnamPro(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Dengan fasilitas, teknologi, metode pembelajaran serta " +
                        "yang memang didesain untuk menghadapi model pembelajaran" +
                        "di masa depan.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.beVietnamPro(
                        textStyle: const TextStyle(color: Colors.black)),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Stack(children: [
                Image.asset(
                  "assets/struktur/ombak_struktur.png",
                  fit: BoxFit.fitHeight,
                  height: MediaQuery.of(context).size.height * 0.49,
                  width: MediaQuery.of(context).size.width,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 30),
                    child: Text("Struktur Organisasi",
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
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: CarouselSlider(
                    options: CarouselOptions(
                        height: 250.0, autoPlay: false, viewportFraction: 1),
                    items: [
                      Struktur(
                          jabatan: "Kepala Yayasan",
                          image: "assets/struktur/kepyas.jpg",
                          nama: "Prof. Dr. Fatih Fathur, S.Si., M.Si."),
                      Struktur(
                          jabatan: "Kepala Sekolah",
                          image: "assets/struktur/kepsek.jpg",
                          nama: "Drs. Nabila, M.Pd."),
                      Struktur(
                          jabatan: "Wakil Kepala Sekolah",
                          image: "assets/struktur/wakasek.jpg",
                          nama: "Nurul Khotimah, S.Pd., M.Pd."),
                      Struktur(
                          jabatan: "Sekretaris",
                          image: "assets/struktur/sekre.png",
                          nama: "Sheila, S.Pd., M.Pd."),
                      Struktur(
                          jabatan: "Bendahara",
                          image: "assets/struktur/bendahara.jpg",
                          nama: "Sheila, S.Pd., M.Pd.")
                    ].map((i) {
                      return i;
                    }).toList(),
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Image.asset(
                    "assets/visi_misi.png",
                    fit: BoxFit.contain,
                    height: MediaQuery.of(context).size.height * 0.791,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 110),
                    padding: const EdgeInsets.all(42),
                    child: Column(
                      children: [
                        Text("VISI",
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
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            '"Membentuk generasi yang' +
                                ' berakhlak karimah, mandiri dan' +
                                ' kreatif"',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.beVietnamPro(
                                textStyle: const TextStyle(
                                    color: Colors.white, fontSize: 18))),
                        SizedBox(
                          height: 30,
                        ),
                        Text("MISI",
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
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            "1. Menanamkan aqidah yang benar dengan pembiasaan sesuai dengan tuntunan Rasulullah SAW.\n2. Sarana/prasarana yang dapat menunjang proses pembelajaran.\n3. Melaksanakan pembelajran active learning.",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.beVietnamPro(
                                textStyle: const TextStyle(
                                    color: Colors.white, fontSize: 18))),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
