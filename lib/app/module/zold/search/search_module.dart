import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/domain/repository/get_search_results_repository.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/domain/usecases/get_search_results_usecase.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/external/get_search_results_datasource_impl.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/infra/datasource/get_search_results_datasource.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/infra/repository/get_search_results_repository_impl.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/presenter/controller/search_page_controller.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/presenter/pages/pagina_inicial.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/presenter/pages/widgets/search_widget.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/presenter/store/search_results_store.dart';

class SearchModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<IGetSearchResultDatasource>(
      (i) => GetSearchResultsDatasourceImpl(i()),
      export: true,
    ),
    Bind.lazySingleton<IGetSearchResultsRepository>(
        (i) => GetSearchResultsRespositoryImpl(i()),
        export: true),
    Bind.lazySingleton<IGetSearchResultsUsecase>(
        (i) => GetSearchResultsUsecaseImpl(i()),
        export: true),

    //stores
    Bind.lazySingleton<SearchResultStore>(
      (i) => SearchResultStore(i()),
      export: true,
    ),

    //controller da pagina
    Bind.lazySingleton<SearchPageController>((i) => SearchPageController(i()),
        export: true),

    //widgets
    Bind.lazySingleton<SearchWidget>((i) => SearchWidget(controller: i()),
        export: true),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (context, args) => InitialPage(
        store: Modular.get<SearchResultStore>(),
      ),
    ),
  ];
}
