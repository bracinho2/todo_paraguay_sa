import 'package:dartz/dartz.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/domain/entities/client_entity.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/domain/errors/errors.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/domain/interfaces/repositories/sign_up_repository.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/domain/interfaces/usecases/sign_up_usecase.dart';

import '../../../../core/errors/errors.dart';

class SignUp implements SignUpUsecase {
  final SignUpRepository _repository;

  SignUp(this._repository);

  @override
  Future<Either<Failure, bool>> call({required ClientEntity client}) async {
    if (client.name.isError()) {
      return left(ClientError(message: client.name.message ?? 'error...'));
    }
    return _repository(client: client);
  }
}
