import 'package:todo_paraguay_sa/app/modules/auth_client/data/datasources/sign_up_datasource.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/data/repositories/client_mapper.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/domain/entities/client_entity.dart';
import 'package:todo_paraguay_sa/app/core/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/domain/errors/errors.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/domain/interfaces/repositories/sign_up_repository.dart';

class SignUpRepositoryImpl implements SignUpRepository {
  final SignUpDatasource _signUpDatasource;

  SignUpRepositoryImpl(this._signUpDatasource);
  @override
  Future<Either<Failure, bool>> call({required ClientEntity client}) async {
    try {
      final map = ClientEntityMapper.toMap(client: client);
      final value = await _signUpDatasource.call(client: map);
      return Right(value);
    } catch (e) {
      Left(
        throw ClientError(message: 'Erro de Repositório'),
      );
    }
  }
}
