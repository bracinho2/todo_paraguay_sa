import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/module/zold/banner_promo_widget/domain/entities/banner_promo_entity.dart';

abstract class GetAllBannersRepository {
  Future<Either<Failure, List<BannerPromoEntity>>> call();
}
