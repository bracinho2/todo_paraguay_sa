import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/core/layout/app_adaptative_builder.dart';

import 'package:todo_paraguay_sa/app/modules/client_dashboard/presenter/tablet/tablet_dashboard_page.dart';

import 'presenter/controller/client_dashboard_controller.dart';
import 'presenter/desktop/desktop_dashboard_page.dart';
import 'presenter/mobile/mobile_dashboard_widget.dart';

class ClientDashboardWidget extends StatelessWidget {
  const ClientDashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptativeBuilder(
      mobileBuilder: (context, constraints) {
        return MobileDashBoardPage(constraints: constraints);
      },
      tabletBuilder: (context, constraints) {
        return TabletDashBoardPage(constraints: constraints);
      },
      desktopBuilder: (context, constraints) {
        return DesktopDashBoardPage(
          constraints: constraints,
          controller: context.read<ClientDashBoardController>(),
        );
      },
    );
  }
}
