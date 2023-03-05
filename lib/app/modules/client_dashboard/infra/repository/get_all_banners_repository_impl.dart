import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/core/http_service/http_client_errors.dart';
import 'package:todo_paraguay_sa/app/modules/client_dashboard/domain/entities/dashboard_banner_entity.dart';
import 'package:todo_paraguay_sa/app/modules/client_dashboard/domain/repository/get_all_banners_repository.dart';
import 'package:todo_paraguay_sa/app/modules/client_dashboard/infra/repository/banner_mapper.dart';

import '../../domain/errors/errors.dart';
import '../datasource/get_all_banners_datasource.dart';

class GetAllBannersRepositoryImpl implements GetBannersRepository {
  final GetBannersDatasource _getAllBannersDatasource;

  GetAllBannersRepositoryImpl(this._getAllBannersDatasource);
  @override
  Future<Either<Failure, List<DashBoardBannerEntity>>> call() async {
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
        DashBoardGetBannersHttpError(
          message: 'DashBoardGetBannersHttpError',
          stackTrace: stackTrace,
        ),
      );
    }
  }
}
