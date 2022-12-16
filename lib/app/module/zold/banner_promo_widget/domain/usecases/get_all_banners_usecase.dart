import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/module/zold/banner_promo_widget/domain/entities/banner_promo_entity.dart';
import 'package:todo_paraguay_sa/app/module/zold/banner_promo_widget/domain/repository/get_all_banners_repository.dart';

abstract class GetAllBannersUsecase {
  Future<Either<Failure, List<BannerPromoEntity>>> call();
}

class GetAllBannersUsecaseImpl implements GetAllBannersUsecase {
  final GetAllBannersRepository _getAllBannersRepository;

  GetAllBannersUsecaseImpl(this._getAllBannersRepository);
  @override
  Future<Either<Failure, List<BannerPromoEntity>>> call() async {
    return await _getAllBannersRepository.call();
  }
}
