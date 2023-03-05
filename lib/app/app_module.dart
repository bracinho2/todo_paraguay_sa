import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/core/core_module.dart';
import 'package:todo_paraguay_sa/app/core/pages/splash_page.dart';
import 'package:todo_paraguay_sa/app/modules/admin/admin_dashboard/admin_dashboard_widget.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/clients_module.dart';
import 'package:todo_paraguay_sa/app/modules/client_dashboard/client_dashboard_module.dart';
import 'package:todo_paraguay_sa/app/modules/home/presenter/web/main_page/app_main_page_module.dart';
import 'modules/home/carroucel/banner_promo_module.dart';

class AppModule extends Module {
  @override
  final List<Module> imports = [
    CoreModule(),
    BannerPromoModule(),
    ClientDashboardModule(),
  ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const SplashPage(),
        ),
        ChildRoute(
          '/admin/',
          child: (context, args) => const AdminDashboardWidget(),
        ),
        ModuleRoute(
          '/home/',
          module: AppMainPageModule(),
          transition: TransitionType.fadeIn,
        ),
        ModuleRoute(
          '/client/',
          module: ClientModule(),
          transition: TransitionType.fadeIn,
        ),
        ModuleRoute(
          '/client_dashboard/',
          module: ClientDashboardModule(),
          transition: TransitionType.fadeIn,
        ),
      ];
}
