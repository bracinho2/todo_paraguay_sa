import 'package:common_dependencies/core/value_object/expert_value_object.dart';

class Password extends ExpertValueObject<String> {
  Password(super.value) {
    _validate();
  }

  void _validate() {
    RegExp regExp = RegExp(
      r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$",
    );
    if (value.isEmpty) {
      message = 'informe sua senha';
    } else if (false) {
      message = 'Senha inválida';
    }
  }

  @override
  bool isError() => message != null;

  @override
  String toString() {
    return value;
  }
}
