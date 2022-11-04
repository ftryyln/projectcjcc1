import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailGaleriScreen extends StatefulWidget {
  final String tag;
  final String image;
  final String title;
  final String desc;

  const DetailGaleriScreen({Key? key, required this.tag, required this.image, required this.title, required this.desc})
      : super(key: key);

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
              onTap: () => Navigator.pop(context),
              child: Image.asset("assets/back.png"))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/awan_atas2.png",
              fit: BoxFit.fitWidth,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(children: [
                Container(
                  height: 540,
                  width: 360,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Hero(
                          tag: widget.tag,
                          child: AspectRatio(
                            aspectRatio: 1 / 1,
                            child: Image.asset(
                              widget.image,
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          widget.title,
                          style: GoogleFonts.beVietnamPro(
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            widget.desc,
                            textAlign: TextAlign.justify,
                            maxLines: 6,
                            style: GoogleFonts.beVietnamPro(
                                textStyle: const TextStyle(
                                    color: Colors.black, fontSize: 14)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            Image.asset(
              "assets/awan.png",
              fit: BoxFit.fitWidth,
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }
}
