abstract class ValueObject<T> {
  String? validator();
}

class Name implements ValueObject {
  final String _value;

  Name(this._value);

  @override
  String? validator() {
    if (_value.isEmpty) return 'Campo está vazio';
    return null;
  }

  @override
  String toString() => _value;
}

class LastName implements ValueObject {
  final String _value;
  LastName(this._value);

  @override
  String? validator() {
    if (_value.isEmpty) return 'Campo está vazio';
    return null;
  }

  @override
  String toString() => _value;
}

class Email implements ValueObject {
  final String _value;
  Email(this._value);

  @override
  String? validator() {
    if (_value.isEmpty) return 'Campo está vazio';
    return null;
  }

  @override
  String toString() => _value;
}

class Phone implements ValueObject {
  final String _value;
  Phone(this._value);

  @override
  String? validator() {
    if (_value.isEmpty) return 'Campo está vazio';
    return null;
  }

  @override
  String toString() => _value;
}

class Password implements ValueObject {
  final String _value;
  Password(this._value);

  @override
  String? validator() {
    if (_value.isEmpty) return 'Campo está vazio';
    return null;
  }

  @override
  String toString() => _value;
}
