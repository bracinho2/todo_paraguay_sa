import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/modules/home/presenter/web/main_page/desktop_page/banner_logo_widget.dart';
import 'package:todo_paraguay_sa/app/modules/home/presenter/web/main_page/desktop_page/show_search_widget.dart';

class MainMenuWidget extends StatelessWidget {
  MainMenuWidget({super.key});

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 50,
        right: 50,
      ),
      child: Row(
        children: [
          const BannerLogo(
            bannerSize: 100,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              'What\'s News',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ShowSearchWidget(
            actionIcon: true,
            controller: _controller,
            obscure: false,
            submit: () {},
          ),
          GestureDetector(
            onTap: () => Modular.to.navigate('/client_dashboard/'),
            child: Row(
              children: const [
                Text(
                  'Account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.account_circle,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
