import 'package:common_dependencies/core/value_object/expert_value_object.dart';

class ExhibitionDays extends ExpertValueObject<int> {
  ExhibitionDays(super.value) {
    _validate();
  }

  void _validate() {
    if (value <= 1) {
      message = 'Informe a quantidade de dias de exibiçao';
    }
  }

  @override
  bool isError() => message != null;

  @override
  String toString() {
    return '$value';
  }
}
