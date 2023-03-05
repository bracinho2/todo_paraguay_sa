import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/core/layout/app_adaptative_builder.dart';
import 'package:todo_paraguay_sa/app/modules/admin/admin_dashboard/mobile/mobile_admin_dashboard.dart';
import 'package:todo_paraguay_sa/app/modules/admin/admin_dashboard/tablet/tablet_admin_dashboard.dart';
import 'package:todo_paraguay_sa/app/modules/admin/admin_dashboard/web/presenter/web_admin_dashboard.dart';

class AdminDashboardWidget extends StatelessWidget {
  const AdminDashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptativeBuilder(
      mobileBuilder: (context, constraints) {
        return MobileAdminDashboard(constraints: constraints);
      },
      tabletBuilder: (context, constraints) {
        return TabletAdminDashboard(constraints: constraints);
      },
      desktopBuilder: (context, constraints) {
        return WebAdminDashboard(
          constraints: constraints,
        );
      },
    );
  }
}
