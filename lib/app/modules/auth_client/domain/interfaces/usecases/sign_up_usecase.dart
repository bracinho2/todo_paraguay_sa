import 'package:dartz/dartz.dart';

import '../../../../../core/errors/errors.dart';
import '../../entities/client_entity.dart';

abstract class SignUpUsecase {
  Future<Either<Failure, bool>> call({
    required ClientEntity client,
  });
}
