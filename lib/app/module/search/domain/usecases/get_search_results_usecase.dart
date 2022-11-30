import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/module/search/domain/entities/search_result_entity.dart';
import 'package:todo_paraguay_sa/app/module/search/domain/repository/get_search_results_repository.dart';

abstract class IGetSearchResultsUsecase {
  Future<Either<Failure, List<SearchResult>>> call();
}

class GetSearchResultsUsecaseImpl implements IGetSearchResultsUsecase {
  final IGetSearchResultRepository _iGetSearchResultRepository;

  GetSearchResultsUsecaseImpl(this._iGetSearchResultRepository);
  @override
  Future<Either<Failure, List<SearchResult>>> call() async {
    return await _iGetSearchResultRepository.getSearchResult();
  }
}
