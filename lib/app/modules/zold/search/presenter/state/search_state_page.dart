import 'package:todo_paraguay_sa/app/modules/zold/search/domain/entities/search_result_entity.dart';

abstract class ISearchState {}

class InitialSearchState extends ISearchState {}

class SearchResultState extends ISearchState {
  final List<SearchResult> results;

  SearchResultState(this.results);
}
