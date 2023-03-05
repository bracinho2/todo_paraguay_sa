import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/modules/client_dashboard/domain/entities/dashboard_banner_entity.dart';
import 'package:todo_paraguay_sa/app/modules/client_dashboard/domain/repository/get_all_banners_repository.dart';

abstract class GetBannersUsecase {
  Future<Either<Failure, List<DashBoardBannerEntity>>> call();
}

class GetBanners implements GetBannersUsecase {
  final GetBannersRepository _getAllBannersRepository;

  GetBanners(this._getAllBannersRepository);
  @override
  Future<Either<Failure, List<DashBoardBannerEntity>>> call() async {
    return await _getAllBannersRepository.call();
  }
}
