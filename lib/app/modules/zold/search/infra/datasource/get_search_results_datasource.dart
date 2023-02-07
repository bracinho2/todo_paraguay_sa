import 'package:todo_paraguay_sa/app/modules/zold/search/domain/entities/query_params_entity.dart';

abstract class IGetSearchResultDatasource {
  Future<List<Map<String, dynamic>>> getSearchResult({
    required QueryParams params,
  });
}
