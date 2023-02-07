import '../../../../../core/errors/errors.dart';

class BestPriceError extends Failure {
  final StackTrace? stackTrace;
  final String? label;

  BestPriceError({
    super.message = 'Usecase Search Result Error',
    this.stackTrace,
    this.label,
  }) : super(
          stackTrace: stackTrace,
          label: label,
        );
}
