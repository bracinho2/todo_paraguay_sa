import 'package:todo_paraguay_sa/app/core/value_objects/value_object_interface.dart';

class Name implements ValueObject {
  final String value;
  String? _message;

  Name(this.value) {
    _validate();
  }

  void _validate() {
    if (value.isEmpty) {
      _message = 'Invalid Name';
    }
  }

  String? get message => _message;
  bool get isValid => message != null;

  @override
  bool operator ==(covariant Name other) {
    if (identical(this, other)) return true;

    return other.value == value && other._message == _message;
  }

  @override
  int get hashCode => value.hashCode ^ _message.hashCode;

  @override
  String toString() => 'Name(value: $value, _message: $_message)';
}
