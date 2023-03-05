abstract class ExpertValueObject<T> {
  ExpertValueObject(this.value);

  final T value;

  bool isError();
  String? message;
}
