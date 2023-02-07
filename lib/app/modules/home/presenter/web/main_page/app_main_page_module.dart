import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/modules/home/presenter/web/main_page/app_main_page_widget.dart';

class AppMainPageModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (context, args) => const AppMainPageWidget(),
    ),
  ];
}
