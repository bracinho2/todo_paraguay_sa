// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BannerLogo extends StatelessWidget {
  const BannerLogo({
    Key? key,
    required this.bannerSize,
  }) : super(key: key);

  final double bannerSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: bannerSize,
      width: bannerSize,
      child: Image.asset('assets/todo_paraguay.png'),
    );
  }
}
