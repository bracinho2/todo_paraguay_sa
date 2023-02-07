import 'package:todo_paraguay_sa/app/core/typedef.dart';

import '../repositories/categories_repository.dart';

abstract class GetAllCategoriesUsecase {
  Future<CategoriesResult> call();
}

class GetAllCategories implements GetAllCategoriesUsecase {
  final CategoriesRepository _categoriesRepository;

  GetAllCategories(this._categoriesRepository);

  @override
  Future<CategoriesResult> call() async {
    return await _categoriesRepository.call();
  }
}
