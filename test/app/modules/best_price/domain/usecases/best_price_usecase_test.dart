import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/modules/home/best_price/domain/entities/best_price_entity.dart';
import 'package:todo_paraguay_sa/app/modules/home/best_price/domain/errors/errors.dart';
import 'package:todo_paraguay_sa/app/modules/home/best_price/domain/repositories/best_price_repository.dart';
import 'package:todo_paraguay_sa/app/modules/home/best_price/domain/usecases/get_best_price_usecase.dart';

class BestPriceRepositoryMock extends Mock implements BestPriceRepository {}

void main() {
  late final BestPriceRepository repository;
  late final GetBestPriceUsecase usecase;

  final responseAPI = [
    BestPriceEntity(
      id: 01,
      name: 'XYZ',
      description: 'produto x',
      price: 22.5,
      quantity: 10,
      published: DateTime.now(),
      expiresAt: DateTime.now(),
    ),
    BestPriceEntity(
      id: 02,
      name: 'ABC',
      description: 'produto x',
      price: 10.5,
      quantity: 10,
      published: DateTime.now(),
      expiresAt: DateTime.now(),
    ),
  ];

  setUpAll(() {
    repository = BestPriceRepositoryMock();
    registerFallbackValue(responseAPI);

    usecase = GetBestPrice(repository);
  });

  group(GetBestPrice, () {
    test('call repository once and return a list of Best Prices', () async {
      when(() => repository()).thenAnswer(
        (_) async => right(responseAPI),
      );

      final result = await usecase.call();
      expect(result.fold(id, id), isA<List<BestPriceEntity>>());
      verify(() => repository()).called(1);
    });

    test('call repository and return a error', () async {
      when(() => repository()).thenAnswer(
        (_) async => left(BestPriceError()),
      );

      final result = await usecase.call();

      expect(result.fold(id, id), isA<Failure>());
    });
  });
}
