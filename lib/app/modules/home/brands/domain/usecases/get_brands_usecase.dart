import 'package:todo_paraguay_sa/app/core/typedef.dart';
import 'package:todo_paraguay_sa/app/modules/home/brands/domain/repositories/brand_repository.dart';

abstract class GetBrandsUsecase {
  Future<BrandResult> call();
}

class GetBrands implements GetBrandsUsecase {
  final BrandRepository _repository;

  GetBrands(this._repository);
  @override
  Future<BrandResult> call() async {
    return await _repository.call();
  }
}
