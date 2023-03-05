import 'package:cambona/cambona.dart';
import 'package:cambona/widgets/drawer_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/core/images.dart';
import 'package:todo_paraguay_sa/app/core/themes/app_theme_controller.dart';

class AdminSideMenuWidget extends StatelessWidget {
  AdminSideMenuWidget({
    Key? key,
  }) : super(key: key);

  final appThemeController = AppThemeController.instance;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: LogoWidget(
              logoSize: 100,
              logoPath: logoPath,
            ),
          ),
          DrawerListTile(
            title: "Dashboard",
            leading: Icons.home,
            onPress: () {},
          ),
          DrawerListTile(
            title: "Change Theme",
            leading: Icons.color_lens,
            onPress: () {
              appThemeController.changeTheme();
            },
          ),
          DrawerListTile(
            title: "Exit",
            leading: Icons.exit_to_app,
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
