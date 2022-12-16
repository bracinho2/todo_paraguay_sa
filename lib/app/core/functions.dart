import 'dart:math';

import 'package:intl/intl.dart';

int generateInt(List<String> list) {
  final value = Random().nextInt(list.length);
  return value;
}

String currentYear(DateTime date) {
  final formatter = DateFormat('yyyy');
  final currentYear = formatter.format(date);
  return currentYear;
}
