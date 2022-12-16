abstract class Validators<T> {
  String? validate(T value);
}

class ValidateString extends Validators<String> {
  @override
  String? validate(String value) {
    return value.isEmpty ? 'Obrigatório' : null;
  }
}

class ValidateInt extends Validators<int> {
  @override
  String? validate(int value) {
    if (value > 0) {
      return null;
    } else {
      return 'Obrigatório';
    }
  }
}
