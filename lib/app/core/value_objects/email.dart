import 'package:common_dependencies/core/value_object/expert_value_object.dart';

class Email extends ExpertValueObject<String> {
  Email(super.value) {
    _validate();
  }

  void _validate() {
    RegExp regExp = RegExp(
      r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$",
      caseSensitive: false,
      multiLine: false,
    );
    if (value.isEmpty) {
      message = 'Informe seu email';
    } else if (!value.contains('@') && (!regExp.hasMatch(value))) {
      message = 'Email inválido';
    }
  }

  @override
  bool isError() => message != null;

  @override
  String toString() {
    return value;
  }
}

RegExp regExp = RegExp(
  r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$",
  caseSensitive: false,
  multiLine: false,
);
