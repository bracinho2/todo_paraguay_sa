import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/modules/home/carroucel/domain/repository/get_all_banners_repository.dart';
import 'package:todo_paraguay_sa/app/modules/home/carroucel/domain/usecases/get_all_banners_usecase.dart';
import 'package:todo_paraguay_sa/app/modules/home/carroucel/external/get_all_banners_datasource_impl.dart';
import 'package:todo_paraguay_sa/app/modules/home/carroucel/infra/datasource/get_all_banners_datasource.dart';
import 'package:todo_paraguay_sa/app/modules/home/carroucel/infra/repository/get_all_banners_repository_impl.dart';
import 'package:todo_paraguay_sa/app/modules/home/carroucel/presenter/store/banner_promo_store.dart';
import 'package:todo_paraguay_sa/app/modules/home/carroucel/presenter/widgets/banner_promo_widget.dart';

class BannerPromoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<GetAllBannersDatasource>(
        (i) => GetAllBannersDatasourceImpl(),
        export: true),

    Bind.lazySingleton<CarroucelRepository>(
        (i) => GetAllBannersRepositoryImpl(i()),
        export: true),

    Bind.lazySingleton<GetCarroucelUsecase>((i) => GetCarroucel(i()),
        export: true),

    //Store
    Bind.lazySingleton<BannerPromoStore>((i) => BannerPromoStore(i()),
        export: true),

    //widgets
    Bind.lazySingleton<BannerPromoWidget>((i) => BannerPromoWidget(store: i()),
        export: true),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (context, args) => Modular.get<BannerPromoWidget>(),
    ),
  ];
}
