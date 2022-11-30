import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/module/search/domain/entities/search_result_entity.dart';

abstract class IGetSearchResultRepository {
  Future<Either<Failure, List<SearchResult>>> getSearchResult();
}
