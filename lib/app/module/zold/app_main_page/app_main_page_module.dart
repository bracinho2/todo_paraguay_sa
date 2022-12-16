import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/module/zold/app_main_page/presenter/controller/app_main_page_controller.dart';
import 'package:todo_paraguay_sa/app/module/zold/app_main_page/presenter/app_main_page.dart';
import 'package:todo_paraguay_sa/app/module/zold/app_main_page/presenter/store/app_main_page_store.dart';

class AppMainPageModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<AppMainPageStore>((i) => AppMainPageStore()),
    Bind.lazySingleton<AppMainPageController>(
        (i) => AppMainPageController(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (context, args) => AppMainPage(
        controller: Modular.get<AppMainPageController>(),
      ),
    ),
  ];
}
