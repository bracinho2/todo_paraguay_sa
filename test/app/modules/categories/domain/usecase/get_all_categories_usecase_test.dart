import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/modules/home/categories/domain/entities/category_entity.dart';
import 'package:todo_paraguay_sa/app/modules/home/categories/domain/errors/category_error.dart';
import 'package:todo_paraguay_sa/app/modules/home/categories/domain/repositories/categories_repository.dart';
import 'package:todo_paraguay_sa/app/modules/home/categories/domain/usecase/get_all_categories_usecase.dart';

class CategoriesRepositoryMock extends Mock implements CategoriesRepository {}

void main() {
  late final CategoriesRepository repository;
  late final GetAllCategories usecase;

  final responseAPI = [
    CategoryEntity(
      id: 01,
      name: 'abc',
      imageUrl: '',
      published: DateTime.now(),
    ),
    CategoryEntity(
      id: 02,
      name: 'xyz',
      imageUrl: '',
      published: DateTime.now(),
    ),
  ];

  setUpAll(() {
    repository = CategoriesRepositoryMock();
    registerFallbackValue(responseAPI);

    usecase = GetAllCategories(repository);
  });

  group(GetAllCategories, () {
    test('call repository once and return a List of Categories', () async {
      when(() => repository()).thenAnswer(
        (_) async => right(responseAPI),
      );

      final result = await usecase.call();
      expect(result.fold(id, id), isA<List<CategoryEntity>>());
      verify(() => repository()).called(1);
    });

    test('call repository and return a error', () async {
      when(() => repository()).thenAnswer(
        (_) async => left(CategoryError()),
      );

      final result = await usecase.call();

      expect(result.fold(id, id), isA<Failure>());
    });
  });
}
