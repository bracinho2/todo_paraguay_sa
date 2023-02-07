import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/core/core_module.dart';
import 'package:todo_paraguay_sa/app/core/pages/splash_page.dart';
import 'package:todo_paraguay_sa/app/modules/home/presenter/web/main_page/app_main_page_module.dart';

import 'modules/home/carroucel/banner_promo_module.dart';

class AppModule extends Module {
  @override
  final List<Module> imports = [
    CoreModule(),
    BannerPromoModule(),
  ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const SplashPage(),
        ),
        ModuleRoute(
          '/mainpage/',
          module: AppMainPageModule(),
          transition: TransitionType.downToUp,
        ),
      ];
}
