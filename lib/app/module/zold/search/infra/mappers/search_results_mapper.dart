import 'package:todo_paraguay_sa/app/module/zold/search/domain/entities/search_result_entity.dart';

class SearchResultsMapper {
  static SearchResult fromMap(Map<String, dynamic> map) {
    return SearchResult(
      title: map['title'],
      description: map['description'],
      link: map['link'],
    );
  }
}
