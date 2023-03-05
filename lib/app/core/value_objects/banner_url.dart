import 'package:common_dependencies/core/value_object/expert_value_object.dart';

class BannerUrl extends ExpertValueObject<String> {
  BannerUrl(super.value) {
    _validate();
  }

  void _validate() {
    if (value.isEmpty) {
      message = 'Informe a URL do Banner';
    }
  }

  @override
  bool isError() => message != null;

  @override
  String toString() {
    return value;
  }
}
