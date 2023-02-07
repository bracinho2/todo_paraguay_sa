import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';

abstract class IRemoveUserRepository {
  Future<Either<Failure, bool>> removeUser({
    required String id,
  });
}
