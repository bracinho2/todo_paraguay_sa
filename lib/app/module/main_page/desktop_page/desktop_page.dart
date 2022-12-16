import 'package:flutter/material.dart';

import 'package:todo_paraguay_sa/app/core/theme/app_theme.dart';
import 'package:todo_paraguay_sa/app/module/main_page/desktop_page/banner_logo_widget.dart';
import 'package:todo_paraguay_sa/app/module/main_page/desktop_page/exchange_widget.dart';
import 'package:todo_paraguay_sa/app/module/main_page/desktop_page/footer_widget.dart';
import 'package:todo_paraguay_sa/app/module/main_page/desktop_page/show_search_widget.dart';
import 'package:todo_paraguay_sa/app/module/zold/app_main_page/presenter/widgets/search_widget.dart';

class DeskTopMainPage extends StatelessWidget {
  DeskTopMainPage({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints;

  final _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 50,
                right: 50,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BannerLogo(imagePath: 'assets/todo_paraguay.png'),
                  ShowSearchWidget(
                    actionIcon: true,
                    controller: _textEditingController,
                    obscure: false,
                    submit: () {},
                  ),
                  SearchWidget(),
                  const ExchangeWidget(),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 6,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                    flex: constraints.maxWidth > 1350 ? 3 : 4,
                    child: Container(
                      color: Colors.red,
                    )),
                Flexible(
                  flex: constraints.maxWidth > 1350 ? 10 : 9,
                  child: Container(
                    color: secundaryColor,
                    child: const Center(
                      child: Text(
                        'Travel',
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
            ),
          ),
          const Flexible(
            flex: 1,
            child: FooterWidget(),
          ),
        ],
      ),
    );
  }
}
