import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tk_al_muhajirin/ui/shop/cart_screen.dart';

class ListCategoryScreen extends StatefulWidget {
  const ListCategoryScreen({Key? key}) : super(key: key);

  @override
  State<ListCategoryScreen> createState() => _ListCategoryScreenState();
}

class _ListCategoryScreenState extends State<ListCategoryScreen> {
  int index = 0;
  List<String> imageCategory = [
    'assets/shop/category_book.jpg',
    'assets/shop/category_book.jpg',
    'assets/shop/category_book.jpg',
    'assets/shop/category_book.jpg',
  ];
  List<String> titleCategory = [
    "Buku Tulis",
    "Buku Tulis",
    "Buku Tulis",
    "Buku Tulis",
  ];
  List<String> brandCategory = [
    "Sinar Dunia",
    "Sinar Dunia",
    "Sinar Dunia",
    "Sinar Dunia",
  ];
  List<String> priceCategory = [
    "Rp. 45.000",
    "Rp. 45.000",
    "Rp. 45.000",
    "Rp. 45.000",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff449849),
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: Text(
              "Buku",
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
          // ListView.separated(
          //   padding: const EdgeInsets.all(8),
          //   itemCount: index,
          //   itemBuilder: (BuildContext context, int index){
          //   return Container(
          //     width: MediaQuery.of(context).size.width,
          //     height: 130,
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(10), color: Colors.white),
          //     child: SizedBox(
          //       width: MediaQuery.of(context).size.width,
          //       child: Row(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Padding(
          //             padding: const EdgeInsets.all(5.0),
          //             child: Card(
          //               elevation: 7,
          //               shape: RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.circular(10)),
          //               child: Container(
          //                 height: 105,
          //                 width: 105,
          //                 decoration: BoxDecoration(
          //                     borderRadius: BorderRadius.all(Radius.circular(10)),
          //                     image: DecorationImage(
          //                         fit: BoxFit.fitWidth,
          //                         image: AssetImage(imageCategory[index]))),
          //                 //width: MediaQuery.of(context).size.width,
          //               ),
          //             ),
          //           ),
          //           SizedBox(
          //             width: 10,
          //           ),
          //           Container(
          //             margin: const EdgeInsets.only(top: 8, bottom: 8),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Text(
          //                   titleCategory[index],
          //                   style: GoogleFonts.beVietnamPro(
          //                       textStyle: const TextStyle(
          //                           color: Color(0xff46AD4C),
          //                           fontSize: 16,
          //                           fontWeight: FontWeight.bold)),
          //                 ),
          //                 SizedBox(
          //                   height: 8,
          //                 ),
          //                 Text(
          //                   brandCategory[index],
          //                   style: GoogleFonts.beVietnamPro(
          //                       textStyle: const TextStyle(
          //                           color: Color(0xff46AD4C), fontSize: 16)),
          //                 ),
          //                 const SizedBox(
          //                   height: 23,
          //                 ),
          //                 Row(
          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   crossAxisAlignment: CrossAxisAlignment.end,
          //                   children: [
          //                     Text(
          //                       priceCategory[index],
          //                       style: GoogleFonts.beVietnamPro(
          //                           textStyle: const TextStyle(
          //                               color: Color(0xff46AD4C),
          //                               fontSize: 20,
          //                               fontWeight: FontWeight.bold)),
          //                     ),
          //                     SizedBox(
          //                       width: MediaQuery.of(context).size.width - 343,
          //                     ),
          //                     Container(
          //                       alignment: Alignment.bottomRight,
          //                       height: 40,
          //                       width: 64,
          //                       decoration: BoxDecoration(
          //                           color: Colors.white,
          //                           border: Border.all(
          //                               color: Color(0xff308612), width: 2),
          //                           borderRadius: BorderRadius.circular(10)),
          //                       child: Center(
          //                         child: Text(
          //                           "Buy",
          //                           style: GoogleFonts.beVietnamPro(
          //                               textStyle: const TextStyle(
          //                                   color: Color(0xff308612),
          //                                   fontSize: 16,
          //                                   fontWeight: FontWeight.bold)),
          //                         ),
          //                       ),
          //                     ),
          //                   ],
          //                 )
          //               ],
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   );
          //   },
          //   separatorBuilder: (BuildContext context, int index) => const Divider(),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                            elevation: 7,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              height: 105,
                              width: 105,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage(imageCategory[index]))),
                              //width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                titleCategory[index],
                                style: GoogleFonts.beVietnamPro(
                                    textStyle: const TextStyle(
                                        color: Color(0xff46AD4C),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                brandCategory[index],
                                style: GoogleFonts.beVietnamPro(
                                    textStyle: const TextStyle(
                                        color: Color(0xff46AD4C),
                                        fontSize: 16)),
                              ),
                              const SizedBox(
                                height: 23,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    priceCategory[index],
                                    style: GoogleFonts.beVietnamPro(
                                        textStyle: const TextStyle(
                                            color: Color(0xff46AD4C),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width - 343,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
                                    },
                                    child: Container(
                                      alignment: Alignment.bottomRight,
                                      height: 40,
                                      width: 64,
                                      decoration: BoxDecoration(
                                          color: Color(0xff46AD4C),
                                          border: Border.all(
                                              color: Color(0xff308612), width: 2),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Icon(
                                        Icons.shopping_cart_rounded,
                                        color: Colors.white,
                                      )),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ]),
                )),
          ),
        ])));
  }
}
