import 'package:todo_paraguay_sa/app/core/http_service/http_client_errors.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/module/zold/banner_promo_widget/domain/entities/banner_promo_entity.dart';
import 'package:todo_paraguay_sa/app/module/zold/banner_promo_widget/domain/repository/get_all_banners_repository.dart';
import 'package:todo_paraguay_sa/app/module/zold/banner_promo_widget/infra/datasource/get_all_banners_datasource.dart';
import 'package:todo_paraguay_sa/app/module/zold/banner_promo_widget/infra/repository/banner_mapper.dart';

class GetAllBannersRepositoryImpl implements GetAllBannersRepository {
  final GetAllBannersDatasource _getAllBannersDatasource;

  GetAllBannersRepositoryImpl(this._getAllBannersDatasource);
  @override
  Future<Either<Failure, List<BannerPromoEntity>>> call() async {
    try {
      final response = await _getAllBannersDatasource.call();

      final banners = List<Map<String, dynamic>>.from(response);

      final result = banners
          .map(
            (e) => BannerPromoMapper.fromMap(e),
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
