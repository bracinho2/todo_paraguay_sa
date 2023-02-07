import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/modules/home/brands/domain/entities/brand_entity.dart';
import 'package:todo_paraguay_sa/app/modules/home/brands/domain/errors/errors.dart';
import 'package:todo_paraguay_sa/app/modules/home/brands/domain/repositories/brand_repository.dart';
import 'package:todo_paraguay_sa/app/modules/home/brands/domain/usecases/get_brands_usecase.dart';

class BrandRepositoryMock extends Mock implements BrandRepository {}

void main() {
  late final BrandRepository repository;
  late final GetBrandsUsecase usecase;

  final responseAPI = [
    BrandEntity(
      id: 01,
      name: 'ABC',
      description: 'Descricao',
      officialUrl: 'url',
      published: DateTime.now(),
    ),
    BrandEntity(
      id: 02,
      name: 'XYZ',
      description: 'Descricao',
      officialUrl: 'url',
      published: DateTime.now(),
    ),
  ];

  setUpAll(() {
    repository = BrandRepositoryMock();
    registerFallbackValue(responseAPI);

    usecase = GetBrands(repository);
  });

  group(GetBrands, () {
    test('call repository once and return a list of Best Prices', () async {
      when(() => repository()).thenAnswer(
        (_) async => right(responseAPI),
      );

      final result = await usecase.call();
      expect(result.fold(id, id), isA<List<BrandEntity>>());
      verify(() => repository()).called(1);
    });

    test('call repository and return a error', () async {
      when(() => repository()).thenAnswer(
        (_) async => left(BrandError()),
      );

      final result = await usecase.call();

      expect(result.fold(id, id), isA<Failure>());
    });
  });
}
