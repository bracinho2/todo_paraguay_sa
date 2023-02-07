import 'package:todo_paraguay_sa/app/core/typedef.dart';
import 'package:todo_paraguay_sa/app/modules/home/best_price/domain/repositories/best_price_repository.dart';

abstract class GetBestPriceUsecase {
  Future<BestPriceResult> call();
}

class GetBestPrice implements GetBestPriceUsecase {
  final BestPriceRepository _repository;

  GetBestPrice(this._repository);
  @override
  Future<BestPriceResult> call() async {
    return await _repository.call();
  }
}
