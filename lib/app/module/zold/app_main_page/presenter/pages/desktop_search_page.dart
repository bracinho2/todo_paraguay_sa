import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/core/theme/app_theme.dart';

import 'package:todo_paraguay_sa/app/module/zold/app_main_page/presenter/controller/app_main_page_controller.dart';
import 'package:todo_paraguay_sa/app/module/zold/app_main_page/presenter/components/side_bar_widget.dart';

class DesktopSearchPage extends StatelessWidget {
  const DesktopSearchPage({
    Key? key,
    required this.constraints,
    required this.controller,
  }) : super(key: key);

  final BoxConstraints constraints;
  final AppMainPageController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: constraints.maxWidth > 1350 ? 3 : 4,
          child: SideBarWidget(
            controller: controller,
          ),
        ),
        Flexible(
          flex: constraints.maxWidth > 1350 ? 10 : 9,
          child: Container(
            color: secundaryColor,
            child: const Center(
              child: Text(
                'Search',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        Flexible(
          flex: 4,
          child: Container(
            color: thirdColor,
            child: const Center(
              child: Text(
                'SideBar',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
