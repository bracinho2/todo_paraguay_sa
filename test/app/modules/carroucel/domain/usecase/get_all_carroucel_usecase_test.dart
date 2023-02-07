import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/modules/home/carroucel/domain/entities/carroucel_entity.dart';
import 'package:todo_paraguay_sa/app/modules/home/carroucel/domain/errors/errors.dart';
import 'package:todo_paraguay_sa/app/modules/home/carroucel/domain/repository/get_all_banners_repository.dart';
import 'package:todo_paraguay_sa/app/modules/home/carroucel/domain/usecases/get_all_banners_usecase.dart';

class CarroucelRepositoryMock extends Mock implements CarroucelRepository {}

void main() {
  late final CarroucelRepository repository;
  late final GetCarroucel usecase;

  final responseAPI = [
    CarroucelEntity(
      id: 01,
      name: 'abc',
      category: 'donation',
      message: 'hola que tal',
      url: 'url',
      published: DateTime.now(),
      expiresAt: DateTime.now(),
      exhibitionDays: 10,
    ),
    CarroucelEntity(
      id: 01,
      name: 'abc',
      category: 'donation',
      message: 'hola que tal',
      url: 'url',
      published: DateTime.now(),
      expiresAt: DateTime.now(),
      exhibitionDays: 10,
    ),
  ];

  setUpAll(() {
    repository = CarroucelRepositoryMock();
    registerFallbackValue(responseAPI);

    usecase = GetCarroucel(repository);
  });

  group(GetCarroucel, () {
    test('call repository once and return Carroucel', () async {
      when(() => repository()).thenAnswer(
        (_) async => right(responseAPI),
      );

      final result = await usecase.call();
      expect(result.fold(id, id), isA<List<CarroucelEntity>>());
      verify(() => repository()).called(1);
    });

    test('call repository and return a error', () async {
      when(() => repository()).thenAnswer(
        (_) async => left(CarroucelError()),
      );

      final result = await usecase.call();

      expect(result.fold(id, id), isA<Failure>());
    });
  });
}
