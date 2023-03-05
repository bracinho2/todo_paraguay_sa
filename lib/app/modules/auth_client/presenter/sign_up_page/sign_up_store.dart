import 'package:todo_paraguay_sa/app/modules/auth_client/domain/entities/client_entity.dart';

import '../../../../core/snackbar_manager/snackbar_manager.dart';
import '../../domain/interfaces/usecases/sign_up_usecase.dart';

class SignUpStore {
  final SignUpUsecase _usecase;

  SignUpStore(this._usecase);

  void signUp({required ClientEntity client}) async {
    final result = await _usecase.call(client: client);

    result.fold(
      (error) => SnackBarManager().showError(
        message: 'Algo nao saiu bem! ${error.message}',
      ),
      (sucess) => SnackBarManager().showSuccess(
        message: 'Usuário ${client.name.value} cadastrado com sucesso!',
      ),
    );
  }
}
