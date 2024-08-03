import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final double top;
  final double left;
  final double diameter;
  final String imageUrl;
  const ProfileImage({super.key, required this.top, required this.left, required this.diameter, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: SizedBox(
        height: diameter,
        width: diameter,
        child: ClipRRect(
          child: Image.network(imageUrl, fit: BoxFit.cover,),
          borderRadius: BorderRadius.circular(300.0),
        ),
      ),
    );
  }
}
