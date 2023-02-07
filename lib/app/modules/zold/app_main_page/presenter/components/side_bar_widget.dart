import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/modules/zold/app_main_page/presenter/controller/app_main_page_controller.dart';
import 'package:todo_paraguay_sa/app/modules/home/presenter/web/main_page/desktop_page/banner_logo_widget.dart';
import 'package:todo_paraguay_sa/app/modules/zold/main_menu/show_main_menu_widget.dart';

class SideBarWidget extends StatelessWidget {
  const SideBarWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final AppMainPageController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const BannerLogo(
            imagePath: 'assets/todo_paraguay.png',
          ),
          ShowMainMenu(
            controller: controller,
          )
        ],
      ),
    );
  }
}
