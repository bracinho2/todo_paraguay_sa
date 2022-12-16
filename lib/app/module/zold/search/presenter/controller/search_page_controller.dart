import 'package:todo_paraguay_sa/app/module/zold/search/domain/entities/query_params_entity.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/presenter/store/search_results_store.dart';

class SearchPageController {
  final SearchResultStore store;

  SearchPageController(this.store);

  void searchQuery(QueryParams params) {
    store.getAllSearchResults(params);

    store.getAllSearchResults(params);
  }

  void showInitialPage() {
    store.showInitialPage();
  }
}
