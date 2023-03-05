import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/domain/entities/auth_entity.dart';

import '../../../../core/snackbar_manager/snackbar_manager.dart';

class SignInPageController {
  final formKey = GlobalKey<FormState>();

  final credencials = Credencials.empty();

  void validateForm() {
    if (formKey.currentState!.validate()) {
      SnackBarManager().showSuccess(
        message: 'Dados Validados! =)',
      );
    } else {}
  }
}
