import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/presenter/sign_in_page/sign_in_controller.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/presenter/sign_in_page/sign_in_page.dart';

import '../../../core/layout/app_adaptative_builder.dart';

class ClientMainPageWidget extends StatelessWidget {
  const ClientMainPageWidget({super.key});

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
        return SignInClientPage(
          constraints: constraints,
          controller: Modular.get<SignInPageController>(),
        );
      },
    );
  }
}
