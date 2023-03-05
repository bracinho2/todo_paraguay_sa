import 'package:flutter_test/flutter_test.dart';
import 'package:todo_paraguay_sa/app/core/value_objects/name.dart';

void main() {
  test('Should not empty', () {
    final name = Name('');
    expect(name.message, isA<String>());
  });

  test('Should not have only name', () {
    final name = Name('alexandre');

    expect(name.message, isA<String>());
  });

  test('Should have name and last name', () {
    final name = Name('my name');

    expect(name.message, isNull);
  });

  test('Should not have errors', () {
    final name = Name('my name');

    expect(name.isError(), false);
  });
}
