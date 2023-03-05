import 'package:common_dependencies/core/value_object/expert_value_object.dart';

class BannerName extends ExpertValueObject<String> {
  BannerName(super.value) {
    _validate();
  }

  void _validate() {
    if (value.isEmpty) {
      message = 'Informe o nome do banner';
    }
  }

  @override
  bool isError() => message != null;

  @override
  String toString() {
    return value;
  }
}
