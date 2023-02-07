import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/modules/zold/search/domain/entities/query_params_entity.dart';
import 'package:todo_paraguay_sa/app/modules/zold/search/domain/entities/search_result_entity.dart';
import 'package:todo_paraguay_sa/app/modules/zold/search/domain/repository/get_search_results_repository.dart';
import 'package:todo_paraguay_sa/app/modules/zold/users/domain/errors/errors.dart';

abstract class IGetSearchResultsUsecase {
  Future<Either<Failure, List<SearchResult>>> call({
    required QueryParams params,
  });
}

class GetSearchResultsUsecaseImpl implements IGetSearchResultsUsecase {
  final IGetSearchResultsRepository _iGetSearchResultsRepository;

  GetSearchResultsUsecaseImpl(this._iGetSearchResultsRepository);
  @override
  Future<Either<Failure, List<SearchResult>>> call(
      {required QueryParams params}) async {
    if (params.title.isEmpty || params.description.isEmpty) {
      return Left(
        UsecaseUserErrors(message: 'Escriba algo para buscar...'),
      );
    }

    return await _iGetSearchResultsRepository.getSearchResult(
      params: params,
    );
  }
}
