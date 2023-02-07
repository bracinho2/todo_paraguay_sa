import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';

import '../entities/carroucel_entity.dart';

abstract class CarroucelRepository {
  Future<Either<Failure, List<CarroucelEntity>>> call();
}
