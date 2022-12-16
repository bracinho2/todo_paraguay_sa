import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/core/http_service/http_client_errors.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/domain/entities/query_params_entity.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/domain/entities/search_result_entity.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/domain/repository/get_search_results_repository.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/infra/datasource/get_search_results_datasource.dart';
import 'package:todo_paraguay_sa/app/module/zold/search/infra/mappers/search_results_mapper.dart';

class GetSearchResultsRespositoryImpl implements IGetSearchResultsRepository {
  final IGetSearchResultDatasource _iGetSearchResultDatasource;

  GetSearchResultsRespositoryImpl(this._iGetSearchResultDatasource);
  @override
  Future<Either<Failure, List<SearchResult>>> getSearchResult(
      {required QueryParams params}) async {
    try {
      final response =
          await _iGetSearchResultDatasource.getSearchResult(params: params);

      final values =
          response.map((map) => SearchResultsMapper.fromMap(map)).toList();

      return Right(values);
    } on Failure catch (e, stackTrace) {
      return Left(
        HttpClientError(
          message: 'HttpClientError',
          stackTrace: stackTrace,
        ),
      );
    }
  }
}
