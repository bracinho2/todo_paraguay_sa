import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import '../entities/carroucel_entity.dart';
import '../repository/get_all_banners_repository.dart';

abstract class GetCarroucelUsecase {
  Future<Either<Failure, List<CarroucelEntity>>> call();
}

class GetCarroucel implements GetCarroucelUsecase {
  final CarroucelRepository _getAllBannersRepository;

  GetCarroucel(this._getAllBannersRepository);
  @override
  Future<Either<Failure, List<CarroucelEntity>>> call() async {
    return await _getAllBannersRepository.call();
  }
}
