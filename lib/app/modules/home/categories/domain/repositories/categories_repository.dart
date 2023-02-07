import 'package:todo_paraguay_sa/app/core/typedef.dart';

abstract class CategoriesRepository {
  Future<CategoriesResult> call();
}
