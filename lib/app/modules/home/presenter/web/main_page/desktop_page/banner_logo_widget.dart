import 'package:flutter/material.dart';

class BannerLogo extends StatelessWidget {
  const BannerLogo({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Image.asset(imagePath),
    );
  }
}
