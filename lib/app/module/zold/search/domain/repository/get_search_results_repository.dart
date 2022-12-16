import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/domain/entities/query_params_entity.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/domain/entities/search_result_entity.dart';

abstract class IGetSearchResultsRepository {
  Future<Either<Failure, List<SearchResult>>> getSearchResult({
    required QueryParams params,
  });
}
