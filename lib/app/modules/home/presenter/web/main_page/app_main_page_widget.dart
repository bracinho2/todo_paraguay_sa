import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/core/layout/app_adaptative_builder.dart';
import 'package:todo_paraguay_sa/app/modules/home/presenter/web/main_page/desktop_page/desktop_page.dart';

class AppMainPageWidget extends StatelessWidget {
  const AppMainPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptativeBuilder(
      mobileBuilder: (context, constraints) {
        return Container(
          color: Colors.black12,
        );
      },
      tabletBuilder: (context, constraints) {
        return Container(
          color: Colors.green,
        );
      },
      desktopBuilder: (context, constraints) {
        return DeskTopMainPage(constraints: constraints);
      },
    );
  }
}
