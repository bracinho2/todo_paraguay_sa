import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/modules/zold/users/domain/entities/user_entity.dart';

abstract class IGetUserByIdRepository {
  Future<Either<Failure, TeamMember>> getUserById({
    required String id,
  });
}