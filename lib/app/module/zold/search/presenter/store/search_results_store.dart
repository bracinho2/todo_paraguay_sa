import 'package:flutter_triple/flutter_triple.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/domain/entities/query_params_entity.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/domain/usecases/get_search_results_usecase.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/presenter/state/search_state_page.dart';

class SearchResultStore extends StreamStore<Failure, ISearchState> {
  final IGetSearchResultsUsecase _iGetSearchResultsUsecase;
  SearchResultStore(
    this._iGetSearchResultsUsecase,
  ) : super(InitialSearchState());

  Future<void> getAllSearchResults(QueryParams? params) async {
    setLoading(true);

    final response = await _iGetSearchResultsUsecase.call(params: params!);

    response.fold(
      (error) => null,
      (sucess) {
        update(SearchResultState(sucess));
      },
    );
  }

  void showInitialPage() {
    update(InitialSearchState());
  }
}
