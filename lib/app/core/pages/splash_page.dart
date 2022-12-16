import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/core/theme/app_theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then((value) {
      Modular.to.navigate(
        '/mainpage/',
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
                color: primaryColor,
              ),
            ),
            Expanded(
              child: Container(
                color: secundaryColor,
              ),
            ),
            Expanded(
              child: Container(
                color: thirdColor,
              ),
            ),
          ],
        ),
        Center(
          child: SizedBox(
            height: 150,
            width: 250,
            child: Image.asset('assets/todo_paraguay.png'),
          ),
        ),
      ],
    );
  }
}
