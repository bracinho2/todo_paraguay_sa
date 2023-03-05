// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/modules/admin/admin_dashboard/web/presenter/widgets/side_menu_widget.dart';

class WebAdminDashboard extends StatelessWidget {
  const WebAdminDashboard({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: AdminSideMenuWidget(),
          ),
          Expanded(
              flex: 5,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      color: Colors.amber,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
