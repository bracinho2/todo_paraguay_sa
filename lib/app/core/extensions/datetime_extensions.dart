import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeFormatter on DateTime {
  String showDateWithTime() {
    final newFormat = DateFormat('dd-MM-yyyy - kk:mm');

    final updateDateTime = newFormat.format(getDateWithTimeNow());

    return updateDateTime;
  }

  DateTime getDateWithTimeNow() {
    final time = TimeOfDay.now();
    return DateTime(year, month, day, time.hour, time.minute);
  }
}
