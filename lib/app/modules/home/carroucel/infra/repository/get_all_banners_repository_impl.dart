import 'package:todo_paraguay_sa/app/core/http_service/http_client_errors.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/modules/home/carroucel/infra/repository/banner_mapper.dart';

import '../../domain/entities/carroucel_entity.dart';
import '../../domain/repository/get_all_banners_repository.dart';
import '../datasource/get_all_banners_datasource.dart';

class GetAllBannersRepositoryImpl implements CarroucelRepository {
  final GetAllBannersDatasource _getAllBannersDatasource;

  GetAllBannersRepositoryImpl(this._getAllBannersDatasource);
  @override
  Future<Either<Failure, List<CarroucelEntity>>> call() async {
    try {
      final response = await _getAllBannersDatasource.call();

      final banners = List<Map<String, dynamic>>.from(response);

      final result = banners
          .map(
            (e) => CarroucelMapper.fromMap(e),
          )
          .toList();

      return Right(result);
    } on Failure catch (e, stackTrace) {
      return Left(
        HttpClientError(
          message: 'HttpClientError',
          stackTrace: stackTrace,
        ),
      );
    }
  }
}
