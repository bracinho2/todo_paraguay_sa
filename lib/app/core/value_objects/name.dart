import 'package:common_dependencies/core/value_object/expert_value_object.dart';

class Name extends ExpertValueObject<String> {
  Name(super.value) {
    _validate();
  }

  void _validate() {
    if (value.isEmpty) {
      message = 'Informe seu nome completo';
    } else if (value.split(' ').length < 2) {
      message = 'Informe nome e sobrenome';
    }
  }

  @override
  bool isError() => message != null;

  @override
  String toString() {
    return value;
  }
}
