import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:todo_paraguay_sa/app/module/zold/users/domain/entities/user_entity.dart';

abstract class IGetAllUsersRepository {
  Future<Either<Failure, List<TeamMember>>> getAllUsers();
}
