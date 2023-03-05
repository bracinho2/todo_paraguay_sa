import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/data/repositories/sign_up_repository_impl.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/domain/usecases/sign_up.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/external/sign_up_datasource_impl.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/presenter/client_main_page_widget.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/presenter/sign_in_page/sign_in_controller.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/presenter/sign_up_page/sign_up_store.dart';

import '../client_dashboard/client_dashboard_widget.dart';
import 'presenter/sign_up_page/sign_up_controller.dart';

class ClientModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SignUpDatasourceImpl()),
    Bind.lazySingleton((i) => SignUpRepositoryImpl(i())),
    Bind.lazySingleton((i) => SignUp(i())),
    Bind.lazySingleton((i) => SignUpStore(i())),
    Bind.factory((i) => SignInPageController()),
    Bind.factory((i) => SignUpPageController(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (context, args) => const ClientMainPageWidget(),
    ),
    ChildRoute(
      '/dashboard',
      child: (context, args) => const ClientDashboardWidget(),
    ),
  ];
}
