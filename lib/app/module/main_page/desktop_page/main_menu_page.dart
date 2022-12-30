import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/module/main_page/desktop_page/banner_logo_widget.dart';
import 'package:todo_paraguay_sa/app/module/main_page/desktop_page/show_search_widget.dart';

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
          const BannerLogo(imagePath: 'assets/todo_paraguay.png'),
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
          Row(
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
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
