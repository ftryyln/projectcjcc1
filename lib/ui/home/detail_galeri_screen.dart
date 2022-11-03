import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailGaleriScreen extends StatefulWidget {
  final String tag;

  const DetailGaleriScreen({Key? key, required this.tag}) : super(key: key);

  @override
  State<DetailGaleriScreen> createState() => _DetailGaleriScreenState();
}

class _DetailGaleriScreenState extends State<DetailGaleriScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFA800),
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Detail Galeri",
            style: GoogleFonts.beVietnamPro(
                textStyle: const TextStyle(
                    color: Color(0xff46AD4C),
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
          ),
          leading: GestureDetector(
            onTap: ()=>Navigator.pop(context),
              child: Image.asset("assets/back.png"))),
      body: Column(
        children: [
          Image.asset(
            "assets/awan_atas2.png",
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(children: [
              Container(
                height: 420,
                width: 360,
                color: Colors.white,
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   children: [
                     Hero(
                       tag: widget.tag,
                       child: Image.asset(
                         "assets/galeri/0.jpg",
                         fit: BoxFit.fitWidth,
                         width: MediaQuery.of(context).size.width,
                       ),
                     ),
                     SizedBox(
                       height: 20,
                     ),
                     Text(
                       "Kegiatan Siswa Belajar di Kelas",
                       style: GoogleFonts.beVietnamPro(
                           textStyle: const TextStyle(
                               color: Colors.black,
                               fontSize: 18,
                               fontWeight: FontWeight.bold)),
                     ),
                     SizedBox(
                       height: 10,
                     ),
                     Container(
                       alignment: Alignment.topLeft,
                       child: Text(
                         "Ariel sedang mengerjakan soal yang diberikan oleh ibu Nur saat pelajaran Matematika. Saat itu Ariel kesulitan mengerjakannya karena tidak mengerti dan tertidur saat pelajaran berlangsung. Namun Ibu Nur tetap mengajarkan Ariel sampai dapat menyelesaikan soalnya.",
                         textAlign: TextAlign.justify,
                         maxLines: 6,
                         style: GoogleFonts.beVietnamPro(
                             textStyle: const TextStyle(
                                 color: Colors.black,
                                 fontSize: 14)),
                       ),
                     ),
                   ],
                 ),
               ),
              ),
            ]),
          ),
          const SizedBox(
            height: 53,
          ),
          Image.asset(
            "assets/awan.png",
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}
