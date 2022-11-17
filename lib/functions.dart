import 'dart:math';

int generateInt(List<String> list) {
  final value = Random().nextInt(list.length);
  return value;
}
