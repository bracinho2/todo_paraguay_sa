import 'package:flutter_modular/flutter_modular.dart';

import 'client_dashboard_widget.dart';
import 'domain/repository/get_all_banners_repository.dart';
import 'domain/usecases/get_all_banners_usecase.dart';
import 'external/get_all_banners_datasource_impl.dart';
import 'infra/datasource/get_all_banners_datasource.dart';
import 'infra/repository/get_all_banners_repository_impl.dart';
import 'presenter/controller/client_dashboard_controller.dart';
import 'presenter/stores/client_dashboard_banner_store.dart';

class ClientDashboardModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<GetBannersDatasource>(
        (i) => GetAllBannersDatasourceImpl()),
    Bind.lazySingleton<GetBannersRepository>(
        (i) => GetAllBannersRepositoryImpl(i())),
    Bind.lazySingleton<GetBannersUsecase>((i) => GetBanners(i())),
    Bind.lazySingleton<ClientDashboardBannerStore>(
        (i) => ClientDashboardBannerStore(i())),
    Bind.lazySingleton((i) => ClientDashBoardController(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (context, args) => const ClientDashboardWidget(),
    ),
  ];
}
