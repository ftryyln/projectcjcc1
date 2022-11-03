import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardSearch extends StatelessWidget {
  final String image;
  final String title;

  const CardSearch({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 5,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: 4 / 3,
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.contain,
                      alignment: FractionalOffset.topCenter,
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text(title,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: (12),
                  fontWeight: FontWeight.bold,
                )),
          ),
        ],
      ),
    );
  }
}
