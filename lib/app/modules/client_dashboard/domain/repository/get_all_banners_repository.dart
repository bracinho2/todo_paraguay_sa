import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/modules/client_dashboard/domain/entities/dashboard_banner_entity.dart';

abstract class GetBannersRepository {
  Future<Either<Failure, List<DashBoardBannerEntity>>> call();
}
