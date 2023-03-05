import 'package:cambona/cambona.dart';
import 'package:cambona/themes/cambona_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/core/images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1)).then((value) {
      Modular.to.navigate(
        '/admin/',
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Container(
                color: CambonaColors.brandRed,
              ),
            ),
            Expanded(
              child: Container(
                color: CambonaColors.brandWhite,
              ),
            ),
            Expanded(
              child: Container(
                color: CambonaColors.brandBlue,
              ),
            ),
          ],
        ),
        const Center(
          child: LogoWidget(
            logoSize: 250,
            logoPath: logoPath,
          ),
        ),
      ],
    );
  }
}
