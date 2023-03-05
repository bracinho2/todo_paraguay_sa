import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
    required this.logoSize,
    required this.logoPath,
  }) : super(key: key);

  final double logoSize;
  final String logoPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: logoSize,
      width: logoSize,
      child: Image.asset(logoPath),
    );
  }
}
