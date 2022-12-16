import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/module/zold/users/domain/entities/register_params.dart';

abstract class IAddUserRepository {
  Future<Either<Failure, bool>> addUser({required RegisterParams params});
}
