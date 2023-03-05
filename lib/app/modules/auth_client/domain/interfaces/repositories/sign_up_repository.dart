import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/domain/entities/client_entity.dart';

abstract class SignUpRepository {
  Future<Either<Failure, bool>> call({
    required ClientEntity client,
  });
}
