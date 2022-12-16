import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/module/zold/app_main_page/presenter/controller/app_main_page_controller.dart';
import 'package:todo_paraguay_sa/app/module/zold/app_main_page/presenter/page_states/app_main_page_state.dart';
import 'package:todo_paraguay_sa/app/module/zold/main_menu/menu_item_widget.dart';

class ShowMainMenu extends StatelessWidget {
  const ShowMainMenu({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final AppMainPageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          MenuItemWidget(
            label: 'Home',
            icon: EvaIcons.home,
            selected: true,
            onPressed: () =>
                controller.goMenuNavigation(state: PageState.search),
            //notifications: 10,
          ),
          MenuItemWidget(
            label: 'Compras',
            icon: EvaIcons.bell,
            selected: true,
            onPressed: () =>
                controller.goMenuNavigation(state: PageState.shopping),
          ),
          MenuItemWidget(
            label: 'Viagens',
            icon: EvaIcons.bell,
            selected: true,
            onPressed: () =>
                controller.goMenuNavigation(state: PageState.travel),
          ),
        ],
      ),
    );
  }
}
