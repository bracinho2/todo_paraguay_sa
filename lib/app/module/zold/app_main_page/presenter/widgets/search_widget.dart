import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/core/dummy.dart';
import 'package:todo_paraguay_sa/app/core/functions.dart';
import 'package:todo_paraguay_sa/app/core/layout/app_adaptative_builder.dart';
import 'package:todo_paraguay_sa/app/core/layout/app_responsivity.dart';
import 'package:todo_paraguay_sa/app/module/zold/app_main_page/presenter/search_widget.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({
    Key? key,
  }) : super(key: key);

  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Container(
      height: AdaptativeBuilder.isMobile(context)
          ? mediaQueryData.size.height * 0.8
          : mediaQueryData.size.height * 0.6,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(images[generateInt(images)]),
        ),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                  child: SizedBox(
                    height: AppResponsivity.automatic(100, mediaQueryData),
                    width: AppResponsivity.automatic(200, mediaQueryData),
                    child: Image.asset('assets/todo_paraguay.png'),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: mediaQueryData.size.width * 0.5,
                  ),
                  child: Column(
                    children: [
                      InputTextFieldWidget(
                        submit: () {},
                        actionIcon: true,
                        controller: _searchController,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Align(
          //   alignment: Alignment.bottomRight,
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Container(
          //       padding: const EdgeInsets.all(8),
          //       color: Colors.amber,
          //       child: const Text(
          //         'Ciudad del Leste - Paraguay',
          //         style: TextStyle(
          //           fontFamily: 'Roboto',
          //           fontSize: 15,
          //           color: Colors.white,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
