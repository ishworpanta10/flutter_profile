import 'package:flutter/material.dart';

class CircularProfileImage extends StatelessWidget {
  const CircularProfileImage({
    this.radius = 30,
    required this.imageUrl,
  });

  final double radius;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.grey[200],
      backgroundImage: AssetImage(imageUrl),
    );
  }
}
