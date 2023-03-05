import 'package:common_dependencies/core/value_object/expert_value_object.dart';

class BannerPublishedDate extends ExpertValueObject<DateTime> {
  BannerPublishedDate(super.value) {
    _validate();
  }

  void _validate() {
    if (value.isBefore(DateTime.now())) {
      message = 'Data Retroativa nao é aceita';
    }
  }

  @override
  bool isError() => message != null;

  @override
  String toString() {
    return value.toString();
  }
}
