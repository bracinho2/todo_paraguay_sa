import 'package:todo_paraguay_sa/app/core/errors/errors.dart';

class BannerPromoError extends Failure {
  final StackTrace? stackTrace;
  final String? label;

  BannerPromoError({
    super.message = 'Usecase Search Result Error',
    this.stackTrace,
    this.label,
  }) : super(
          stackTrace: stackTrace,
          label: label,
        );
}
