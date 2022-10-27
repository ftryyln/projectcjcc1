import 'package:flutter/material.dart';

class PhotoHero extends StatelessWidget {
  const PhotoHero({Key? key, required this.photo, required this.onTap }) : super(key: key);

  final String photo;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.asset(
              photo,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
