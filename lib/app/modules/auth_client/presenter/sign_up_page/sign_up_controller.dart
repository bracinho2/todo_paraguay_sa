import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/presenter/sign_up_page/sign_up_store.dart';
import '../../../../core/snackbar_manager/snackbar_manager.dart';
import '../../domain/entities/client_entity.dart';

class SignUpPageController {
  final SignUpStore _signUpStore;

  final client = ClientEntity.empty();

  final formKey = GlobalKey<FormState>();

  SignUpPageController(
    this._signUpStore,
  );

  void validateForm() {
    if (formKey.currentState!.validate()) {
      _signUpStore.signUp(client: client);
    } else {
      SnackBarManager().showError(
        message: 'Os dados do formulário nao foram validados.',
      );
    }
  }
}
